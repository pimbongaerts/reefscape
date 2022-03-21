# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20211130
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20211130
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_20m_20211130.ply -SS RANDOM 50000000
mv cur_kal_20m_20211130_RANDOM_SUBSAMPLED.ply cur_kal_20m_20211130_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_20m_20211130_dec50M.ply -SS RANDOM 7000000
mv cur_kal_20m_20211130_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_20m_20211130_dec7M.ply
rclone copy cur_kal_20m_20211130_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_20m_20211130_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20211127
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20211127
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_40m_20211127.ply -SS RANDOM 50000000
mv cur_kal_40m_20211127_RANDOM_SUBSAMPLED.ply cur_kal_40m_20211127_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_40m_20211127_dec50M.ply -SS RANDOM 7000000
mv cur_kal_40m_20211127_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_40m_20211127_dec7M.ply
rclone copy cur_kal_40m_20211127_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_40m_20211127_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20211130
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20211130
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_10m_20211130.ply -SS RANDOM 50000000
mv cur_kal_10m_20211130_RANDOM_SUBSAMPLED.ply cur_kal_10m_20211130_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_10m_20211130_dec50M.ply -SS RANDOM 7000000
mv cur_kal_10m_20211130_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_10m_20211130_dec7M.ply
rclone copy cur_kal_10m_20211130_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_10m_20211130_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20211127
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20211127
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_60m_20211127.ply -SS RANDOM 50000000
mv cur_kal_60m_20211127_RANDOM_SUBSAMPLED.ply cur_kal_60m_20211127_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_60m_20211127_dec50M.ply -SS RANDOM 7000000
mv cur_kal_60m_20211127_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_60m_20211127_dec7M.ply
rclone copy cur_kal_60m_20211127_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_60m_20211127_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20211124
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20211124
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_20m_20211124.ply -SS RANDOM 50000000
mv cur_sna_20m_20211124_RANDOM_SUBSAMPLED.ply cur_sna_20m_20211124_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_20m_20211124_dec50M.ply -SS RANDOM 7000000
mv cur_sna_20m_20211124_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_20m_20211124_dec7M.ply
rclone copy cur_sna_20m_20211124_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_20m_20211124_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20211124
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20211124
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_10m_20211124.ply -SS RANDOM 50000000
mv cur_sna_10m_20211124_RANDOM_SUBSAMPLED.ply cur_sna_10m_20211124_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_10m_20211124_dec50M.ply -SS RANDOM 7000000
mv cur_sna_10m_20211124_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_10m_20211124_dec7M.ply
rclone copy cur_sna_10m_20211124_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_10m_20211124_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20211124
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20211124
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_05m_20211124.ply -SS RANDOM 50000000
mv cur_sna_05m_20211124_RANDOM_SUBSAMPLED.ply cur_sna_05m_20211124_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_05m_20211124_dec50M.ply -SS RANDOM 7000000
mv cur_sna_05m_20211124_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_05m_20211124_dec7M.ply
rclone copy cur_sna_05m_20211124_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_05m_20211124_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20211204
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20211204
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_60m_20211204.ply -SS RANDOM 50000000
mv cur_sna_60m_20211204_RANDOM_SUBSAMPLED.ply cur_sna_60m_20211204_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_60m_20211204_dec50M.ply -SS RANDOM 7000000
mv cur_sna_60m_20211204_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_60m_20211204_dec7M.ply
rclone copy cur_sna_60m_20211204_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_60m_20211204_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20211125
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20211125
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_10m_20211125.ply -SS RANDOM 50000000
mv cur_sea_10m_20211125_RANDOM_SUBSAMPLED.ply cur_sea_10m_20211125_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_10m_20211125_dec50M.ply -SS RANDOM 7000000
mv cur_sea_10m_20211125_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_10m_20211125_dec7M.ply
rclone copy cur_sea_10m_20211125_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_10m_20211125_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_20m/cur_sea_20m_20211125
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_20m/cur_sea_20m_20211125
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_20m_20211125.ply -SS RANDOM 50000000
mv cur_sea_20m_20211125_RANDOM_SUBSAMPLED.ply cur_sea_20m_20211125_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_20m_20211125_dec50M.ply -SS RANDOM 7000000
mv cur_sea_20m_20211125_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_20m_20211125_dec7M.ply
rclone copy cur_sea_20m_20211125_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_20m_20211125_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20211215
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20211215
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_40m_20211215.ply -SS RANDOM 50000000
mv cur_sea_40m_20211215_RANDOM_SUBSAMPLED.ply cur_sea_40m_20211215_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_40m_20211215_dec50M.ply -SS RANDOM 7000000
mv cur_sea_40m_20211215_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_40m_20211215_dec7M.ply
rclone copy cur_sea_40m_20211215_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_40m_20211215_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20211215
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20211215
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_60m_20211215.ply -SS RANDOM 50000000
mv cur_sea_60m_20211215_RANDOM_SUBSAMPLED.ply cur_sea_60m_20211215_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_60m_20211215_dec50M.ply -SS RANDOM 7000000
mv cur_sea_60m_20211215_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_60m_20211215_dec7M.ply
rclone copy cur_sea_60m_20211215_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_60m_20211215_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_05m/cur_dir_05m_20211202
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_05m/cur_dir_05m_20211202
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_05m_20211202.ply -SS RANDOM 50000000
mv cur_dir_05m_20211202_RANDOM_SUBSAMPLED.ply cur_dir_05m_20211202_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_05m_20211202_dec50M.ply -SS RANDOM 7000000
mv cur_dir_05m_20211202_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_05m_20211202_dec7M.ply
rclone copy cur_dir_05m_20211202_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_05m_20211202_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20211202
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20211202
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_10m_20211202.ply -SS RANDOM 50000000
mv cur_dir_10m_20211202_RANDOM_SUBSAMPLED.ply cur_dir_10m_20211202_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_10m_20211202_dec50M.ply -SS RANDOM 7000000
mv cur_dir_10m_20211202_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_10m_20211202_dec7M.ply
rclone copy cur_dir_10m_20211202_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_10m_20211202_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_60m/cur_dir_60m_20211128
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_60m/cur_dir_60m_20211128
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_60m_20211128.ply -SS RANDOM 50000000
mv cur_dir_60m_20211128_RANDOM_SUBSAMPLED.ply cur_dir_60m_20211128_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_60m_20211128_dec50M.ply -SS RANDOM 7000000
mv cur_dir_60m_20211128_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_60m_20211128_dec7M.ply
rclone copy cur_dir_60m_20211128_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_60m_20211128_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_05m/cur_wat_05m_20211126
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_05m/cur_wat_05m_20211126
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_05m_20211126.ply -SS RANDOM 50000000
mv cur_wat_05m_20211126_RANDOM_SUBSAMPLED.ply cur_wat_05m_20211126_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_05m_20211126_dec50M.ply -SS RANDOM 7000000
mv cur_wat_05m_20211126_dec50M_RANDOM_SUBSAMPLED.ply cur_wat_05m_20211126_dec7M.ply
rclone copy cur_wat_05m_20211126_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_wat_05m_20211126_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20211126
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20211126
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_10m_20211126.ply -SS RANDOM 50000000
mv cur_wat_10m_20211126_RANDOM_SUBSAMPLED.ply cur_wat_10m_20211126_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_10m_20211126_dec50M.ply -SS RANDOM 7000000
mv cur_wat_10m_20211126_dec50M_RANDOM_SUBSAMPLED.ply cur_wat_10m_20211126_dec7M.ply
rclone copy cur_wat_10m_20211126_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_wat_10m_20211126_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_20m/cur_wat_20m_20211126
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_20m/cur_wat_20m_20211126
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_20m_20211126.ply -SS RANDOM 50000000
mv cur_wat_20m_20211126_RANDOM_SUBSAMPLED.ply cur_wat_20m_20211126_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_20m_20211126_dec50M.ply -SS RANDOM 7000000
mv cur_wat_20m_20211126_dec50M_RANDOM_SUBSAMPLED.ply cur_wat_20m_20211126_dec7M.ply
rclone copy cur_wat_20m_20211126_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_wat_20m_20211126_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_05m/cur_hul_05m_20211203
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_05m/cur_hul_05m_20211203
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_05m_20211203.ply -SS RANDOM 50000000
mv cur_hul_05m_20211203_RANDOM_SUBSAMPLED.ply cur_hul_05m_20211203_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_05m_20211203_dec50M.ply -SS RANDOM 7000000
mv cur_hul_05m_20211203_dec50M_RANDOM_SUBSAMPLED.ply cur_hul_05m_20211203_dec7M.ply
rclone copy cur_hul_05m_20211203_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_hul_05m_20211203_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_10m/cur_hul_10m_20211203
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_10m/cur_hul_10m_20211203
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_10m_20211203.ply -SS RANDOM 50000000
mv cur_hul_10m_20211203_RANDOM_SUBSAMPLED.ply cur_hul_10m_20211203_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_10m_20211203_dec50M.ply -SS RANDOM 7000000
mv cur_hul_10m_20211203_dec50M_RANDOM_SUBSAMPLED.ply cur_hul_10m_20211203_dec7M.ply
rclone copy cur_hul_10m_20211203_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_hul_10m_20211203_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_20m/cur_hul_20m_20211203
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_20m/cur_hul_20m_20211203
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_20m_20211203.ply -SS RANDOM 50000000
mv cur_hul_20m_20211203_RANDOM_SUBSAMPLED.ply cur_hul_20m_20211203_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_20m_20211203_dec50M.ply -SS RANDOM 7000000
mv cur_hul_20m_20211203_dec50M_RANDOM_SUBSAMPLED.ply cur_hul_20m_20211203_dec7M.ply
rclone copy cur_hul_20m_20211203_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_hul_20m_20211203_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20211129
cd /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20211129
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_05m_20211129.ply -SS RANDOM 50000000
mv cur_est_05m_20211129_RANDOM_SUBSAMPLED.ply cur_est_05m_20211129_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_05m_20211129_dec50M.ply -SS RANDOM 7000000
mv cur_est_05m_20211129_dec50M_RANDOM_SUBSAMPLED.ply cur_est_05m_20211129_dec7M.ply
rclone copy cur_est_05m_20211129_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_05m_20211129_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20211129
cd /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20211129
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_10m_20211129.ply -SS RANDOM 50000000
mv cur_est_10m_20211129_RANDOM_SUBSAMPLED.ply cur_est_10m_20211129_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_10m_20211129_dec50M.ply -SS RANDOM 7000000
mv cur_est_10m_20211129_dec50M_RANDOM_SUBSAMPLED.ply cur_est_10m_20211129_dec7M.ply
rclone copy cur_est_10m_20211129_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_10m_20211129_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20211129
cd /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20211129
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_20m_20211129.ply -SS RANDOM 50000000
mv cur_est_20m_20211129_RANDOM_SUBSAMPLED.ply cur_est_20m_20211129_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_20m_20211129_dec50M.ply -SS RANDOM 7000000
mv cur_est_20m_20211129_dec50M_RANDOM_SUBSAMPLED.ply cur_est_20m_20211129_dec7M.ply
rclone copy cur_est_20m_20211129_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_20m_20211129_dec7M.ply orthos:/focal_plots/ply_dec7M
