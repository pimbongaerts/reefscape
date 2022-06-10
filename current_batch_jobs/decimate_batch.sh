# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20220513
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20220513
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_20m_20220513.ply -SS RANDOM 50000000
mv cur_kal_20m_20220513_RANDOM_SUBSAMPLED.ply cur_kal_20m_20220513_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_20m_20220513_dec50M.ply -SS RANDOM 7000000
mv cur_kal_20m_20220513_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_20m_20220513_dec7M.ply
rclone copy cur_kal_20m_20220513_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_20m_20220513_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20220513
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20220513
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_40m_20220513.ply -SS RANDOM 50000000
mv cur_kal_40m_20220513_RANDOM_SUBSAMPLED.ply cur_kal_40m_20220513_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_40m_20220513_dec50M.ply -SS RANDOM 7000000
mv cur_kal_40m_20220513_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_40m_20220513_dec7M.ply
rclone copy cur_kal_40m_20220513_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_40m_20220513_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20220513
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20220513
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_10m_20220513.ply -SS RANDOM 50000000
mv cur_kal_10m_20220513_RANDOM_SUBSAMPLED.ply cur_kal_10m_20220513_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_10m_20220513_dec50M.ply -SS RANDOM 7000000
mv cur_kal_10m_20220513_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_10m_20220513_dec7M.ply
rclone copy cur_kal_10m_20220513_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_10m_20220513_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20220513
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20220513
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_60m_20220513.ply -SS RANDOM 50000000
mv cur_kal_60m_20220513_RANDOM_SUBSAMPLED.ply cur_kal_60m_20220513_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_60m_20220513_dec50M.ply -SS RANDOM 7000000
mv cur_kal_60m_20220513_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_60m_20220513_dec7M.ply
rclone copy cur_kal_60m_20220513_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_60m_20220513_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20220515
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20220515
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_20m_20220515.ply -SS RANDOM 50000000
mv cur_sna_20m_20220515_RANDOM_SUBSAMPLED.ply cur_sna_20m_20220515_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_20m_20220515_dec50M.ply -SS RANDOM 7000000
mv cur_sna_20m_20220515_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_20m_20220515_dec7M.ply
rclone copy cur_sna_20m_20220515_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_20m_20220515_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20220515
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20220515
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_40m_20220515.ply -SS RANDOM 50000000
mv cur_sna_40m_20220515_RANDOM_SUBSAMPLED.ply cur_sna_40m_20220515_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_40m_20220515_dec50M.ply -SS RANDOM 7000000
mv cur_sna_40m_20220515_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_40m_20220515_dec7M.ply
rclone copy cur_sna_40m_20220515_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_40m_20220515_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20220515
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20220515
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_60m_20220515.ply -SS RANDOM 50000000
mv cur_sna_60m_20220515_RANDOM_SUBSAMPLED.ply cur_sna_60m_20220515_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_60m_20220515_dec50M.ply -SS RANDOM 7000000
mv cur_sna_60m_20220515_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_60m_20220515_dec7M.ply
rclone copy cur_sna_60m_20220515_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_60m_20220515_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20220512
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20220512
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_10m_20220512.ply -SS RANDOM 50000000
mv cur_sea_10m_20220512_RANDOM_SUBSAMPLED.ply cur_sea_10m_20220512_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_10m_20220512_dec50M.ply -SS RANDOM 7000000
mv cur_sea_10m_20220512_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_10m_20220512_dec7M.ply
rclone copy cur_sea_10m_20220512_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_10m_20220512_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_20m/cur_sea_20m_20220512
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_20m/cur_sea_20m_20220512
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_20m_20220512.ply -SS RANDOM 50000000
mv cur_sea_20m_20220512_RANDOM_SUBSAMPLED.ply cur_sea_20m_20220512_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_20m_20220512_dec50M.ply -SS RANDOM 7000000
mv cur_sea_20m_20220512_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_20m_20220512_dec7M.ply
rclone copy cur_sea_20m_20220512_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_20m_20220512_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20220512
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20220512
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_40m_20220512.ply -SS RANDOM 50000000
mv cur_sea_40m_20220512_RANDOM_SUBSAMPLED.ply cur_sea_40m_20220512_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_40m_20220512_dec50M.ply -SS RANDOM 7000000
mv cur_sea_40m_20220512_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_40m_20220512_dec7M.ply
rclone copy cur_sea_40m_20220512_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_40m_20220512_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20220512
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20220512
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_60m_20220512.ply -SS RANDOM 50000000
mv cur_sea_60m_20220512_RANDOM_SUBSAMPLED.ply cur_sea_60m_20220512_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_60m_20220512_dec50M.ply -SS RANDOM 7000000
mv cur_sea_60m_20220512_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_60m_20220512_dec7M.ply
rclone copy cur_sea_60m_20220512_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_60m_20220512_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20220517
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20220517
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_10m_20220517.ply -SS RANDOM 50000000
mv cur_dir_10m_20220517_RANDOM_SUBSAMPLED.ply cur_dir_10m_20220517_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_10m_20220517_dec50M.ply -SS RANDOM 7000000
mv cur_dir_10m_20220517_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_10m_20220517_dec7M.ply
rclone copy cur_dir_10m_20220517_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_10m_20220517_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20220517
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20220517
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_20m_20220517.ply -SS RANDOM 50000000
mv cur_dir_20m_20220517_RANDOM_SUBSAMPLED.ply cur_dir_20m_20220517_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_20m_20220517_dec50M.ply -SS RANDOM 7000000
mv cur_dir_20m_20220517_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_20m_20220517_dec7M.ply
rclone copy cur_dir_20m_20220517_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_20m_20220517_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20220517
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20220517
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_40m_20220517.ply -SS RANDOM 50000000
mv cur_dir_40m_20220517_RANDOM_SUBSAMPLED.ply cur_dir_40m_20220517_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_40m_20220517_dec50M.ply -SS RANDOM 7000000
mv cur_dir_40m_20220517_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_40m_20220517_dec7M.ply
rclone copy cur_dir_40m_20220517_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_40m_20220517_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_60m/cur_dir_60m_20220517
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_60m/cur_dir_60m_20220517
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_60m_20220517.ply -SS RANDOM 50000000
mv cur_dir_60m_20220517_RANDOM_SUBSAMPLED.ply cur_dir_60m_20220517_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_60m_20220517_dec50M.ply -SS RANDOM 7000000
mv cur_dir_60m_20220517_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_60m_20220517_dec7M.ply
rclone copy cur_dir_60m_20220517_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_60m_20220517_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_60m/cur_wat_60m_20220516
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_60m/cur_wat_60m_20220516
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_60m_20220516.ply -SS RANDOM 50000000
mv cur_wat_60m_20220516_RANDOM_SUBSAMPLED.ply cur_wat_60m_20220516_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_60m_20220516_dec50M.ply -SS RANDOM 7000000
mv cur_wat_60m_20220516_dec50M_RANDOM_SUBSAMPLED.ply cur_wat_60m_20220516_dec7M.ply
rclone copy cur_wat_60m_20220516_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_wat_60m_20220516_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_10m/cur_hul_10m_20220519
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_10m/cur_hul_10m_20220519
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_10m_20220519.ply -SS RANDOM 50000000
mv cur_hul_10m_20220519_RANDOM_SUBSAMPLED.ply cur_hul_10m_20220519_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_10m_20220519_dec50M.ply -SS RANDOM 7000000
mv cur_hul_10m_20220519_dec50M_RANDOM_SUBSAMPLED.ply cur_hul_10m_20220519_dec7M.ply
rclone copy cur_hul_10m_20220519_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_hul_10m_20220519_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_20m/cur_hul_20m_20220519
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_20m/cur_hul_20m_20220519
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_20m_20220519.ply -SS RANDOM 50000000
mv cur_hul_20m_20220519_RANDOM_SUBSAMPLED.ply cur_hul_20m_20220519_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_20m_20220519_dec50M.ply -SS RANDOM 7000000
mv cur_hul_20m_20220519_dec50M_RANDOM_SUBSAMPLED.ply cur_hul_20m_20220519_dec7M.ply
rclone copy cur_hul_20m_20220519_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_hul_20m_20220519_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_40m/cur_hul_40m_20220519
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_40m/cur_hul_40m_20220519
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_40m_20220519.ply -SS RANDOM 50000000
mv cur_hul_40m_20220519_RANDOM_SUBSAMPLED.ply cur_hul_40m_20220519_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_40m_20220519_dec50M.ply -SS RANDOM 7000000
mv cur_hul_40m_20220519_dec50M_RANDOM_SUBSAMPLED.ply cur_hul_40m_20220519_dec7M.ply
rclone copy cur_hul_40m_20220519_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_hul_40m_20220519_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20220511
cd /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20220511
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_10m_20220511.ply -SS RANDOM 50000000
mv cur_est_10m_20220511_RANDOM_SUBSAMPLED.ply cur_est_10m_20220511_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_10m_20220511_dec50M.ply -SS RANDOM 7000000
mv cur_est_10m_20220511_dec50M_RANDOM_SUBSAMPLED.ply cur_est_10m_20220511_dec7M.ply
rclone copy cur_est_10m_20220511_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_10m_20220511_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20220511
cd /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20220511
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_20m_20220511.ply -SS RANDOM 50000000
mv cur_est_20m_20220511_RANDOM_SUBSAMPLED.ply cur_est_20m_20220511_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_20m_20220511_dec50M.ply -SS RANDOM 7000000
mv cur_est_20m_20220511_dec50M_RANDOM_SUBSAMPLED.ply cur_est_20m_20220511_dec7M.ply
rclone copy cur_est_20m_20220511_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_20m_20220511_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_40m/cur_est_40m_20220511
cd /mnt/coral3d/focal_plots/cur_est/cur_est_40m/cur_est_40m_20220511
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_40m_20220511.ply -SS RANDOM 50000000
mv cur_est_40m_20220511_RANDOM_SUBSAMPLED.ply cur_est_40m_20220511_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_40m_20220511_dec50M.ply -SS RANDOM 7000000
mv cur_est_40m_20220511_dec50M_RANDOM_SUBSAMPLED.ply cur_est_40m_20220511_dec7M.ply
rclone copy cur_est_40m_20220511_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_40m_20220511_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_60m/cur_est_60m_20220511
cd /mnt/coral3d/focal_plots/cur_est/cur_est_60m/cur_est_60m_20220511
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_60m_20220511.ply -SS RANDOM 50000000
mv cur_est_60m_20220511_RANDOM_SUBSAMPLED.ply cur_est_60m_20220511_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_60m_20220511_dec50M.ply -SS RANDOM 7000000
mv cur_est_60m_20220511_dec50M_RANDOM_SUBSAMPLED.ply cur_est_60m_20220511_dec7M.ply
rclone copy cur_est_60m_20220511_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_60m_20220511_dec7M.ply orthos:/focal_plots/ply_dec7M
