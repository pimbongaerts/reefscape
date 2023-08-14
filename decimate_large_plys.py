
#!/usr/bin/env python
"""

"""
import reefscape
import os
import sys
import subprocess
import argparse

def decimate_to_max_filesize(filepath, dec_filepath):
    """ """
    print('Decimating PLY file to max filesize: {0} '.format(filepath))
    decimate_cmd = 'xvfb-run -a /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O {0}  -SS RANDOM 1500000000'.format(filepath)
    process = subprocess.Popen(decimate_cmd, shell=True)
    process.wait()
    temp_filepath = filepath.replace('.ply', '_RANDOM_SUBSAMPLED.ply')
    rename_cmd = 'mv {0} {1}'.format(temp_filepath, dec_filepath)
    process = subprocess.Popen(rename_cmd, shell=True)
    process.wait()
    if not os.path.exists(dec_filepath):
        sys.exit('ERROR: Failed to decimate PLY file to max filesize:  {0} '.format(filepath))

def main(ref_timepoint_id):
    plot = reefscape.Plot(ref_timepoint_id)
    
    func_args = []

    for timepoint_id in sorted(plot.timepoints.keys()):
        timepoint = plot.timepoints[timepoint_id]
        ply_size = os.path.getsize(timepoint.full_ply_filepath)  / 1000000000

        if ply_size < 55:
            print('File {0} below max limit: {1:.2f} GB'.format(timepoint.full_ply_filepath, ply_size))
        else:
            print('File {0} above max limit: {1:.2f} GB'.format(timepoint.full_ply_filepath, ply_size))
            dec_filepath = timepoint.full_ply_filepath.replace('.ply', '_dec1500M.ply')
            if os.path.exists(dec_filepath):
                dec_ply_size = os.path.getsize(dec_filepath) / 1000000000
                print('Decimated PLY file already exists: {0} / {1:.2f} GB'.format(dec_filepath, dec_ply_size))
            else:
                decimate_to_max_filesize(timepoint.full_ply_filepath, dec_filepath)

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('ref_timepoint_id', metavar='ref_timepoint_id',
                        help='ref_timepoint_id')
    args = parser.parse_args()
    main(args.ref_timepoint_id)