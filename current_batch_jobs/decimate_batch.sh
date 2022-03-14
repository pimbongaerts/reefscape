# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20210219
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20210219
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_20m_20210219.ply -SS RANDOM 50000000
mv cur_kal_20m_20210219_RANDOM_SUBSAMPLED.ply cur_kal_20m_20210219_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_20m_20210219_dec50M.ply -SS RANDOM 7000000
mv cur_kal_20m_20210219_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_20m_20210219_dec7M.ply
rclone copy cur_kal_20m_20210219_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_20m_20210219_dec7M.ply orthos:/focal_plots/ply_dec7M
