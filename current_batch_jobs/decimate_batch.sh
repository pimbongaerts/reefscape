# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20190308
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20190308
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_20m_20190308.ply -SS RANDOM 50000000
mv cur_kal_20m_20190308_RANDOM_SUBSAMPLED.ply cur_kal_20m_20190308_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_20m_20190308_dec50M.ply -SS RANDOM 7000000
mv cur_kal_20m_20190308_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_20m_20190308_dec7M.ply
rclone copy cur_kal_20m_20190308_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_20m_20190308_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20200214
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20200214
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_20m_20200214.ply -SS RANDOM 50000000
mv cur_kal_20m_20200214_RANDOM_SUBSAMPLED.ply cur_kal_20m_20200214_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_20m_20200214_dec50M.ply -SS RANDOM 7000000
mv cur_kal_20m_20200214_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_20m_20200214_dec7M.ply
rclone copy cur_kal_20m_20200214_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_20m_20200214_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20191113
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20191113
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_20m_20191113.ply -SS RANDOM 50000000
mv cur_kal_20m_20191113_RANDOM_SUBSAMPLED.ply cur_kal_20m_20191113_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_20m_20191113_dec50M.ply -SS RANDOM 7000000
mv cur_kal_20m_20191113_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_20m_20191113_dec7M.ply
rclone copy cur_kal_20m_20191113_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_20m_20191113_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20201209
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20201209
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_20m_20201209.ply -SS RANDOM 50000000
mv cur_kal_20m_20201209_RANDOM_SUBSAMPLED.ply cur_kal_20m_20201209_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_20m_20201209_dec50M.ply -SS RANDOM 7000000
mv cur_kal_20m_20201209_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_20m_20201209_dec7M.ply
rclone copy cur_kal_20m_20201209_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_20m_20201209_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20190224
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20190224
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_40m_20190224.ply -SS RANDOM 50000000
mv cur_kal_40m_20190224_RANDOM_SUBSAMPLED.ply cur_kal_40m_20190224_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_40m_20190224_dec50M.ply -SS RANDOM 7000000
mv cur_kal_40m_20190224_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_40m_20190224_dec7M.ply
rclone copy cur_kal_40m_20190224_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_40m_20190224_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20191113
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20191113
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_40m_20191113.ply -SS RANDOM 50000000
mv cur_kal_40m_20191113_RANDOM_SUBSAMPLED.ply cur_kal_40m_20191113_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_40m_20191113_dec50M.ply -SS RANDOM 7000000
mv cur_kal_40m_20191113_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_40m_20191113_dec7M.ply
rclone copy cur_kal_40m_20191113_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_40m_20191113_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20201214
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20201214
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_40m_20201214.ply -SS RANDOM 50000000
mv cur_kal_40m_20201214_RANDOM_SUBSAMPLED.ply cur_kal_40m_20201214_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_40m_20201214_dec50M.ply -SS RANDOM 7000000
mv cur_kal_40m_20201214_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_40m_20201214_dec7M.ply
rclone copy cur_kal_40m_20201214_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_40m_20201214_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20210214
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20210214
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_40m_20210214.ply -SS RANDOM 50000000
mv cur_kal_40m_20210214_RANDOM_SUBSAMPLED.ply cur_kal_40m_20210214_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_40m_20210214_dec50M.ply -SS RANDOM 7000000
mv cur_kal_40m_20210214_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_40m_20210214_dec7M.ply
rclone copy cur_kal_40m_20210214_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_40m_20210214_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20190309
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20190309
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_10m_20190309.ply -SS RANDOM 50000000
mv cur_kal_10m_20190309_RANDOM_SUBSAMPLED.ply cur_kal_10m_20190309_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_10m_20190309_dec50M.ply -SS RANDOM 7000000
mv cur_kal_10m_20190309_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_10m_20190309_dec7M.ply
rclone copy cur_kal_10m_20190309_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_10m_20190309_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20191113
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20191113
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_10m_20191113.ply -SS RANDOM 50000000
mv cur_kal_10m_20191113_RANDOM_SUBSAMPLED.ply cur_kal_10m_20191113_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_10m_20191113_dec50M.ply -SS RANDOM 7000000
mv cur_kal_10m_20191113_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_10m_20191113_dec7M.ply
rclone copy cur_kal_10m_20191113_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_10m_20191113_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20200214
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20200214
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_10m_20200214.ply -SS RANDOM 50000000
mv cur_kal_10m_20200214_RANDOM_SUBSAMPLED.ply cur_kal_10m_20200214_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_10m_20200214_dec50M.ply -SS RANDOM 7000000
mv cur_kal_10m_20200214_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_10m_20200214_dec7M.ply
rclone copy cur_kal_10m_20200214_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_10m_20200214_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20201209
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20201209
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_10m_20201209.ply -SS RANDOM 50000000
mv cur_kal_10m_20201209_RANDOM_SUBSAMPLED.ply cur_kal_10m_20201209_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_10m_20201209_dec50M.ply -SS RANDOM 7000000
mv cur_kal_10m_20201209_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_10m_20201209_dec7M.ply
rclone copy cur_kal_10m_20201209_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_10m_20201209_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20210219
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20210219
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_10m_20210219.ply -SS RANDOM 50000000
mv cur_kal_10m_20210219_RANDOM_SUBSAMPLED.ply cur_kal_10m_20210219_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_10m_20210219_dec50M.ply -SS RANDOM 7000000
mv cur_kal_10m_20210219_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_10m_20210219_dec7M.ply
rclone copy cur_kal_10m_20210219_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_10m_20210219_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20190309
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20190309
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_05m_20190309.ply -SS RANDOM 50000000
mv cur_kal_05m_20190309_RANDOM_SUBSAMPLED.ply cur_kal_05m_20190309_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_05m_20190309_dec50M.ply -SS RANDOM 7000000
mv cur_kal_05m_20190309_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_05m_20190309_dec7M.ply
rclone copy cur_kal_05m_20190309_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_05m_20190309_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20200214
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20200214
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_05m_20200214.ply -SS RANDOM 50000000
mv cur_kal_05m_20200214_RANDOM_SUBSAMPLED.ply cur_kal_05m_20200214_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_05m_20200214_dec50M.ply -SS RANDOM 7000000
mv cur_kal_05m_20200214_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_05m_20200214_dec7M.ply
rclone copy cur_kal_05m_20200214_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_05m_20200214_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20191113
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20191113
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_05m_20191113.ply -SS RANDOM 50000000
mv cur_kal_05m_20191113_RANDOM_SUBSAMPLED.ply cur_kal_05m_20191113_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_05m_20191113_dec50M.ply -SS RANDOM 7000000
mv cur_kal_05m_20191113_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_05m_20191113_dec7M.ply
rclone copy cur_kal_05m_20191113_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_05m_20191113_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20201209
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20201209
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_05m_20201209.ply -SS RANDOM 50000000
mv cur_kal_05m_20201209_RANDOM_SUBSAMPLED.ply cur_kal_05m_20201209_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_05m_20201209_dec50M.ply -SS RANDOM 7000000
mv cur_kal_05m_20201209_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_05m_20201209_dec7M.ply
rclone copy cur_kal_05m_20201209_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_05m_20201209_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20210219
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20210219
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_05m_20210219.ply -SS RANDOM 50000000
mv cur_kal_05m_20210219_RANDOM_SUBSAMPLED.ply cur_kal_05m_20210219_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_05m_20210219_dec50M.ply -SS RANDOM 7000000
mv cur_kal_05m_20210219_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_05m_20210219_dec7M.ply
rclone copy cur_kal_05m_20210219_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_05m_20210219_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20190224
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20190224
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_60m_20190224.ply -SS RANDOM 50000000
mv cur_kal_60m_20190224_RANDOM_SUBSAMPLED.ply cur_kal_60m_20190224_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_60m_20190224_dec50M.ply -SS RANDOM 7000000
mv cur_kal_60m_20190224_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_60m_20190224_dec7M.ply
rclone copy cur_kal_60m_20190224_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_60m_20190224_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20200214
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20200214
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_60m_20200214.ply -SS RANDOM 50000000
mv cur_kal_60m_20200214_RANDOM_SUBSAMPLED.ply cur_kal_60m_20200214_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_60m_20200214_dec50M.ply -SS RANDOM 7000000
mv cur_kal_60m_20200214_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_60m_20200214_dec7M.ply
rclone copy cur_kal_60m_20200214_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_60m_20200214_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20191113
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20191113
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_60m_20191113.ply -SS RANDOM 50000000
mv cur_kal_60m_20191113_RANDOM_SUBSAMPLED.ply cur_kal_60m_20191113_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_60m_20191113_dec50M.ply -SS RANDOM 7000000
mv cur_kal_60m_20191113_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_60m_20191113_dec7M.ply
rclone copy cur_kal_60m_20191113_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_60m_20191113_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20201214
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20201214
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_60m_20201214.ply -SS RANDOM 50000000
mv cur_kal_60m_20201214_RANDOM_SUBSAMPLED.ply cur_kal_60m_20201214_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_60m_20201214_dec50M.ply -SS RANDOM 7000000
mv cur_kal_60m_20201214_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_60m_20201214_dec7M.ply
rclone copy cur_kal_60m_20201214_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_60m_20201214_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20210214
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20210214
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_60m_20210214.ply -SS RANDOM 50000000
mv cur_kal_60m_20210214_RANDOM_SUBSAMPLED.ply cur_kal_60m_20210214_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_60m_20210214_dec50M.ply -SS RANDOM 7000000
mv cur_kal_60m_20210214_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_60m_20210214_dec7M.ply
rclone copy cur_kal_60m_20210214_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_60m_20210214_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20190310
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20190310
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_20m_20190310.ply -SS RANDOM 50000000
mv cur_sna_20m_20190310_RANDOM_SUBSAMPLED.ply cur_sna_20m_20190310_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_20m_20190310_dec50M.ply -SS RANDOM 7000000
mv cur_sna_20m_20190310_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_20m_20190310_dec7M.ply
rclone copy cur_sna_20m_20190310_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_20m_20190310_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20200303
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20200303
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_20m_20200303.ply -SS RANDOM 50000000
mv cur_sna_20m_20200303_RANDOM_SUBSAMPLED.ply cur_sna_20m_20200303_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_20m_20200303_dec50M.ply -SS RANDOM 7000000
mv cur_sna_20m_20200303_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_20m_20200303_dec7M.ply
rclone copy cur_sna_20m_20200303_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_20m_20200303_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20191111
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20191111
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_20m_20191111.ply -SS RANDOM 50000000
mv cur_sna_20m_20191111_RANDOM_SUBSAMPLED.ply cur_sna_20m_20191111_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_20m_20191111_dec50M.ply -SS RANDOM 7000000
mv cur_sna_20m_20191111_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_20m_20191111_dec7M.ply
rclone copy cur_sna_20m_20191111_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_20m_20191111_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20201202
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20201202
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_20m_20201202.ply -SS RANDOM 50000000
mv cur_sna_20m_20201202_RANDOM_SUBSAMPLED.ply cur_sna_20m_20201202_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_20m_20201202_dec50M.ply -SS RANDOM 7000000
mv cur_sna_20m_20201202_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_20m_20201202_dec7M.ply
rclone copy cur_sna_20m_20201202_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_20m_20201202_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20210305
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20210305
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_20m_20210305.ply -SS RANDOM 50000000
mv cur_sna_20m_20210305_RANDOM_SUBSAMPLED.ply cur_sna_20m_20210305_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_20m_20210305_dec50M.ply -SS RANDOM 7000000
mv cur_sna_20m_20210305_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_20m_20210305_dec7M.ply
rclone copy cur_sna_20m_20210305_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_20m_20210305_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20200303
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20200303
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_10m_20200303.ply -SS RANDOM 50000000
mv cur_sna_10m_20200303_RANDOM_SUBSAMPLED.ply cur_sna_10m_20200303_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_10m_20200303_dec50M.ply -SS RANDOM 7000000
mv cur_sna_10m_20200303_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_10m_20200303_dec7M.ply
rclone copy cur_sna_10m_20200303_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_10m_20200303_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20190305
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20190305
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_10m_20190305.ply -SS RANDOM 50000000
mv cur_sna_10m_20190305_RANDOM_SUBSAMPLED.ply cur_sna_10m_20190305_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_10m_20190305_dec50M.ply -SS RANDOM 7000000
mv cur_sna_10m_20190305_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_10m_20190305_dec7M.ply
rclone copy cur_sna_10m_20190305_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_10m_20190305_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20191111
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20191111
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_10m_20191111.ply -SS RANDOM 50000000
mv cur_sna_10m_20191111_RANDOM_SUBSAMPLED.ply cur_sna_10m_20191111_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_10m_20191111_dec50M.ply -SS RANDOM 7000000
mv cur_sna_10m_20191111_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_10m_20191111_dec7M.ply
rclone copy cur_sna_10m_20191111_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_10m_20191111_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20201202
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20201202
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_10m_20201202.ply -SS RANDOM 50000000
mv cur_sna_10m_20201202_RANDOM_SUBSAMPLED.ply cur_sna_10m_20201202_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_10m_20201202_dec50M.ply -SS RANDOM 7000000
mv cur_sna_10m_20201202_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_10m_20201202_dec7M.ply
rclone copy cur_sna_10m_20201202_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_10m_20201202_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20210305
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20210305
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_10m_20210305.ply -SS RANDOM 50000000
mv cur_sna_10m_20210305_RANDOM_SUBSAMPLED.ply cur_sna_10m_20210305_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_10m_20210305_dec50M.ply -SS RANDOM 7000000
mv cur_sna_10m_20210305_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_10m_20210305_dec7M.ply
rclone copy cur_sna_10m_20210305_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_10m_20210305_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20190307
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20190307
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_05m_20190307.ply -SS RANDOM 50000000
mv cur_sna_05m_20190307_RANDOM_SUBSAMPLED.ply cur_sna_05m_20190307_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_05m_20190307_dec50M.ply -SS RANDOM 7000000
mv cur_sna_05m_20190307_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_05m_20190307_dec7M.ply
rclone copy cur_sna_05m_20190307_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_05m_20190307_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20200303
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20200303
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_05m_20200303.ply -SS RANDOM 50000000
mv cur_sna_05m_20200303_RANDOM_SUBSAMPLED.ply cur_sna_05m_20200303_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_05m_20200303_dec50M.ply -SS RANDOM 7000000
mv cur_sna_05m_20200303_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_05m_20200303_dec7M.ply
rclone copy cur_sna_05m_20200303_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_05m_20200303_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20191110
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20191110
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_05m_20191110.ply -SS RANDOM 50000000
mv cur_sna_05m_20191110_RANDOM_SUBSAMPLED.ply cur_sna_05m_20191110_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_05m_20191110_dec50M.ply -SS RANDOM 7000000
mv cur_sna_05m_20191110_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_05m_20191110_dec7M.ply
rclone copy cur_sna_05m_20191110_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_05m_20191110_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20201202
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20201202
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_05m_20201202.ply -SS RANDOM 50000000
mv cur_sna_05m_20201202_RANDOM_SUBSAMPLED.ply cur_sna_05m_20201202_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_05m_20201202_dec50M.ply -SS RANDOM 7000000
mv cur_sna_05m_20201202_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_05m_20201202_dec7M.ply
rclone copy cur_sna_05m_20201202_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_05m_20201202_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20210305
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20210305
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_05m_20210305.ply -SS RANDOM 50000000
mv cur_sna_05m_20210305_RANDOM_SUBSAMPLED.ply cur_sna_05m_20210305_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_05m_20210305_dec50M.ply -SS RANDOM 7000000
mv cur_sna_05m_20210305_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_05m_20210305_dec7M.ply
rclone copy cur_sna_05m_20210305_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_05m_20210305_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20190222
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20190222
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_40m_20190222.ply -SS RANDOM 50000000
mv cur_sna_40m_20190222_RANDOM_SUBSAMPLED.ply cur_sna_40m_20190222_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_40m_20190222_dec50M.ply -SS RANDOM 7000000
mv cur_sna_40m_20190222_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_40m_20190222_dec7M.ply
rclone copy cur_sna_40m_20190222_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_40m_20190222_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20191110
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20191110
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_40m_20191110.ply -SS RANDOM 50000000
mv cur_sna_40m_20191110_RANDOM_SUBSAMPLED.ply cur_sna_40m_20191110_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_40m_20191110_dec50M.ply -SS RANDOM 7000000
mv cur_sna_40m_20191110_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_40m_20191110_dec7M.ply
rclone copy cur_sna_40m_20191110_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_40m_20191110_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20201205
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20201205
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_40m_20201205.ply -SS RANDOM 50000000
mv cur_sna_40m_20201205_RANDOM_SUBSAMPLED.ply cur_sna_40m_20201205_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_40m_20201205_dec50M.ply -SS RANDOM 7000000
mv cur_sna_40m_20201205_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_40m_20201205_dec7M.ply
rclone copy cur_sna_40m_20201205_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_40m_20201205_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20210307
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20210307
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_40m_20210307.ply -SS RANDOM 50000000
mv cur_sna_40m_20210307_RANDOM_SUBSAMPLED.ply cur_sna_40m_20210307_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_40m_20210307_dec50M.ply -SS RANDOM 7000000
mv cur_sna_40m_20210307_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_40m_20210307_dec7M.ply
rclone copy cur_sna_40m_20210307_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_40m_20210307_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20200216
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20200216
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_60m_20200216.ply -SS RANDOM 50000000
mv cur_sna_60m_20200216_RANDOM_SUBSAMPLED.ply cur_sna_60m_20200216_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_60m_20200216_dec50M.ply -SS RANDOM 7000000
mv cur_sna_60m_20200216_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_60m_20200216_dec7M.ply
rclone copy cur_sna_60m_20200216_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_60m_20200216_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20191111
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20191111
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_60m_20191111.ply -SS RANDOM 50000000
mv cur_sna_60m_20191111_RANDOM_SUBSAMPLED.ply cur_sna_60m_20191111_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_60m_20191111_dec50M.ply -SS RANDOM 7000000
mv cur_sna_60m_20191111_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_60m_20191111_dec7M.ply
rclone copy cur_sna_60m_20191111_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_60m_20191111_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20190222
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20190222
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_60m_20190222.ply -SS RANDOM 50000000
mv cur_sna_60m_20190222_RANDOM_SUBSAMPLED.ply cur_sna_60m_20190222_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_60m_20190222_dec50M.ply -SS RANDOM 7000000
mv cur_sna_60m_20190222_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_60m_20190222_dec7M.ply
rclone copy cur_sna_60m_20190222_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_60m_20190222_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20201227
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20201227
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_60m_20201227.ply -SS RANDOM 50000000
mv cur_sna_60m_20201227_RANDOM_SUBSAMPLED.ply cur_sna_60m_20201227_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_60m_20201227_dec50M.ply -SS RANDOM 7000000
mv cur_sna_60m_20201227_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_60m_20201227_dec7M.ply
rclone copy cur_sna_60m_20201227_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_60m_20201227_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20210307
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20210307
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_60m_20210307.ply -SS RANDOM 50000000
mv cur_sna_60m_20210307_RANDOM_SUBSAMPLED.ply cur_sna_60m_20210307_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_60m_20210307_dec50M.ply -SS RANDOM 7000000
mv cur_sna_60m_20210307_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_60m_20210307_dec7M.ply
rclone copy cur_sna_60m_20210307_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_60m_20210307_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20200221
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20200221
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_10m_20200221.ply -SS RANDOM 50000000
mv cur_sea_10m_20200221_RANDOM_SUBSAMPLED.ply cur_sea_10m_20200221_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_10m_20200221_dec50M.ply -SS RANDOM 7000000
mv cur_sea_10m_20200221_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_10m_20200221_dec7M.ply
rclone copy cur_sea_10m_20200221_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_10m_20200221_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20191112
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20191112
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_10m_20191112.ply -SS RANDOM 50000000
mv cur_sea_10m_20191112_RANDOM_SUBSAMPLED.ply cur_sea_10m_20191112_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_10m_20191112_dec50M.ply -SS RANDOM 7000000
mv cur_sea_10m_20191112_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_10m_20191112_dec7M.ply
rclone copy cur_sea_10m_20191112_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_10m_20191112_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20190319
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20190319
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_10m_20190319.ply -SS RANDOM 50000000
mv cur_sea_10m_20190319_RANDOM_SUBSAMPLED.ply cur_sea_10m_20190319_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_10m_20190319_dec50M.ply -SS RANDOM 7000000
mv cur_sea_10m_20190319_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_10m_20190319_dec7M.ply
rclone copy cur_sea_10m_20190319_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_10m_20190319_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20201210
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20201210
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_10m_20201210.ply -SS RANDOM 50000000
mv cur_sea_10m_20201210_RANDOM_SUBSAMPLED.ply cur_sea_10m_20201210_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_10m_20201210_dec50M.ply -SS RANDOM 7000000
mv cur_sea_10m_20201210_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_10m_20201210_dec7M.ply
rclone copy cur_sea_10m_20201210_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_10m_20201210_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20210302
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20210302
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_10m_20210302.ply -SS RANDOM 50000000
mv cur_sea_10m_20210302_RANDOM_SUBSAMPLED.ply cur_sea_10m_20210302_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_10m_20210302_dec50M.ply -SS RANDOM 7000000
mv cur_sea_10m_20210302_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_10m_20210302_dec7M.ply
rclone copy cur_sea_10m_20210302_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_10m_20210302_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_20m/cur_sea_20m_20200221
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_20m/cur_sea_20m_20200221
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_20m_20200221.ply -SS RANDOM 50000000
mv cur_sea_20m_20200221_RANDOM_SUBSAMPLED.ply cur_sea_20m_20200221_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_20m_20200221_dec50M.ply -SS RANDOM 7000000
mv cur_sea_20m_20200221_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_20m_20200221_dec7M.ply
rclone copy cur_sea_20m_20200221_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_20m_20200221_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_20m/cur_sea_20m_20191112
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_20m/cur_sea_20m_20191112
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_20m_20191112.ply -SS RANDOM 50000000
mv cur_sea_20m_20191112_RANDOM_SUBSAMPLED.ply cur_sea_20m_20191112_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_20m_20191112_dec50M.ply -SS RANDOM 7000000
mv cur_sea_20m_20191112_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_20m_20191112_dec7M.ply
rclone copy cur_sea_20m_20191112_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_20m_20191112_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_20m/cur_sea_20m_20201210
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_20m/cur_sea_20m_20201210
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_20m_20201210.ply -SS RANDOM 50000000
mv cur_sea_20m_20201210_RANDOM_SUBSAMPLED.ply cur_sea_20m_20201210_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_20m_20201210_dec50M.ply -SS RANDOM 7000000
mv cur_sea_20m_20201210_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_20m_20201210_dec7M.ply
rclone copy cur_sea_20m_20201210_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_20m_20201210_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_20m/cur_sea_20m_20210302
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_20m/cur_sea_20m_20210302
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_20m_20210302.ply -SS RANDOM 50000000
mv cur_sea_20m_20210302_RANDOM_SUBSAMPLED.ply cur_sea_20m_20210302_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_20m_20210302_dec50M.ply -SS RANDOM 7000000
mv cur_sea_20m_20210302_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_20m_20210302_dec7M.ply
rclone copy cur_sea_20m_20210302_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_20m_20210302_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20200221
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20200221
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_40m_20200221.ply -SS RANDOM 50000000
mv cur_sea_40m_20200221_RANDOM_SUBSAMPLED.ply cur_sea_40m_20200221_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_40m_20200221_dec50M.ply -SS RANDOM 7000000
mv cur_sea_40m_20200221_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_40m_20200221_dec7M.ply
rclone copy cur_sea_40m_20200221_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_40m_20200221_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20190220
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20190220
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_40m_20190220.ply -SS RANDOM 50000000
mv cur_sea_40m_20190220_RANDOM_SUBSAMPLED.ply cur_sea_40m_20190220_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_40m_20190220_dec50M.ply -SS RANDOM 7000000
mv cur_sea_40m_20190220_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_40m_20190220_dec7M.ply
rclone copy cur_sea_40m_20190220_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_40m_20190220_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20191112
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20191112
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_40m_20191112.ply -SS RANDOM 50000000
mv cur_sea_40m_20191112_RANDOM_SUBSAMPLED.ply cur_sea_40m_20191112_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_40m_20191112_dec50M.ply -SS RANDOM 7000000
mv cur_sea_40m_20191112_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_40m_20191112_dec7M.ply
rclone copy cur_sea_40m_20191112_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_40m_20191112_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20201223
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20201223
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_40m_20201223.ply -SS RANDOM 50000000
mv cur_sea_40m_20201223_RANDOM_SUBSAMPLED.ply cur_sea_40m_20201223_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_40m_20201223_dec50M.ply -SS RANDOM 7000000
mv cur_sea_40m_20201223_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_40m_20201223_dec7M.ply
rclone copy cur_sea_40m_20201223_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_40m_20201223_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20210228
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20210228
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_40m_20210228.ply -SS RANDOM 50000000
mv cur_sea_40m_20210228_RANDOM_SUBSAMPLED.ply cur_sea_40m_20210228_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_40m_20210228_dec50M.ply -SS RANDOM 7000000
mv cur_sea_40m_20210228_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_40m_20210228_dec7M.ply
rclone copy cur_sea_40m_20210228_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_40m_20210228_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20191112
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20191112
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_60m_20191112.ply -SS RANDOM 50000000
mv cur_sea_60m_20191112_RANDOM_SUBSAMPLED.ply cur_sea_60m_20191112_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_60m_20191112_dec50M.ply -SS RANDOM 7000000
mv cur_sea_60m_20191112_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_60m_20191112_dec7M.ply
rclone copy cur_sea_60m_20191112_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_60m_20191112_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20200221
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20200221
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_60m_20200221.ply -SS RANDOM 50000000
mv cur_sea_60m_20200221_RANDOM_SUBSAMPLED.ply cur_sea_60m_20200221_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_60m_20200221_dec50M.ply -SS RANDOM 7000000
mv cur_sea_60m_20200221_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_60m_20200221_dec7M.ply
rclone copy cur_sea_60m_20200221_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_60m_20200221_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20190219
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20190219
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_60m_20190219.ply -SS RANDOM 50000000
mv cur_sea_60m_20190219_RANDOM_SUBSAMPLED.ply cur_sea_60m_20190219_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_60m_20190219_dec50M.ply -SS RANDOM 7000000
mv cur_sea_60m_20190219_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_60m_20190219_dec7M.ply
rclone copy cur_sea_60m_20190219_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_60m_20190219_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20201223
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20201223
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_60m_20201223.ply -SS RANDOM 50000000
mv cur_sea_60m_20201223_RANDOM_SUBSAMPLED.ply cur_sea_60m_20201223_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_60m_20201223_dec50M.ply -SS RANDOM 7000000
mv cur_sea_60m_20201223_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_60m_20201223_dec7M.ply
rclone copy cur_sea_60m_20201223_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_60m_20201223_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20210228
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20210228
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_60m_20210228.ply -SS RANDOM 50000000
mv cur_sea_60m_20210228_RANDOM_SUBSAMPLED.ply cur_sea_60m_20210228_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_60m_20210228_dec50M.ply -SS RANDOM 7000000
mv cur_sea_60m_20210228_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_60m_20210228_dec7M.ply
rclone copy cur_sea_60m_20210228_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_60m_20210228_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_05m/cur_dir_05m_20200227
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_05m/cur_dir_05m_20200227
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_05m_20200227.ply -SS RANDOM 50000000
mv cur_dir_05m_20200227_RANDOM_SUBSAMPLED.ply cur_dir_05m_20200227_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_05m_20200227_dec50M.ply -SS RANDOM 7000000
mv cur_dir_05m_20200227_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_05m_20200227_dec7M.ply
rclone copy cur_dir_05m_20200227_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_05m_20200227_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_05m/cur_dir_05m_20201219
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_05m/cur_dir_05m_20201219
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_05m_20201219.ply -SS RANDOM 50000000
mv cur_dir_05m_20201219_RANDOM_SUBSAMPLED.ply cur_dir_05m_20201219_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_05m_20201219_dec50M.ply -SS RANDOM 7000000
mv cur_dir_05m_20201219_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_05m_20201219_dec7M.ply
rclone copy cur_dir_05m_20201219_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_05m_20201219_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_05m/cur_dir_05m_20201130
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_05m/cur_dir_05m_20201130
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_05m_20201130.ply -SS RANDOM 50000000
mv cur_dir_05m_20201130_RANDOM_SUBSAMPLED.ply cur_dir_05m_20201130_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_05m_20201130_dec50M.ply -SS RANDOM 7000000
mv cur_dir_05m_20201130_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_05m_20201130_dec7M.ply
rclone copy cur_dir_05m_20201130_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_05m_20201130_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_05m/cur_dir_05m_20210221
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_05m/cur_dir_05m_20210221
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_05m_20210221.ply -SS RANDOM 50000000
mv cur_dir_05m_20210221_RANDOM_SUBSAMPLED.ply cur_dir_05m_20210221_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_05m_20210221_dec50M.ply -SS RANDOM 7000000
mv cur_dir_05m_20210221_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_05m_20210221_dec7M.ply
rclone copy cur_dir_05m_20210221_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_05m_20210221_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20200227
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20200227
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_10m_20200227.ply -SS RANDOM 50000000
mv cur_dir_10m_20200227_RANDOM_SUBSAMPLED.ply cur_dir_10m_20200227_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_10m_20200227_dec50M.ply -SS RANDOM 7000000
mv cur_dir_10m_20200227_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_10m_20200227_dec7M.ply
rclone copy cur_dir_10m_20200227_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_10m_20200227_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20201219
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20201219
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_10m_20201219.ply -SS RANDOM 50000000
mv cur_dir_10m_20201219_RANDOM_SUBSAMPLED.ply cur_dir_10m_20201219_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_10m_20201219_dec50M.ply -SS RANDOM 7000000
mv cur_dir_10m_20201219_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_10m_20201219_dec7M.ply
rclone copy cur_dir_10m_20201219_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_10m_20201219_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20201130
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20201130
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_10m_20201130.ply -SS RANDOM 50000000
mv cur_dir_10m_20201130_RANDOM_SUBSAMPLED.ply cur_dir_10m_20201130_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_10m_20201130_dec50M.ply -SS RANDOM 7000000
mv cur_dir_10m_20201130_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_10m_20201130_dec7M.ply
rclone copy cur_dir_10m_20201130_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_10m_20201130_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20210221
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20210221
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_10m_20210221.ply -SS RANDOM 50000000
mv cur_dir_10m_20210221_RANDOM_SUBSAMPLED.ply cur_dir_10m_20210221_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_10m_20210221_dec50M.ply -SS RANDOM 7000000
mv cur_dir_10m_20210221_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_10m_20210221_dec7M.ply
rclone copy cur_dir_10m_20210221_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_10m_20210221_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20200227
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20200227
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_20m_20200227.ply -SS RANDOM 50000000
mv cur_dir_20m_20200227_RANDOM_SUBSAMPLED.ply cur_dir_20m_20200227_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_20m_20200227_dec50M.ply -SS RANDOM 7000000
mv cur_dir_20m_20200227_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_20m_20200227_dec7M.ply
rclone copy cur_dir_20m_20200227_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_20m_20200227_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20201219
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20201219
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_20m_20201219.ply -SS RANDOM 50000000
mv cur_dir_20m_20201219_RANDOM_SUBSAMPLED.ply cur_dir_20m_20201219_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_20m_20201219_dec50M.ply -SS RANDOM 7000000
mv cur_dir_20m_20201219_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_20m_20201219_dec7M.ply
rclone copy cur_dir_20m_20201219_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_20m_20201219_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20201130
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20201130
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_20m_20201130.ply -SS RANDOM 50000000
mv cur_dir_20m_20201130_RANDOM_SUBSAMPLED.ply cur_dir_20m_20201130_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_20m_20201130_dec50M.ply -SS RANDOM 7000000
mv cur_dir_20m_20201130_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_20m_20201130_dec7M.ply
rclone copy cur_dir_20m_20201130_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_20m_20201130_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20210221
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20210221
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_20m_20210221.ply -SS RANDOM 50000000
mv cur_dir_20m_20210221_RANDOM_SUBSAMPLED.ply cur_dir_20m_20210221_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_20m_20210221_dec50M.ply -SS RANDOM 7000000
mv cur_dir_20m_20210221_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_20m_20210221_dec7M.ply
rclone copy cur_dir_20m_20210221_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_20m_20210221_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20200227
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20200227
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_40m_20200227.ply -SS RANDOM 50000000
mv cur_dir_40m_20200227_RANDOM_SUBSAMPLED.ply cur_dir_40m_20200227_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_40m_20200227_dec50M.ply -SS RANDOM 7000000
mv cur_dir_40m_20200227_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_40m_20200227_dec7M.ply
rclone copy cur_dir_40m_20200227_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_40m_20200227_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20201219
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20201219
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_40m_20201219.ply -SS RANDOM 50000000
mv cur_dir_40m_20201219_RANDOM_SUBSAMPLED.ply cur_dir_40m_20201219_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_40m_20201219_dec50M.ply -SS RANDOM 7000000
mv cur_dir_40m_20201219_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_40m_20201219_dec7M.ply
rclone copy cur_dir_40m_20201219_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_40m_20201219_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20210221
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20210221
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_40m_20210221.ply -SS RANDOM 50000000
mv cur_dir_40m_20210221_RANDOM_SUBSAMPLED.ply cur_dir_40m_20210221_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_40m_20210221_dec50M.ply -SS RANDOM 7000000
mv cur_dir_40m_20210221_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_40m_20210221_dec7M.ply
rclone copy cur_dir_40m_20210221_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_40m_20210221_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_60m/cur_dir_60m_20200227
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_60m/cur_dir_60m_20200227
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_60m_20200227.ply -SS RANDOM 50000000
mv cur_dir_60m_20200227_RANDOM_SUBSAMPLED.ply cur_dir_60m_20200227_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_60m_20200227_dec50M.ply -SS RANDOM 7000000
mv cur_dir_60m_20200227_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_60m_20200227_dec7M.ply
rclone copy cur_dir_60m_20200227_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_60m_20200227_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_60m/cur_dir_60m_20201219
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_60m/cur_dir_60m_20201219
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_60m_20201219.ply -SS RANDOM 50000000
mv cur_dir_60m_20201219_RANDOM_SUBSAMPLED.ply cur_dir_60m_20201219_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_60m_20201219_dec50M.ply -SS RANDOM 7000000
mv cur_dir_60m_20201219_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_60m_20201219_dec7M.ply
rclone copy cur_dir_60m_20201219_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_60m_20201219_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_60m/cur_dir_60m_20210213
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_60m/cur_dir_60m_20210213
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_60m_20210213.ply -SS RANDOM 50000000
mv cur_dir_60m_20210213_RANDOM_SUBSAMPLED.ply cur_dir_60m_20210213_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_60m_20210213_dec50M.ply -SS RANDOM 7000000
mv cur_dir_60m_20210213_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_60m_20210213_dec7M.ply
rclone copy cur_dir_60m_20210213_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_60m_20210213_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_05m/cur_wat_05m_20200225
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_05m/cur_wat_05m_20200225
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_05m_20200225.ply -SS RANDOM 50000000
mv cur_wat_05m_20200225_RANDOM_SUBSAMPLED.ply cur_wat_05m_20200225_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_05m_20200225_dec50M.ply -SS RANDOM 7000000
mv cur_wat_05m_20200225_dec50M_RANDOM_SUBSAMPLED.ply cur_wat_05m_20200225_dec7M.ply
rclone copy cur_wat_05m_20200225_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_wat_05m_20200225_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_05m/cur_wat_05m_20210218
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_05m/cur_wat_05m_20210218
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_05m_20210218.ply -SS RANDOM 50000000
mv cur_wat_05m_20210218_RANDOM_SUBSAMPLED.ply cur_wat_05m_20210218_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_05m_20210218_dec50M.ply -SS RANDOM 7000000
mv cur_wat_05m_20210218_dec50M_RANDOM_SUBSAMPLED.ply cur_wat_05m_20210218_dec7M.ply
rclone copy cur_wat_05m_20210218_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_wat_05m_20210218_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_05m/cur_wat_05m_20201201
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_05m/cur_wat_05m_20201201
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_05m_20201201.ply -SS RANDOM 50000000
mv cur_wat_05m_20201201_RANDOM_SUBSAMPLED.ply cur_wat_05m_20201201_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_05m_20201201_dec50M.ply -SS RANDOM 7000000
mv cur_wat_05m_20201201_dec50M_RANDOM_SUBSAMPLED.ply cur_wat_05m_20201201_dec7M.ply
rclone copy cur_wat_05m_20201201_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_wat_05m_20201201_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20200225
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20200225
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_10m_20200225.ply -SS RANDOM 50000000
mv cur_wat_10m_20200225_RANDOM_SUBSAMPLED.ply cur_wat_10m_20200225_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_10m_20200225_dec50M.ply -SS RANDOM 7000000
mv cur_wat_10m_20200225_dec50M_RANDOM_SUBSAMPLED.ply cur_wat_10m_20200225_dec7M.ply
rclone copy cur_wat_10m_20200225_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_wat_10m_20200225_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20201201
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20201201
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_10m_20201201.ply -SS RANDOM 50000000
mv cur_wat_10m_20201201_RANDOM_SUBSAMPLED.ply cur_wat_10m_20201201_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_10m_20201201_dec50M.ply -SS RANDOM 7000000
mv cur_wat_10m_20201201_dec50M_RANDOM_SUBSAMPLED.ply cur_wat_10m_20201201_dec7M.ply
rclone copy cur_wat_10m_20201201_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_wat_10m_20201201_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20210218
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20210218
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_10m_20210218.ply -SS RANDOM 50000000
mv cur_wat_10m_20210218_RANDOM_SUBSAMPLED.ply cur_wat_10m_20210218_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_10m_20210218_dec50M.ply -SS RANDOM 7000000
mv cur_wat_10m_20210218_dec50M_RANDOM_SUBSAMPLED.ply cur_wat_10m_20210218_dec7M.ply
rclone copy cur_wat_10m_20210218_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_wat_10m_20210218_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_20m/cur_wat_20m_20200225
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_20m/cur_wat_20m_20200225
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_20m_20200225.ply -SS RANDOM 50000000
mv cur_wat_20m_20200225_RANDOM_SUBSAMPLED.ply cur_wat_20m_20200225_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_20m_20200225_dec50M.ply -SS RANDOM 7000000
mv cur_wat_20m_20200225_dec50M_RANDOM_SUBSAMPLED.ply cur_wat_20m_20200225_dec7M.ply
rclone copy cur_wat_20m_20200225_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_wat_20m_20200225_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_20m/cur_wat_20m_20201201
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_20m/cur_wat_20m_20201201
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_20m_20201201.ply -SS RANDOM 50000000
mv cur_wat_20m_20201201_RANDOM_SUBSAMPLED.ply cur_wat_20m_20201201_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_20m_20201201_dec50M.ply -SS RANDOM 7000000
mv cur_wat_20m_20201201_dec50M_RANDOM_SUBSAMPLED.ply cur_wat_20m_20201201_dec7M.ply
rclone copy cur_wat_20m_20201201_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_wat_20m_20201201_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_20m/cur_wat_20m_20210218
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_20m/cur_wat_20m_20210218
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_20m_20210218.ply -SS RANDOM 50000000
mv cur_wat_20m_20210218_RANDOM_SUBSAMPLED.ply cur_wat_20m_20210218_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_20m_20210218_dec50M.ply -SS RANDOM 7000000
mv cur_wat_20m_20210218_dec50M_RANDOM_SUBSAMPLED.ply cur_wat_20m_20210218_dec7M.ply
rclone copy cur_wat_20m_20210218_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_wat_20m_20210218_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_40m/cur_wat_40m_20200225
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_40m/cur_wat_40m_20200225
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_40m_20200225.ply -SS RANDOM 50000000
mv cur_wat_40m_20200225_RANDOM_SUBSAMPLED.ply cur_wat_40m_20200225_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_40m_20200225_dec50M.ply -SS RANDOM 7000000
mv cur_wat_40m_20200225_dec50M_RANDOM_SUBSAMPLED.ply cur_wat_40m_20200225_dec7M.ply
rclone copy cur_wat_40m_20200225_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_wat_40m_20200225_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_60m/cur_wat_60m_20200225
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_60m/cur_wat_60m_20200225
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_60m_20200225.ply -SS RANDOM 50000000
mv cur_wat_60m_20200225_RANDOM_SUBSAMPLED.ply cur_wat_60m_20200225_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_60m_20200225_dec50M.ply -SS RANDOM 7000000
mv cur_wat_60m_20200225_dec50M_RANDOM_SUBSAMPLED.ply cur_wat_60m_20200225_dec7M.ply
rclone copy cur_wat_60m_20200225_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_wat_60m_20200225_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_05m/cur_hul_05m_20200301
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_05m/cur_hul_05m_20200301
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_05m_20200301.ply -SS RANDOM 50000000
mv cur_hul_05m_20200301_RANDOM_SUBSAMPLED.ply cur_hul_05m_20200301_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_05m_20200301_dec50M.ply -SS RANDOM 7000000
mv cur_hul_05m_20200301_dec50M_RANDOM_SUBSAMPLED.ply cur_hul_05m_20200301_dec7M.ply
rclone copy cur_hul_05m_20200301_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_hul_05m_20200301_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_05m/cur_hul_05m_20201206
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_05m/cur_hul_05m_20201206
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_05m_20201206.ply -SS RANDOM 50000000
mv cur_hul_05m_20201206_RANDOM_SUBSAMPLED.ply cur_hul_05m_20201206_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_05m_20201206_dec50M.ply -SS RANDOM 7000000
mv cur_hul_05m_20201206_dec50M_RANDOM_SUBSAMPLED.ply cur_hul_05m_20201206_dec7M.ply
rclone copy cur_hul_05m_20201206_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_hul_05m_20201206_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_05m/cur_hul_05m_20210223
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_05m/cur_hul_05m_20210223
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_05m_20210223.ply -SS RANDOM 50000000
mv cur_hul_05m_20210223_RANDOM_SUBSAMPLED.ply cur_hul_05m_20210223_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_05m_20210223_dec50M.ply -SS RANDOM 7000000
mv cur_hul_05m_20210223_dec50M_RANDOM_SUBSAMPLED.ply cur_hul_05m_20210223_dec7M.ply
rclone copy cur_hul_05m_20210223_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_hul_05m_20210223_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_10m/cur_hul_10m_20200301
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_10m/cur_hul_10m_20200301
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_10m_20200301.ply -SS RANDOM 50000000
mv cur_hul_10m_20200301_RANDOM_SUBSAMPLED.ply cur_hul_10m_20200301_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_10m_20200301_dec50M.ply -SS RANDOM 7000000
mv cur_hul_10m_20200301_dec50M_RANDOM_SUBSAMPLED.ply cur_hul_10m_20200301_dec7M.ply
rclone copy cur_hul_10m_20200301_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_hul_10m_20200301_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_10m/cur_hul_10m_20201206
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_10m/cur_hul_10m_20201206
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_10m_20201206.ply -SS RANDOM 50000000
mv cur_hul_10m_20201206_RANDOM_SUBSAMPLED.ply cur_hul_10m_20201206_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_10m_20201206_dec50M.ply -SS RANDOM 7000000
mv cur_hul_10m_20201206_dec50M_RANDOM_SUBSAMPLED.ply cur_hul_10m_20201206_dec7M.ply
rclone copy cur_hul_10m_20201206_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_hul_10m_20201206_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_10m/cur_hul_10m_20210223
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_10m/cur_hul_10m_20210223
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_10m_20210223.ply -SS RANDOM 50000000
mv cur_hul_10m_20210223_RANDOM_SUBSAMPLED.ply cur_hul_10m_20210223_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_10m_20210223_dec50M.ply -SS RANDOM 7000000
mv cur_hul_10m_20210223_dec50M_RANDOM_SUBSAMPLED.ply cur_hul_10m_20210223_dec7M.ply
rclone copy cur_hul_10m_20210223_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_hul_10m_20210223_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_20m/cur_hul_20m_20200301
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_20m/cur_hul_20m_20200301
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_20m_20200301.ply -SS RANDOM 50000000
mv cur_hul_20m_20200301_RANDOM_SUBSAMPLED.ply cur_hul_20m_20200301_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_20m_20200301_dec50M.ply -SS RANDOM 7000000
mv cur_hul_20m_20200301_dec50M_RANDOM_SUBSAMPLED.ply cur_hul_20m_20200301_dec7M.ply
rclone copy cur_hul_20m_20200301_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_hul_20m_20200301_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_20m/cur_hul_20m_20201206
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_20m/cur_hul_20m_20201206
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_20m_20201206.ply -SS RANDOM 50000000
mv cur_hul_20m_20201206_RANDOM_SUBSAMPLED.ply cur_hul_20m_20201206_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_20m_20201206_dec50M.ply -SS RANDOM 7000000
mv cur_hul_20m_20201206_dec50M_RANDOM_SUBSAMPLED.ply cur_hul_20m_20201206_dec7M.ply
rclone copy cur_hul_20m_20201206_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_hul_20m_20201206_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_20m/cur_hul_20m_20210223
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_20m/cur_hul_20m_20210223
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_20m_20210223.ply -SS RANDOM 50000000
mv cur_hul_20m_20210223_RANDOM_SUBSAMPLED.ply cur_hul_20m_20210223_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_20m_20210223_dec50M.ply -SS RANDOM 7000000
mv cur_hul_20m_20210223_dec50M_RANDOM_SUBSAMPLED.ply cur_hul_20m_20210223_dec7M.ply
rclone copy cur_hul_20m_20210223_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_hul_20m_20210223_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_40m/cur_hul_40m_20200301
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_40m/cur_hul_40m_20200301
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_40m_20200301.ply -SS RANDOM 50000000
mv cur_hul_40m_20200301_RANDOM_SUBSAMPLED.ply cur_hul_40m_20200301_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_40m_20200301_dec50M.ply -SS RANDOM 7000000
mv cur_hul_40m_20200301_dec50M_RANDOM_SUBSAMPLED.ply cur_hul_40m_20200301_dec7M.ply
rclone copy cur_hul_40m_20200301_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_hul_40m_20200301_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_60m/cur_hul_60m_20200301
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_60m/cur_hul_60m_20200301
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_60m_20200301.ply -SS RANDOM 50000000
mv cur_hul_60m_20200301_RANDOM_SUBSAMPLED.ply cur_hul_60m_20200301_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_60m_20200301_dec50M.ply -SS RANDOM 7000000
mv cur_hul_60m_20200301_dec50M_RANDOM_SUBSAMPLED.ply cur_hul_60m_20200301_dec7M.ply
rclone copy cur_hul_60m_20200301_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_hul_60m_20200301_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20200219
cd /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20200219
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_05m_20200219.ply -SS RANDOM 50000000
mv cur_est_05m_20200219_RANDOM_SUBSAMPLED.ply cur_est_05m_20200219_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_05m_20200219_dec50M.ply -SS RANDOM 7000000
mv cur_est_05m_20200219_dec50M_RANDOM_SUBSAMPLED.ply cur_est_05m_20200219_dec7M.ply
rclone copy cur_est_05m_20200219_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_05m_20200219_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20201127
cd /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20201127
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_05m_20201127.ply -SS RANDOM 50000000
mv cur_est_05m_20201127_RANDOM_SUBSAMPLED.ply cur_est_05m_20201127_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_05m_20201127_dec50M.ply -SS RANDOM 7000000
mv cur_est_05m_20201127_dec50M_RANDOM_SUBSAMPLED.ply cur_est_05m_20201127_dec7M.ply
rclone copy cur_est_05m_20201127_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_05m_20201127_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20210216
cd /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20210216
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_05m_20210216.ply -SS RANDOM 50000000
mv cur_est_05m_20210216_RANDOM_SUBSAMPLED.ply cur_est_05m_20210216_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_05m_20210216_dec50M.ply -SS RANDOM 7000000
mv cur_est_05m_20210216_dec50M_RANDOM_SUBSAMPLED.ply cur_est_05m_20210216_dec7M.ply
rclone copy cur_est_05m_20210216_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_05m_20210216_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20200219
cd /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20200219
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_10m_20200219.ply -SS RANDOM 50000000
mv cur_est_10m_20200219_RANDOM_SUBSAMPLED.ply cur_est_10m_20200219_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_10m_20200219_dec50M.ply -SS RANDOM 7000000
mv cur_est_10m_20200219_dec50M_RANDOM_SUBSAMPLED.ply cur_est_10m_20200219_dec7M.ply
rclone copy cur_est_10m_20200219_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_10m_20200219_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20210216
cd /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20210216
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_10m_20210216.ply -SS RANDOM 50000000
mv cur_est_10m_20210216_RANDOM_SUBSAMPLED.ply cur_est_10m_20210216_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_10m_20210216_dec50M.ply -SS RANDOM 7000000
mv cur_est_10m_20210216_dec50M_RANDOM_SUBSAMPLED.ply cur_est_10m_20210216_dec7M.ply
rclone copy cur_est_10m_20210216_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_10m_20210216_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20200219
cd /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20200219
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_20m_20200219.ply -SS RANDOM 50000000
mv cur_est_20m_20200219_RANDOM_SUBSAMPLED.ply cur_est_20m_20200219_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_20m_20200219_dec50M.ply -SS RANDOM 7000000
mv cur_est_20m_20200219_dec50M_RANDOM_SUBSAMPLED.ply cur_est_20m_20200219_dec7M.ply
rclone copy cur_est_20m_20200219_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_20m_20200219_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20201127
cd /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20201127
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_20m_20201127.ply -SS RANDOM 50000000
mv cur_est_20m_20201127_RANDOM_SUBSAMPLED.ply cur_est_20m_20201127_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_20m_20201127_dec50M.ply -SS RANDOM 7000000
mv cur_est_20m_20201127_dec50M_RANDOM_SUBSAMPLED.ply cur_est_20m_20201127_dec7M.ply
rclone copy cur_est_20m_20201127_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_20m_20201127_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20210216
cd /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20210216
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_20m_20210216.ply -SS RANDOM 50000000
mv cur_est_20m_20210216_RANDOM_SUBSAMPLED.ply cur_est_20m_20210216_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_20m_20210216_dec50M.ply -SS RANDOM 7000000
mv cur_est_20m_20210216_dec50M_RANDOM_SUBSAMPLED.ply cur_est_20m_20210216_dec7M.ply
rclone copy cur_est_20m_20210216_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_20m_20210216_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_60m/cur_est_60m_20200302
cd /mnt/coral3d/focal_plots/cur_est/cur_est_60m/cur_est_60m_20200302
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_60m_20200302.ply -SS RANDOM 50000000
mv cur_est_60m_20200302_RANDOM_SUBSAMPLED.ply cur_est_60m_20200302_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_60m_20200302_dec50M.ply -SS RANDOM 7000000
mv cur_est_60m_20200302_dec50M_RANDOM_SUBSAMPLED.ply cur_est_60m_20200302_dec7M.ply
rclone copy cur_est_60m_20200302_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_60m_20200302_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sam/cur_sam_05m/cur_sam_05m_20200222
cd /mnt/coral3d/focal_plots/cur_sam/cur_sam_05m/cur_sam_05m_20200222
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sam_05m_20200222.ply -SS RANDOM 50000000
mv cur_sam_05m_20200222_RANDOM_SUBSAMPLED.ply cur_sam_05m_20200222_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sam_05m_20200222_dec50M.ply -SS RANDOM 7000000
mv cur_sam_05m_20200222_dec50M_RANDOM_SUBSAMPLED.ply cur_sam_05m_20200222_dec7M.ply
rclone copy cur_sam_05m_20200222_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sam_05m_20200222_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sam/cur_sam_10m/cur_sam_10m_20200222
cd /mnt/coral3d/focal_plots/cur_sam/cur_sam_10m/cur_sam_10m_20200222
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sam_10m_20200222.ply -SS RANDOM 50000000
mv cur_sam_10m_20200222_RANDOM_SUBSAMPLED.ply cur_sam_10m_20200222_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sam_10m_20200222_dec50M.ply -SS RANDOM 7000000
mv cur_sam_10m_20200222_dec50M_RANDOM_SUBSAMPLED.ply cur_sam_10m_20200222_dec7M.ply
rclone copy cur_sam_10m_20200222_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sam_10m_20200222_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sam/cur_sam_20m/cur_sam_20m_20200222
cd /mnt/coral3d/focal_plots/cur_sam/cur_sam_20m/cur_sam_20m_20200222
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sam_20m_20200222.ply -SS RANDOM 50000000
mv cur_sam_20m_20200222_RANDOM_SUBSAMPLED.ply cur_sam_20m_20200222_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sam_20m_20200222_dec50M.ply -SS RANDOM 7000000
mv cur_sam_20m_20200222_dec50M_RANDOM_SUBSAMPLED.ply cur_sam_20m_20200222_dec7M.ply
rclone copy cur_sam_20m_20200222_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sam_20m_20200222_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sam/cur_sam_40m/cur_sam_40m_20200222
cd /mnt/coral3d/focal_plots/cur_sam/cur_sam_40m/cur_sam_40m_20200222
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sam_40m_20200222.ply -SS RANDOM 50000000
mv cur_sam_40m_20200222_RANDOM_SUBSAMPLED.ply cur_sam_40m_20200222_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sam_40m_20200222_dec50M.ply -SS RANDOM 7000000
mv cur_sam_40m_20200222_dec50M_RANDOM_SUBSAMPLED.ply cur_sam_40m_20200222_dec7M.ply
rclone copy cur_sam_40m_20200222_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sam_40m_20200222_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_cas/cur_cas_05m/cur_cas_05m_20190401
cd /mnt/coral3d/focal_plots/cur_cas/cur_cas_05m/cur_cas_05m_20190401
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_cas_05m_20190401.ply -SS RANDOM 50000000
mv cur_cas_05m_20190401_RANDOM_SUBSAMPLED.ply cur_cas_05m_20190401_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_cas_05m_20190401_dec50M.ply -SS RANDOM 7000000
mv cur_cas_05m_20190401_dec50M_RANDOM_SUBSAMPLED.ply cur_cas_05m_20190401_dec7M.ply
rclone copy cur_cas_05m_20190401_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_cas_05m_20190401_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_cas/cur_cas_05m/cur_cas_05m_20201212
cd /mnt/coral3d/focal_plots/cur_cas/cur_cas_05m/cur_cas_05m_20201212
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_cas_05m_20201212.ply -SS RANDOM 50000000
mv cur_cas_05m_20201212_RANDOM_SUBSAMPLED.ply cur_cas_05m_20201212_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_cas_05m_20201212_dec50M.ply -SS RANDOM 7000000
mv cur_cas_05m_20201212_dec50M_RANDOM_SUBSAMPLED.ply cur_cas_05m_20201212_dec7M.ply
rclone copy cur_cas_05m_20201212_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_cas_05m_20201212_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_cas/cur_cas_05m/cur_cas_05m_20210225
cd /mnt/coral3d/focal_plots/cur_cas/cur_cas_05m/cur_cas_05m_20210225
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_cas_05m_20210225.ply -SS RANDOM 50000000
mv cur_cas_05m_20210225_RANDOM_SUBSAMPLED.ply cur_cas_05m_20210225_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_cas_05m_20210225_dec50M.ply -SS RANDOM 7000000
mv cur_cas_05m_20210225_dec50M_RANDOM_SUBSAMPLED.ply cur_cas_05m_20210225_dec7M.ply
rclone copy cur_cas_05m_20210225_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_cas_05m_20210225_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_cas/cur_cas_10m/cur_cas_10m_20190401
cd /mnt/coral3d/focal_plots/cur_cas/cur_cas_10m/cur_cas_10m_20190401
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_cas_10m_20190401.ply -SS RANDOM 50000000
mv cur_cas_10m_20190401_RANDOM_SUBSAMPLED.ply cur_cas_10m_20190401_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_cas_10m_20190401_dec50M.ply -SS RANDOM 7000000
mv cur_cas_10m_20190401_dec50M_RANDOM_SUBSAMPLED.ply cur_cas_10m_20190401_dec7M.ply
rclone copy cur_cas_10m_20190401_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_cas_10m_20190401_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_cas/cur_cas_10m/cur_cas_10m_20201212
cd /mnt/coral3d/focal_plots/cur_cas/cur_cas_10m/cur_cas_10m_20201212
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_cas_10m_20201212.ply -SS RANDOM 50000000
mv cur_cas_10m_20201212_RANDOM_SUBSAMPLED.ply cur_cas_10m_20201212_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_cas_10m_20201212_dec50M.ply -SS RANDOM 7000000
mv cur_cas_10m_20201212_dec50M_RANDOM_SUBSAMPLED.ply cur_cas_10m_20201212_dec7M.ply
rclone copy cur_cas_10m_20201212_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_cas_10m_20201212_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_cas/cur_cas_10m/cur_cas_10m_20210225
cd /mnt/coral3d/focal_plots/cur_cas/cur_cas_10m/cur_cas_10m_20210225
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_cas_10m_20210225.ply -SS RANDOM 50000000
mv cur_cas_10m_20210225_RANDOM_SUBSAMPLED.ply cur_cas_10m_20210225_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_cas_10m_20210225_dec50M.ply -SS RANDOM 7000000
mv cur_cas_10m_20210225_dec50M_RANDOM_SUBSAMPLED.ply cur_cas_10m_20210225_dec7M.ply
rclone copy cur_cas_10m_20210225_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_cas_10m_20210225_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_cas/cur_cas_20m/cur_cas_20m_20190331
cd /mnt/coral3d/focal_plots/cur_cas/cur_cas_20m/cur_cas_20m_20190331
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_cas_20m_20190331.ply -SS RANDOM 50000000
mv cur_cas_20m_20190331_RANDOM_SUBSAMPLED.ply cur_cas_20m_20190331_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_cas_20m_20190331_dec50M.ply -SS RANDOM 7000000
mv cur_cas_20m_20190331_dec50M_RANDOM_SUBSAMPLED.ply cur_cas_20m_20190331_dec7M.ply
rclone copy cur_cas_20m_20190331_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_cas_20m_20190331_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_cas/cur_cas_20m/cur_cas_20m_20201212
cd /mnt/coral3d/focal_plots/cur_cas/cur_cas_20m/cur_cas_20m_20201212
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_cas_20m_20201212.ply -SS RANDOM 50000000
mv cur_cas_20m_20201212_RANDOM_SUBSAMPLED.ply cur_cas_20m_20201212_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_cas_20m_20201212_dec50M.ply -SS RANDOM 7000000
mv cur_cas_20m_20201212_dec50M_RANDOM_SUBSAMPLED.ply cur_cas_20m_20201212_dec7M.ply
rclone copy cur_cas_20m_20201212_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_cas_20m_20201212_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_cas/cur_cas_20m/cur_cas_20m_20210225
cd /mnt/coral3d/focal_plots/cur_cas/cur_cas_20m/cur_cas_20m_20210225
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_cas_20m_20210225.ply -SS RANDOM 50000000
mv cur_cas_20m_20210225_RANDOM_SUBSAMPLED.ply cur_cas_20m_20210225_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_cas_20m_20210225_dec50M.ply -SS RANDOM 7000000
mv cur_cas_20m_20210225_dec50M_RANDOM_SUBSAMPLED.ply cur_cas_20m_20210225_dec7M.ply
rclone copy cur_cas_20m_20210225_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_cas_20m_20210225_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_seb/cur_seb_10m/cur_seb_10m_20190319
cd /mnt/coral3d/focal_plots/cur_seb/cur_seb_10m/cur_seb_10m_20190319
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_seb_10m_20190319.ply -SS RANDOM 50000000
mv cur_seb_10m_20190319_RANDOM_SUBSAMPLED.ply cur_seb_10m_20190319_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_seb_10m_20190319_dec50M.ply -SS RANDOM 7000000
mv cur_seb_10m_20190319_dec50M_RANDOM_SUBSAMPLED.ply cur_seb_10m_20190319_dec7M.ply
rclone copy cur_seb_10m_20190319_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_seb_10m_20190319_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_seb/cur_seb_10m/cur_seb_10m_20201210
cd /mnt/coral3d/focal_plots/cur_seb/cur_seb_10m/cur_seb_10m_20201210
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_seb_10m_20201210.ply -SS RANDOM 50000000
mv cur_seb_10m_20201210_RANDOM_SUBSAMPLED.ply cur_seb_10m_20201210_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_seb_10m_20201210_dec50M.ply -SS RANDOM 7000000
mv cur_seb_10m_20201210_dec50M_RANDOM_SUBSAMPLED.ply cur_seb_10m_20201210_dec7M.ply
rclone copy cur_seb_10m_20201210_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_seb_10m_20201210_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_seb/cur_seb_10m/cur_seb_10m_20210302
cd /mnt/coral3d/focal_plots/cur_seb/cur_seb_10m/cur_seb_10m_20210302
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_seb_10m_20210302.ply -SS RANDOM 50000000
mv cur_seb_10m_20210302_RANDOM_SUBSAMPLED.ply cur_seb_10m_20210302_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_seb_10m_20210302_dec50M.ply -SS RANDOM 7000000
mv cur_seb_10m_20210302_dec50M_RANDOM_SUBSAMPLED.ply cur_seb_10m_20210302_dec7M.ply
rclone copy cur_seb_10m_20210302_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_seb_10m_20210302_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_seb/cur_seb_20m/cur_seb_20m_20190319
cd /mnt/coral3d/focal_plots/cur_seb/cur_seb_20m/cur_seb_20m_20190319
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_seb_20m_20190319.ply -SS RANDOM 50000000
mv cur_seb_20m_20190319_RANDOM_SUBSAMPLED.ply cur_seb_20m_20190319_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_seb_20m_20190319_dec50M.ply -SS RANDOM 7000000
mv cur_seb_20m_20190319_dec50M_RANDOM_SUBSAMPLED.ply cur_seb_20m_20190319_dec7M.ply
rclone copy cur_seb_20m_20190319_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_seb_20m_20190319_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_seb/cur_seb_20m/cur_seb_20m_20201210
cd /mnt/coral3d/focal_plots/cur_seb/cur_seb_20m/cur_seb_20m_20201210
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_seb_20m_20201210.ply -SS RANDOM 50000000
mv cur_seb_20m_20201210_RANDOM_SUBSAMPLED.ply cur_seb_20m_20201210_dec50M.ply
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_seb_20m_20201210_dec50M.ply -SS RANDOM 7000000
mv cur_seb_20m_20201210_dec50M_RANDOM_SUBSAMPLED.ply cur_seb_20m_20201210_dec7M.ply
rclone copy cur_seb_20m_20201210_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_seb_20m_20201210_dec7M.ply orthos:/focal_plots/ply_dec7M
