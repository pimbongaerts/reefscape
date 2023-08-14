import os
import subprocess
filepath = '/mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20191113/cur_kal_20m_20191113.ply'
decimate_cmd = 'xvfb-run -e /dev/stdout /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O {0}  -SS RANDOM 2000000000'.format(filepath)
process = subprocess.Popen(decimate_cmd, shell=True)
process.wait()