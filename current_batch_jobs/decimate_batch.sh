hostname=$(hostname)
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20221206
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20221206
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_kal_20m_20221206"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_20m_20221206.ply -SS RANDOM 50000000
mv cur_kal_20m_20221206_RANDOM_SUBSAMPLED.ply cur_kal_20m_20221206_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_20m_20221206_dec50M.ply -SS RANDOM 7000000
mv cur_kal_20m_20221206_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_20m_20221206_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_kal_20m_20221206"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_kal_20m_20221206"
rclone copy cur_kal_20m_20221206_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_20m_20221206_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20230423
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20230423
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_kal_20m_20230423"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_20m_20230423.ply -SS RANDOM 50000000
mv cur_kal_20m_20230423_RANDOM_SUBSAMPLED.ply cur_kal_20m_20230423_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_20m_20230423_dec50M.ply -SS RANDOM 7000000
mv cur_kal_20m_20230423_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_20m_20230423_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_kal_20m_20230423"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_kal_20m_20230423"
rclone copy cur_kal_20m_20230423_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_20m_20230423_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20221217
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20221217
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_kal_40m_20221217"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_40m_20221217.ply -SS RANDOM 50000000
mv cur_kal_40m_20221217_RANDOM_SUBSAMPLED.ply cur_kal_40m_20221217_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_40m_20221217_dec50M.ply -SS RANDOM 7000000
mv cur_kal_40m_20221217_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_40m_20221217_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_kal_40m_20221217"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_kal_40m_20221217"
rclone copy cur_kal_40m_20221217_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_40m_20221217_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20230423
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20230423
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_kal_40m_20230423"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_40m_20230423.ply -SS RANDOM 50000000
mv cur_kal_40m_20230423_RANDOM_SUBSAMPLED.ply cur_kal_40m_20230423_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_40m_20230423_dec50M.ply -SS RANDOM 7000000
mv cur_kal_40m_20230423_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_40m_20230423_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_kal_40m_20230423"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_kal_40m_20230423"
rclone copy cur_kal_40m_20230423_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_40m_20230423_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20221206
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20221206
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_kal_10m_20221206"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_10m_20221206.ply -SS RANDOM 50000000
mv cur_kal_10m_20221206_RANDOM_SUBSAMPLED.ply cur_kal_10m_20221206_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_10m_20221206_dec50M.ply -SS RANDOM 7000000
mv cur_kal_10m_20221206_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_10m_20221206_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_kal_10m_20221206"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_kal_10m_20221206"
rclone copy cur_kal_10m_20221206_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_10m_20221206_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20230423
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20230423
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_kal_10m_20230423"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_10m_20230423.ply -SS RANDOM 50000000
mv cur_kal_10m_20230423_RANDOM_SUBSAMPLED.ply cur_kal_10m_20230423_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_10m_20230423_dec50M.ply -SS RANDOM 7000000
mv cur_kal_10m_20230423_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_10m_20230423_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_kal_10m_20230423"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_kal_10m_20230423"
rclone copy cur_kal_10m_20230423_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_10m_20230423_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20211130
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20211130
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_kal_05m_20211130"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_05m_20211130.ply -SS RANDOM 50000000
mv cur_kal_05m_20211130_RANDOM_SUBSAMPLED.ply cur_kal_05m_20211130_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_05m_20211130_dec50M.ply -SS RANDOM 7000000
mv cur_kal_05m_20211130_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_05m_20211130_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_kal_05m_20211130"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_kal_05m_20211130"
rclone copy cur_kal_05m_20211130_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_05m_20211130_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20220513
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20220513
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_kal_05m_20220513"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_05m_20220513.ply -SS RANDOM 50000000
mv cur_kal_05m_20220513_RANDOM_SUBSAMPLED.ply cur_kal_05m_20220513_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_05m_20220513_dec50M.ply -SS RANDOM 7000000
mv cur_kal_05m_20220513_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_05m_20220513_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_kal_05m_20220513"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_kal_05m_20220513"
rclone copy cur_kal_05m_20220513_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_05m_20220513_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20221206
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20221206
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_kal_05m_20221206"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_05m_20221206.ply -SS RANDOM 50000000
mv cur_kal_05m_20221206_RANDOM_SUBSAMPLED.ply cur_kal_05m_20221206_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_05m_20221206_dec50M.ply -SS RANDOM 7000000
mv cur_kal_05m_20221206_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_05m_20221206_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_kal_05m_20221206"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_kal_05m_20221206"
rclone copy cur_kal_05m_20221206_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_05m_20221206_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20221217
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20221217
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_kal_60m_20221217"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_60m_20221217.ply -SS RANDOM 50000000
mv cur_kal_60m_20221217_RANDOM_SUBSAMPLED.ply cur_kal_60m_20221217_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_60m_20221217_dec50M.ply -SS RANDOM 7000000
mv cur_kal_60m_20221217_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_60m_20221217_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_kal_60m_20221217"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_kal_60m_20221217"
rclone copy cur_kal_60m_20221217_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_60m_20221217_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20230423
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20230423
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_kal_60m_20230423"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_60m_20230423.ply -SS RANDOM 50000000
mv cur_kal_60m_20230423_RANDOM_SUBSAMPLED.ply cur_kal_60m_20230423_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_kal_60m_20230423_dec50M.ply -SS RANDOM 7000000
mv cur_kal_60m_20230423_dec50M_RANDOM_SUBSAMPLED.ply cur_kal_60m_20230423_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_kal_60m_20230423"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_kal_60m_20230423"
rclone copy cur_kal_60m_20230423_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_kal_60m_20230423_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20221205
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20221205
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_sna_20m_20221205"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_20m_20221205.ply -SS RANDOM 50000000
mv cur_sna_20m_20221205_RANDOM_SUBSAMPLED.ply cur_sna_20m_20221205_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_20m_20221205_dec50M.ply -SS RANDOM 7000000
mv cur_sna_20m_20221205_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_20m_20221205_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_sna_20m_20221205"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_sna_20m_20221205"
rclone copy cur_sna_20m_20221205_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_20m_20221205_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20230414
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20230414
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_sna_20m_20230414"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_20m_20230414.ply -SS RANDOM 50000000
mv cur_sna_20m_20230414_RANDOM_SUBSAMPLED.ply cur_sna_20m_20230414_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_20m_20230414_dec50M.ply -SS RANDOM 7000000
mv cur_sna_20m_20230414_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_20m_20230414_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_sna_20m_20230414"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_sna_20m_20230414"
rclone copy cur_sna_20m_20230414_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_20m_20230414_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20220515
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20220515
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_sna_10m_20220515"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_10m_20220515.ply -SS RANDOM 50000000
mv cur_sna_10m_20220515_RANDOM_SUBSAMPLED.ply cur_sna_10m_20220515_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_10m_20220515_dec50M.ply -SS RANDOM 7000000
mv cur_sna_10m_20220515_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_10m_20220515_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_sna_10m_20220515"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_sna_10m_20220515"
rclone copy cur_sna_10m_20220515_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_10m_20220515_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20230414
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20230414
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_sna_10m_20230414"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_10m_20230414.ply -SS RANDOM 50000000
mv cur_sna_10m_20230414_RANDOM_SUBSAMPLED.ply cur_sna_10m_20230414_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_10m_20230414_dec50M.ply -SS RANDOM 7000000
mv cur_sna_10m_20230414_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_10m_20230414_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_sna_10m_20230414"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_sna_10m_20230414"
rclone copy cur_sna_10m_20230414_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_10m_20230414_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20220515
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20220515
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_sna_05m_20220515"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_05m_20220515.ply -SS RANDOM 50000000
mv cur_sna_05m_20220515_RANDOM_SUBSAMPLED.ply cur_sna_05m_20220515_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_05m_20220515_dec50M.ply -SS RANDOM 7000000
mv cur_sna_05m_20220515_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_05m_20220515_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_sna_05m_20220515"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_sna_05m_20220515"
rclone copy cur_sna_05m_20220515_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_05m_20220515_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20221205
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20221205
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_sna_05m_20221205"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_05m_20221205.ply -SS RANDOM 50000000
mv cur_sna_05m_20221205_RANDOM_SUBSAMPLED.ply cur_sna_05m_20221205_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_05m_20221205_dec50M.ply -SS RANDOM 7000000
mv cur_sna_05m_20221205_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_05m_20221205_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_sna_05m_20221205"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_sna_05m_20221205"
rclone copy cur_sna_05m_20221205_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_05m_20221205_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20230414
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20230414
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_sna_05m_20230414"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_05m_20230414.ply -SS RANDOM 50000000
mv cur_sna_05m_20230414_RANDOM_SUBSAMPLED.ply cur_sna_05m_20230414_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_05m_20230414_dec50M.ply -SS RANDOM 7000000
mv cur_sna_05m_20230414_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_05m_20230414_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_sna_05m_20230414"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_sna_05m_20230414"
rclone copy cur_sna_05m_20230414_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_05m_20230414_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20221223
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20221223
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_sna_40m_20221223"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_40m_20221223.ply -SS RANDOM 50000000
mv cur_sna_40m_20221223_RANDOM_SUBSAMPLED.ply cur_sna_40m_20221223_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_40m_20221223_dec50M.ply -SS RANDOM 7000000
mv cur_sna_40m_20221223_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_40m_20221223_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_sna_40m_20221223"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_sna_40m_20221223"
rclone copy cur_sna_40m_20221223_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_40m_20221223_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20230414
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20230414
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_sna_40m_20230414"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_40m_20230414.ply -SS RANDOM 50000000
mv cur_sna_40m_20230414_RANDOM_SUBSAMPLED.ply cur_sna_40m_20230414_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_40m_20230414_dec50M.ply -SS RANDOM 7000000
mv cur_sna_40m_20230414_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_40m_20230414_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_sna_40m_20230414"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_sna_40m_20230414"
rclone copy cur_sna_40m_20230414_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_40m_20230414_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20221223
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20221223
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_sna_60m_20221223"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_60m_20221223.ply -SS RANDOM 50000000
mv cur_sna_60m_20221223_RANDOM_SUBSAMPLED.ply cur_sna_60m_20221223_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_60m_20221223_dec50M.ply -SS RANDOM 7000000
mv cur_sna_60m_20221223_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_60m_20221223_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_sna_60m_20221223"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_sna_60m_20221223"
rclone copy cur_sna_60m_20221223_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_60m_20221223_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20230414
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20230414
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_sna_60m_20230414"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_60m_20230414.ply -SS RANDOM 50000000
mv cur_sna_60m_20230414_RANDOM_SUBSAMPLED.ply cur_sna_60m_20230414_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_60m_20230414_dec50M.ply -SS RANDOM 7000000
mv cur_sna_60m_20230414_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_60m_20230414_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_sna_60m_20230414"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_sna_60m_20230414"
rclone copy cur_sna_60m_20230414_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_60m_20230414_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20221125
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20221125
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_sea_10m_20221125"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_10m_20221125.ply -SS RANDOM 50000000
mv cur_sea_10m_20221125_RANDOM_SUBSAMPLED.ply cur_sea_10m_20221125_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_10m_20221125_dec50M.ply -SS RANDOM 7000000
mv cur_sea_10m_20221125_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_10m_20221125_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_sea_10m_20221125"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_sea_10m_20221125"
rclone copy cur_sea_10m_20221125_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_10m_20221125_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20230419
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20230419
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_sea_10m_20230419"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_10m_20230419.ply -SS RANDOM 50000000
mv cur_sea_10m_20230419_RANDOM_SUBSAMPLED.ply cur_sea_10m_20230419_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_10m_20230419_dec50M.ply -SS RANDOM 7000000
mv cur_sea_10m_20230419_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_10m_20230419_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_sea_10m_20230419"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_sea_10m_20230419"
rclone copy cur_sea_10m_20230419_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_10m_20230419_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_20m/cur_sea_20m_20221125
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_20m/cur_sea_20m_20221125
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_sea_20m_20221125"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_20m_20221125.ply -SS RANDOM 50000000
mv cur_sea_20m_20221125_RANDOM_SUBSAMPLED.ply cur_sea_20m_20221125_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_20m_20221125_dec50M.ply -SS RANDOM 7000000
mv cur_sea_20m_20221125_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_20m_20221125_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_sea_20m_20221125"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_sea_20m_20221125"
rclone copy cur_sea_20m_20221125_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_20m_20221125_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_20m/cur_sea_20m_20230419
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_20m/cur_sea_20m_20230419
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_sea_20m_20230419"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_20m_20230419.ply -SS RANDOM 50000000
mv cur_sea_20m_20230419_RANDOM_SUBSAMPLED.ply cur_sea_20m_20230419_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_20m_20230419_dec50M.ply -SS RANDOM 7000000
mv cur_sea_20m_20230419_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_20m_20230419_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_sea_20m_20230419"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_sea_20m_20230419"
rclone copy cur_sea_20m_20230419_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_20m_20230419_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20221202
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20221202
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_sea_40m_20221202"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_40m_20221202.ply -SS RANDOM 50000000
mv cur_sea_40m_20221202_RANDOM_SUBSAMPLED.ply cur_sea_40m_20221202_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_40m_20221202_dec50M.ply -SS RANDOM 7000000
mv cur_sea_40m_20221202_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_40m_20221202_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_sea_40m_20221202"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_sea_40m_20221202"
rclone copy cur_sea_40m_20221202_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_40m_20221202_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20230419
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20230419
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_sea_40m_20230419"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_40m_20230419.ply -SS RANDOM 50000000
mv cur_sea_40m_20230419_RANDOM_SUBSAMPLED.ply cur_sea_40m_20230419_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_40m_20230419_dec50M.ply -SS RANDOM 7000000
mv cur_sea_40m_20230419_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_40m_20230419_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_sea_40m_20230419"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_sea_40m_20230419"
rclone copy cur_sea_40m_20230419_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_40m_20230419_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20221202
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20221202
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_sea_60m_20221202"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_60m_20221202.ply -SS RANDOM 50000000
mv cur_sea_60m_20221202_RANDOM_SUBSAMPLED.ply cur_sea_60m_20221202_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_60m_20221202_dec50M.ply -SS RANDOM 7000000
mv cur_sea_60m_20221202_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_60m_20221202_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_sea_60m_20221202"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_sea_60m_20221202"
rclone copy cur_sea_60m_20221202_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_60m_20221202_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20230419
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20230419
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_sea_60m_20230419"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_60m_20230419.ply -SS RANDOM 50000000
mv cur_sea_60m_20230419_RANDOM_SUBSAMPLED.ply cur_sea_60m_20230419_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sea_60m_20230419_dec50M.ply -SS RANDOM 7000000
mv cur_sea_60m_20230419_dec50M_RANDOM_SUBSAMPLED.ply cur_sea_60m_20230419_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_sea_60m_20230419"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_sea_60m_20230419"
rclone copy cur_sea_60m_20230419_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sea_60m_20230419_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_05m/cur_dir_05m_20221129
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_05m/cur_dir_05m_20221129
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_dir_05m_20221129"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_05m_20221129.ply -SS RANDOM 50000000
mv cur_dir_05m_20221129_RANDOM_SUBSAMPLED.ply cur_dir_05m_20221129_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_05m_20221129_dec50M.ply -SS RANDOM 7000000
mv cur_dir_05m_20221129_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_05m_20221129_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_dir_05m_20221129"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_dir_05m_20221129"
rclone copy cur_dir_05m_20221129_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_05m_20221129_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20221129
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20221129
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_dir_10m_20221129"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_10m_20221129.ply -SS RANDOM 50000000
mv cur_dir_10m_20221129_RANDOM_SUBSAMPLED.ply cur_dir_10m_20221129_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_10m_20221129_dec50M.ply -SS RANDOM 7000000
mv cur_dir_10m_20221129_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_10m_20221129_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_dir_10m_20221129"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_dir_10m_20221129"
rclone copy cur_dir_10m_20221129_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_10m_20221129_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20230416
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20230416
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_dir_10m_20230416"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_10m_20230416.ply -SS RANDOM 50000000
mv cur_dir_10m_20230416_RANDOM_SUBSAMPLED.ply cur_dir_10m_20230416_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_10m_20230416_dec50M.ply -SS RANDOM 7000000
mv cur_dir_10m_20230416_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_10m_20230416_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_dir_10m_20230416"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_dir_10m_20230416"
rclone copy cur_dir_10m_20230416_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_10m_20230416_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20221129
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20221129
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_dir_20m_20221129"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_20m_20221129.ply -SS RANDOM 50000000
mv cur_dir_20m_20221129_RANDOM_SUBSAMPLED.ply cur_dir_20m_20221129_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_20m_20221129_dec50M.ply -SS RANDOM 7000000
mv cur_dir_20m_20221129_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_20m_20221129_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_dir_20m_20221129"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_dir_20m_20221129"
rclone copy cur_dir_20m_20221129_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_20m_20221129_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20230416
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20230416
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_dir_20m_20230416"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_20m_20230416.ply -SS RANDOM 50000000
mv cur_dir_20m_20230416_RANDOM_SUBSAMPLED.ply cur_dir_20m_20230416_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_20m_20230416_dec50M.ply -SS RANDOM 7000000
mv cur_dir_20m_20230416_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_20m_20230416_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_dir_20m_20230416"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_dir_20m_20230416"
rclone copy cur_dir_20m_20230416_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_20m_20230416_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20221203
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20221203
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_dir_40m_20221203"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_40m_20221203.ply -SS RANDOM 50000000
mv cur_dir_40m_20221203_RANDOM_SUBSAMPLED.ply cur_dir_40m_20221203_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_40m_20221203_dec50M.ply -SS RANDOM 7000000
mv cur_dir_40m_20221203_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_40m_20221203_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_dir_40m_20221203"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_dir_40m_20221203"
rclone copy cur_dir_40m_20221203_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_40m_20221203_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20230416
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20230416
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_dir_40m_20230416"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_40m_20230416.ply -SS RANDOM 50000000
mv cur_dir_40m_20230416_RANDOM_SUBSAMPLED.ply cur_dir_40m_20230416_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_40m_20230416_dec50M.ply -SS RANDOM 7000000
mv cur_dir_40m_20230416_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_40m_20230416_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_dir_40m_20230416"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_dir_40m_20230416"
rclone copy cur_dir_40m_20230416_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_40m_20230416_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_60m/cur_dir_60m_20221203
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_60m/cur_dir_60m_20221203
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_dir_60m_20221203"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_60m_20221203.ply -SS RANDOM 50000000
mv cur_dir_60m_20221203_RANDOM_SUBSAMPLED.ply cur_dir_60m_20221203_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_60m_20221203_dec50M.ply -SS RANDOM 7000000
mv cur_dir_60m_20221203_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_60m_20221203_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_dir_60m_20221203"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_dir_60m_20221203"
rclone copy cur_dir_60m_20221203_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_60m_20221203_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_60m/cur_dir_60m_20230416
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_60m/cur_dir_60m_20230416
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_dir_60m_20230416"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_60m_20230416.ply -SS RANDOM 50000000
mv cur_dir_60m_20230416_RANDOM_SUBSAMPLED.ply cur_dir_60m_20230416_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_dir_60m_20230416_dec50M.ply -SS RANDOM 7000000
mv cur_dir_60m_20230416_dec50M_RANDOM_SUBSAMPLED.ply cur_dir_60m_20230416_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_dir_60m_20230416"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_dir_60m_20230416"
rclone copy cur_dir_60m_20230416_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_dir_60m_20230416_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_05m/cur_wat_05m_20221128
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_05m/cur_wat_05m_20221128
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_wat_05m_20221128"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_05m_20221128.ply -SS RANDOM 50000000
mv cur_wat_05m_20221128_RANDOM_SUBSAMPLED.ply cur_wat_05m_20221128_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_05m_20221128_dec50M.ply -SS RANDOM 7000000
mv cur_wat_05m_20221128_dec50M_RANDOM_SUBSAMPLED.ply cur_wat_05m_20221128_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_wat_05m_20221128"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_wat_05m_20221128"
rclone copy cur_wat_05m_20221128_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_wat_05m_20221128_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20221128
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20221128
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_wat_10m_20221128"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_10m_20221128.ply -SS RANDOM 50000000
mv cur_wat_10m_20221128_RANDOM_SUBSAMPLED.ply cur_wat_10m_20221128_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_10m_20221128_dec50M.ply -SS RANDOM 7000000
mv cur_wat_10m_20221128_dec50M_RANDOM_SUBSAMPLED.ply cur_wat_10m_20221128_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_wat_10m_20221128"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_wat_10m_20221128"
rclone copy cur_wat_10m_20221128_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_wat_10m_20221128_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20230415
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20230415
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_wat_10m_20230415"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_10m_20230415.ply -SS RANDOM 50000000
mv cur_wat_10m_20230415_RANDOM_SUBSAMPLED.ply cur_wat_10m_20230415_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_10m_20230415_dec50M.ply -SS RANDOM 7000000
mv cur_wat_10m_20230415_dec50M_RANDOM_SUBSAMPLED.ply cur_wat_10m_20230415_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_wat_10m_20230415"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_wat_10m_20230415"
rclone copy cur_wat_10m_20230415_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_wat_10m_20230415_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_20m/cur_wat_20m_20221128
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_20m/cur_wat_20m_20221128
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_wat_20m_20221128"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_20m_20221128.ply -SS RANDOM 50000000
mv cur_wat_20m_20221128_RANDOM_SUBSAMPLED.ply cur_wat_20m_20221128_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_20m_20221128_dec50M.ply -SS RANDOM 7000000
mv cur_wat_20m_20221128_dec50M_RANDOM_SUBSAMPLED.ply cur_wat_20m_20221128_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_wat_20m_20221128"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_wat_20m_20221128"
rclone copy cur_wat_20m_20221128_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_wat_20m_20221128_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_20m/cur_wat_20m_20230415
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_20m/cur_wat_20m_20230415
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_wat_20m_20230415"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_20m_20230415.ply -SS RANDOM 50000000
mv cur_wat_20m_20230415_RANDOM_SUBSAMPLED.ply cur_wat_20m_20230415_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_20m_20230415_dec50M.ply -SS RANDOM 7000000
mv cur_wat_20m_20230415_dec50M_RANDOM_SUBSAMPLED.ply cur_wat_20m_20230415_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_wat_20m_20230415"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_wat_20m_20230415"
rclone copy cur_wat_20m_20230415_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_wat_20m_20230415_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_40m/cur_wat_40m_20230415
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_40m/cur_wat_40m_20230415
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_wat_40m_20230415"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_40m_20230415.ply -SS RANDOM 50000000
mv cur_wat_40m_20230415_RANDOM_SUBSAMPLED.ply cur_wat_40m_20230415_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_40m_20230415_dec50M.ply -SS RANDOM 7000000
mv cur_wat_40m_20230415_dec50M_RANDOM_SUBSAMPLED.ply cur_wat_40m_20230415_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_wat_40m_20230415"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_wat_40m_20230415"
rclone copy cur_wat_40m_20230415_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_wat_40m_20230415_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_60m/cur_wat_60m_20230415
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_60m/cur_wat_60m_20230415
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_wat_60m_20230415"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_60m_20230415.ply -SS RANDOM 50000000
mv cur_wat_60m_20230415_RANDOM_SUBSAMPLED.ply cur_wat_60m_20230415_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_wat_60m_20230415_dec50M.ply -SS RANDOM 7000000
mv cur_wat_60m_20230415_dec50M_RANDOM_SUBSAMPLED.ply cur_wat_60m_20230415_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_wat_60m_20230415"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_wat_60m_20230415"
rclone copy cur_wat_60m_20230415_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_wat_60m_20230415_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_05m/cur_hul_05m_20221208
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_05m/cur_hul_05m_20221208
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_hul_05m_20221208"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_05m_20221208.ply -SS RANDOM 50000000
mv cur_hul_05m_20221208_RANDOM_SUBSAMPLED.ply cur_hul_05m_20221208_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_05m_20221208_dec50M.ply -SS RANDOM 7000000
mv cur_hul_05m_20221208_dec50M_RANDOM_SUBSAMPLED.ply cur_hul_05m_20221208_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_hul_05m_20221208"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_hul_05m_20221208"
rclone copy cur_hul_05m_20221208_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_hul_05m_20221208_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_10m/cur_hul_10m_20221208
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_10m/cur_hul_10m_20221208
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_hul_10m_20221208"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_10m_20221208.ply -SS RANDOM 50000000
mv cur_hul_10m_20221208_RANDOM_SUBSAMPLED.ply cur_hul_10m_20221208_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_10m_20221208_dec50M.ply -SS RANDOM 7000000
mv cur_hul_10m_20221208_dec50M_RANDOM_SUBSAMPLED.ply cur_hul_10m_20221208_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_hul_10m_20221208"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_hul_10m_20221208"
rclone copy cur_hul_10m_20221208_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_hul_10m_20221208_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_10m/cur_hul_10m_20230422
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_10m/cur_hul_10m_20230422
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_hul_10m_20230422"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_10m_20230422.ply -SS RANDOM 50000000
mv cur_hul_10m_20230422_RANDOM_SUBSAMPLED.ply cur_hul_10m_20230422_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_10m_20230422_dec50M.ply -SS RANDOM 7000000
mv cur_hul_10m_20230422_dec50M_RANDOM_SUBSAMPLED.ply cur_hul_10m_20230422_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_hul_10m_20230422"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_hul_10m_20230422"
rclone copy cur_hul_10m_20230422_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_hul_10m_20230422_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_20m/cur_hul_20m_20221208
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_20m/cur_hul_20m_20221208
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_hul_20m_20221208"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_20m_20221208.ply -SS RANDOM 50000000
mv cur_hul_20m_20221208_RANDOM_SUBSAMPLED.ply cur_hul_20m_20221208_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_20m_20221208_dec50M.ply -SS RANDOM 7000000
mv cur_hul_20m_20221208_dec50M_RANDOM_SUBSAMPLED.ply cur_hul_20m_20221208_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_hul_20m_20221208"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_hul_20m_20221208"
rclone copy cur_hul_20m_20221208_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_hul_20m_20221208_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_20m/cur_hul_20m_20230422
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_20m/cur_hul_20m_20230422
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_hul_20m_20230422"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_20m_20230422.ply -SS RANDOM 50000000
mv cur_hul_20m_20230422_RANDOM_SUBSAMPLED.ply cur_hul_20m_20230422_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_20m_20230422_dec50M.ply -SS RANDOM 7000000
mv cur_hul_20m_20230422_dec50M_RANDOM_SUBSAMPLED.ply cur_hul_20m_20230422_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_hul_20m_20230422"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_hul_20m_20230422"
rclone copy cur_hul_20m_20230422_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_hul_20m_20230422_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_40m/cur_hul_40m_20230422
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_40m/cur_hul_40m_20230422
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_hul_40m_20230422"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_40m_20230422.ply -SS RANDOM 50000000
mv cur_hul_40m_20230422_RANDOM_SUBSAMPLED.ply cur_hul_40m_20230422_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_40m_20230422_dec50M.ply -SS RANDOM 7000000
mv cur_hul_40m_20230422_dec50M_RANDOM_SUBSAMPLED.ply cur_hul_40m_20230422_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_hul_40m_20230422"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_hul_40m_20230422"
rclone copy cur_hul_40m_20230422_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_hul_40m_20230422_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_60m/cur_hul_60m_20230422
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_60m/cur_hul_60m_20230422
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_hul_60m_20230422"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_60m_20230422.ply -SS RANDOM 50000000
mv cur_hul_60m_20230422_RANDOM_SUBSAMPLED.ply cur_hul_60m_20230422_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_hul_60m_20230422_dec50M.ply -SS RANDOM 7000000
mv cur_hul_60m_20230422_dec50M_RANDOM_SUBSAMPLED.ply cur_hul_60m_20230422_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_hul_60m_20230422"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_hul_60m_20230422"
rclone copy cur_hul_60m_20230422_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_hul_60m_20230422_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20221201
cd /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20221201
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_est_05m_20221201"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_05m_20221201.ply -SS RANDOM 50000000
mv cur_est_05m_20221201_RANDOM_SUBSAMPLED.ply cur_est_05m_20221201_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_05m_20221201_dec50M.ply -SS RANDOM 7000000
mv cur_est_05m_20221201_dec50M_RANDOM_SUBSAMPLED.ply cur_est_05m_20221201_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_est_05m_20221201"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_est_05m_20221201"
rclone copy cur_est_05m_20221201_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_05m_20221201_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20230420
cd /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20230420
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_est_05m_20230420"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_05m_20230420.ply -SS RANDOM 50000000
mv cur_est_05m_20230420_RANDOM_SUBSAMPLED.ply cur_est_05m_20230420_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_05m_20230420_dec50M.ply -SS RANDOM 7000000
mv cur_est_05m_20230420_dec50M_RANDOM_SUBSAMPLED.ply cur_est_05m_20230420_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_est_05m_20230420"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_est_05m_20230420"
rclone copy cur_est_05m_20230420_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_05m_20230420_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20201127
cd /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20201127
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_est_10m_20201127"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_10m_20201127.ply -SS RANDOM 50000000
mv cur_est_10m_20201127_RANDOM_SUBSAMPLED.ply cur_est_10m_20201127_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_10m_20201127_dec50M.ply -SS RANDOM 7000000
mv cur_est_10m_20201127_dec50M_RANDOM_SUBSAMPLED.ply cur_est_10m_20201127_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_est_10m_20201127"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_est_10m_20201127"
rclone copy cur_est_10m_20201127_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_10m_20201127_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20221201
cd /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20221201
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_est_10m_20221201"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_10m_20221201.ply -SS RANDOM 50000000
mv cur_est_10m_20221201_RANDOM_SUBSAMPLED.ply cur_est_10m_20221201_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_10m_20221201_dec50M.ply -SS RANDOM 7000000
mv cur_est_10m_20221201_dec50M_RANDOM_SUBSAMPLED.ply cur_est_10m_20221201_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_est_10m_20221201"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_est_10m_20221201"
rclone copy cur_est_10m_20221201_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_10m_20221201_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20230420
cd /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20230420
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_est_10m_20230420"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_10m_20230420.ply -SS RANDOM 50000000
mv cur_est_10m_20230420_RANDOM_SUBSAMPLED.ply cur_est_10m_20230420_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_10m_20230420_dec50M.ply -SS RANDOM 7000000
mv cur_est_10m_20230420_dec50M_RANDOM_SUBSAMPLED.ply cur_est_10m_20230420_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_est_10m_20230420"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_est_10m_20230420"
rclone copy cur_est_10m_20230420_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_10m_20230420_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20221201
cd /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20221201
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_est_20m_20221201"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_20m_20221201.ply -SS RANDOM 50000000
mv cur_est_20m_20221201_RANDOM_SUBSAMPLED.ply cur_est_20m_20221201_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_20m_20221201_dec50M.ply -SS RANDOM 7000000
mv cur_est_20m_20221201_dec50M_RANDOM_SUBSAMPLED.ply cur_est_20m_20221201_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_est_20m_20221201"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_est_20m_20221201"
rclone copy cur_est_20m_20221201_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_20m_20221201_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20230420
cd /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20230420
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_est_20m_20230420"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_20m_20230420.ply -SS RANDOM 50000000
mv cur_est_20m_20230420_RANDOM_SUBSAMPLED.ply cur_est_20m_20230420_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_20m_20230420_dec50M.ply -SS RANDOM 7000000
mv cur_est_20m_20230420_dec50M_RANDOM_SUBSAMPLED.ply cur_est_20m_20230420_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_est_20m_20230420"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_est_20m_20230420"
rclone copy cur_est_20m_20230420_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_20m_20230420_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_40m/cur_est_40m_20200219
cd /mnt/coral3d/focal_plots/cur_est/cur_est_40m/cur_est_40m_20200219
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_est_40m_20200219"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_40m_20200219.ply -SS RANDOM 50000000
mv cur_est_40m_20200219_RANDOM_SUBSAMPLED.ply cur_est_40m_20200219_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_40m_20200219_dec50M.ply -SS RANDOM 7000000
mv cur_est_40m_20200219_dec50M_RANDOM_SUBSAMPLED.ply cur_est_40m_20200219_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_est_40m_20200219"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_est_40m_20200219"
rclone copy cur_est_40m_20200219_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_40m_20200219_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_40m/cur_est_40m_20230420
cd /mnt/coral3d/focal_plots/cur_est/cur_est_40m/cur_est_40m_20230420
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_est_40m_20230420"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_40m_20230420.ply -SS RANDOM 50000000
mv cur_est_40m_20230420_RANDOM_SUBSAMPLED.ply cur_est_40m_20230420_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_40m_20230420_dec50M.ply -SS RANDOM 7000000
mv cur_est_40m_20230420_dec50M_RANDOM_SUBSAMPLED.ply cur_est_40m_20230420_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_est_40m_20230420"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_est_40m_20230420"
rclone copy cur_est_40m_20230420_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_40m_20230420_dec7M.ply orthos:/focal_plots/ply_dec7M
# Decimation of /mnt/coral3d/focal_plots/cur_est/cur_est_60m/cur_est_60m_20230420
cd /mnt/coral3d/focal_plots/cur_est/cur_est_60m/cur_est_60m_20230420
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started decimation for: cur_est_60m_20230420"
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_60m_20230420.ply -SS RANDOM 50000000
mv cur_est_60m_20230420_RANDOM_SUBSAMPLED.ply cur_est_60m_20230420_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_est_60m_20230420_dec50M.ply -SS RANDOM 7000000
mv cur_est_60m_20230420_dec50M_RANDOM_SUBSAMPLED.ply cur_est_60m_20230420_dec7M.ply
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished decimation for: cur_est_60m_20230420"
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying decimated PLYs to Google drive: cur_est_60m_20230420"
rclone copy cur_est_60m_20230420_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_est_60m_20230420_dec7M.ply orthos:/focal_plots/ply_dec7M
