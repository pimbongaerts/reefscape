# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_40m/cur_est_40m_20200219
cd /mnt/coral3d/focal_plots/cur_est/cur_est_40m/cur_est_40m_20200219
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_40m_20200219.ply -SS RANDOM 50000000
mv cur_est_40m_20200219_RANDOM_SUBSAMPLED.ply cur_est_40m_20200219_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_40m_20200219_dec50M.ply -SS RANDOM 7000000
mv cur_est_40m_20200219_dec50M_RANDOM_SUBSAMPLED.ply cur_est_40m_20200219_dec7M.ply
rclone copy cur_est_40m_20200219_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_40m_20200219_dec7M.ply orthos:/focal_plots/ply_dec7M
