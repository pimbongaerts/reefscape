#!/usr/bin/python3

"""
Script to upload decimated PLY to Sketchfab
Modified from https://sketchfab.com/developers/data-api/v3/python#example-python-upload.
"""

import json
import argparse
import os
import requests
from requests.exceptions import RequestException
from time import sleep

##
# Uploading a model to Sketchfab is a two step process
#
# 1. Upload a model. If the upload is successful, the API will return
#    the model's uid in the `Location` header, and the model will be placed in the processing queue
#
# 2. Poll for the processing status
#    You can use your model id (see 1.) to poll the model processing status
#    The processing status can be one of the following:
#    - PENDING: the model is in the processing queue
#    - PROCESSING: the model is being processed
#    - SUCCESSED: the model has being sucessfully processed and can be view on sketchfab.com
#    - FAILED: the processing has failed. An error message detailing the reason for the failure
#              will be returned with the response
#
# HINTS
# - limit the rate at which you poll for the status (once every few seconds is more than enough)
##

SKETCHFAB_API_URL = 'https://api.sketchfab.com/v3'
#API_TOKEN = 'YOUR API_TOKEN from https://sketchfab.com/settings/password'
MAX_RETRIES = 50
MAX_ERRORS = 10
RETRY_TIMEOUT = 5  # seconds

DECPLY_POSTFIX = '_dec7M.ply'
COUNTRIES = {"cur": "Curaçao"}
LOCATIONS = {"kal": "Playa Kalki", "sna": "Snakebay", "sea": "Substation/Seaquarium",
             "dir": "Director's Bay", "wat": "Water Factory", "hul": "Boka Hulu",
             "est": "Coral Estate", "sam": "Boka Sami", "cas": "Cas Abao", "seb": "Seaquarium #2"}

class Model(object):
    """  """
    def __init__(self):
        self.path = os.path
        self.ply_filename = '{0}/{1}{2}'.format(os.getcwd(), os.path.basename(os.getcwd()), DECPLY_POSTFIX)
        self.name = os.path.basename(os.getcwd())
        self.country = COUNTRIES[self.name.split('_')[0]]
        self.location = LOCATIONS[self.name.split('_')[1]]
        self.depth = self.name.split('_')[2]
        self.timepoint = self.name.split('_')[3]
        self.description = 'Low-resolution (7M) version of original point cloud `{0}`\n'\
                           'Country: {1}\n'\
                           'Location: {2}\n'\
                           'Depth: {3}\n'\
                           'Timepoint: {4}\n'.format(self.name, self.country, self.location
                                                     self.depth, self.timepoint)

 def __get_location(self):
        """ Get viscore project info from subsets.json file """
        if self.
        return 



def _get_request_payload(*, data=None, files=None, json_payload=False):
    """Helper method that returns the authentication token and proper content type depending on
    whether or not we use JSON payload."""
    data = data or {}
    files = files or {}
    headers = {'Authorization': f'Token {API_TOKEN}'}

    if json_payload:
        headers.update({'Content-Type': 'application/json'})
        data = json.dumps(data)

    return {'data': data, 'files': files, 'headers': headers}


def upload(focal_plot_model):
    """
    POST a model to sketchfab.
    This endpoint only accepts formData as we upload a file.
    """
    model_endpoint = f'{SKETCHFAB_API_URL}/models'

    # Mandatory parameters
    model_file = './data/pikachu.zip'  # path to your model

    # Optional parameters
    data = {
        'name': 'A Bob model',
        'description': 'This is a bob model I made with love and passion',
        'tags': ['bob', 'character', 'video-games'],  # Array of tags,
        'categories': ['people'],  # Array of categories slugs,
        'license': 'by',  # License slug,
        'private': 1,  # requires a pro account,
        'password': 'my-password',  # requires a pro account,
        'isPublished': False,  # Model will be on draft instead of published,
        'isInspectable': True,  # Allow 2D view in model inspector
    }

    print('Uploading...')

    with open(model_file, 'rb') as file_:
        files = {'modelFile': file_}
        payload = _get_request_payload(data=data, files=files)

        try:
            response = requests.post(model_endpoint, **payload)
        except RequestException as exc:
            print(f'An error occured: {exc}')
            return

    if response.status_code != requests.codes.created:
        print(f'Upload failed with error: {response.json()}')
        return

    # Should be https://api.sketchfab.com/v3/models/XXXX
    model_url = response.headers['Location']
    print('Upload successful. Your model is being processed.')
    print(f'Once the processing is done, the model will be available at: {model_url}')

    return model_url


def poll_processing_status(model_url):
    """GET the model endpoint to check the processing status."""
    errors = 0
    retry = 0

    print('Start polling processing status for model')

    while (retry < MAX_RETRIES) and (errors < MAX_ERRORS):
        print(f'Try polling processing status (attempt #{retry})...')

        payload = _get_request_payload()

        try:
            response = requests.get(model_url, **payload)
        except RequestException as exc:
            print(f'Try failed with error {exc}')
            errors += 1
            retry += 1
            continue

        result = response.json()

        if response.status_code != requests.codes.ok:
            print(f'Upload failed with error: {result["error"]}')
            errors += 1
            retry += 1
            continue

        processing_status = result['status']['processing']

        if processing_status == 'PENDING':
            print(f'Your model is in the processing queue. Will retry in {RETRY_TIMEOUT} seconds')
            retry += 1
            sleep(RETRY_TIMEOUT)
            continue
        elif processing_status == 'PROCESSING':
            print(f'Your model is still being processed. Will retry in {RETRY_TIMEOUT} seconds')
            retry += 1
            sleep(RETRY_TIMEOUT)
            continue
        elif processing_status == 'FAILED':
            print(f'Processing failed: {result["error"]}')
            return False
        elif processing_status == 'SUCCEEDED':
            print(f'Processing successful. Check your model here: {model_url}')
            return True

        retry += 1

    print('Stopped polling after too many retries or too many errors')
    return False


def patch_model(model_url):
    """
    PATCH the model endpoint to update its name, description...
    Important: The call uses a JSON payload.
    """

    payload = _get_request_payload(data={'name': 'A super Bob model'}, json_payload=True)

    try:
        response = requests.patch(model_url, **payload)
    except RequestException as exc:
        print(f'An error occured: {exc}')
    else:
        if response.status_code == requests.codes.no_content:
            print('PATCH model successful.')
        else:
            print(f'PATCH model failed with error: {response.content}')


def patch_model_options(model_url):
    """PATCH the model options endpoint to update the model background, shading, orienration."""
    data = {
        'shading': 'shadeless',
        'background': '{"color": "#FFFFFF"}',
        # For axis/angle rotation:
        'orientation': '{"axis": [1, 1, 0], "angle": 34}',
        # Or for 4x4 matrix rotation:
        # 'orientation': '{"matrix": [1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1]}'
    }
    payload = _get_request_payload(data=data, json_payload=True)
    try:
        response = requests.patch(f'{model_url}/options', **payload)
    except RequestException as exc:
        print(f'An error occured: {exc}')
    else:
        if response.status_code == requests.codes.no_content:
            print('PATCH options successful.')
        else:
            print(f'PATCH options failed with error: {response.content}')


###################################
# Uploads, polls and patch a model
###################################

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('api_token', metavar='api_token', help='API token from https://sketchfab.com/settings/password')    
    args = parser.parse_args()
    API_TOKEN = args.api_token
    
    

    if model_url := upload():
        if poll_processing_status(model_url):
            patch_model(model_url)
            patch_model_options(model_url)