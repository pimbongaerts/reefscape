# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20211202
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20211202
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_20m_20211202.ply -SS RANDOM 50000000
mv cur_dir_20m_20211202_RANDOM_SUBSAMPLED.ply cur_dir_20m_20211202_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_20m_20211202_dec50M.ply -SS RANDOM 7000000
mv cur_dir_20m_20211202_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_20m_20211202_dec7M.ply
rclone copy cur_dir_20m_20211202_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_20m_20211202_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20211128
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20211128
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_40m_20211128.ply -SS RANDOM 50000000
mv cur_dir_40m_20211128_RANDOM_SUBSAMPLED.ply cur_dir_40m_20211128_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_40m_20211128_dec50M.ply -SS RANDOM 7000000
mv cur_dir_40m_20211128_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_40m_20211128_dec7M.ply
rclone copy cur_dir_40m_20211128_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_40m_20211128_dec7M.ply orthos:/focal_plots/ply_dec7M
