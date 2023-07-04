hostname=$(hostname)
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20230423" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_kal_20m_20230423"
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20230423
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_20m_20230423
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_kal_20m_20230423"
rclone copy cur_kal_20m_20230423.orthom/cur_kal_20m_20230423_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_20m_20230423.orthom/cur_kal_20m_20230423_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_20m_20230423.orthom/cur_kal_20m_20230423_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_20m_20230423.orthom/cur_kal_20m_20230423_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20230423" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_kal_40m_20230423"
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20230423
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_40m_20230423
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_kal_40m_20230423"
rclone copy cur_kal_40m_20230423.orthom/cur_kal_40m_20230423_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_40m_20230423.orthom/cur_kal_40m_20230423_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_40m_20230423.orthom/cur_kal_40m_20230423_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_40m_20230423.orthom/cur_kal_40m_20230423_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20230423" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_kal_10m_20230423"
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20230423
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_10m_20230423
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_kal_10m_20230423"
rclone copy cur_kal_10m_20230423.orthom/cur_kal_10m_20230423_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_10m_20230423.orthom/cur_kal_10m_20230423_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_10m_20230423.orthom/cur_kal_10m_20230423_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_10m_20230423.orthom/cur_kal_10m_20230423_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20230423" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_kal_60m_20230423"
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20230423
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_60m_20230423
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_kal_60m_20230423"
rclone copy cur_kal_60m_20230423.orthom/cur_kal_60m_20230423_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_60m_20230423.orthom/cur_kal_60m_20230423_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_60m_20230423.orthom/cur_kal_60m_20230423_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_60m_20230423.orthom/cur_kal_60m_20230423_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20230414" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_sna_20m_20230414"
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20230414
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_20m_20230414
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_sna_20m_20230414"
rclone copy cur_sna_20m_20230414.orthom/cur_sna_20m_20230414_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_20m_20230414.orthom/cur_sna_20m_20230414_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_20m_20230414.orthom/cur_sna_20m_20230414_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_20m_20230414.orthom/cur_sna_20m_20230414_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20230414" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_sna_10m_20230414"
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20230414
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_10m_20230414
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_sna_10m_20230414"
rclone copy cur_sna_10m_20230414.orthom/cur_sna_10m_20230414_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_10m_20230414.orthom/cur_sna_10m_20230414_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_10m_20230414.orthom/cur_sna_10m_20230414_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_10m_20230414.orthom/cur_sna_10m_20230414_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20230414" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_sna_05m_20230414"
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20230414
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_05m_20230414
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_sna_05m_20230414"
rclone copy cur_sna_05m_20230414.orthom/cur_sna_05m_20230414_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_05m_20230414.orthom/cur_sna_05m_20230414_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_05m_20230414.orthom/cur_sna_05m_20230414_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_05m_20230414.orthom/cur_sna_05m_20230414_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20230414" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_sna_40m_20230414"
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20230414
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_40m_20230414
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_sna_40m_20230414"
rclone copy cur_sna_40m_20230414.orthom/cur_sna_40m_20230414_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_40m_20230414.orthom/cur_sna_40m_20230414_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_40m_20230414.orthom/cur_sna_40m_20230414_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_40m_20230414.orthom/cur_sna_40m_20230414_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20230414" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_sna_60m_20230414"
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20230414
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_60m_20230414
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_sna_60m_20230414"
rclone copy cur_sna_60m_20230414.orthom/cur_sna_60m_20230414_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_60m_20230414.orthom/cur_sna_60m_20230414_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_60m_20230414.orthom/cur_sna_60m_20230414_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_60m_20230414.orthom/cur_sna_60m_20230414_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20230419" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_sea_10m_20230419"
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20230419
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_10m_20230419
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_sea_10m_20230419"
rclone copy cur_sea_10m_20230419.orthom/cur_sea_10m_20230419_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_10m_20230419.orthom/cur_sea_10m_20230419_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_10m_20230419.orthom/cur_sea_10m_20230419_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_10m_20230419.orthom/cur_sea_10m_20230419_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_20m/cur_sea_20m_20230419" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_sea_20m_20230419"
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_20m/cur_sea_20m_20230419
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_20m_20230419
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_sea_20m_20230419"
rclone copy cur_sea_20m_20230419.orthom/cur_sea_20m_20230419_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_20m_20230419.orthom/cur_sea_20m_20230419_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_20m_20230419.orthom/cur_sea_20m_20230419_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_20m_20230419.orthom/cur_sea_20m_20230419_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20230419" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_sea_40m_20230419"
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20230419
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_40m_20230419
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_sea_40m_20230419"
rclone copy cur_sea_40m_20230419.orthom/cur_sea_40m_20230419_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_40m_20230419.orthom/cur_sea_40m_20230419_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_40m_20230419.orthom/cur_sea_40m_20230419_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_40m_20230419.orthom/cur_sea_40m_20230419_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20200221" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_sea_60m_20200221"
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20200221
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_60m_20200221
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_sea_60m_20200221"
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20230419" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_sea_60m_20230419"
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20230419
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_60m_20230419
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_sea_60m_20230419"
rclone copy cur_sea_60m_20230419.orthom/cur_sea_60m_20230419_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_60m_20230419.orthom/cur_sea_60m_20230419_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_60m_20230419.orthom/cur_sea_60m_20230419_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_60m_20230419.orthom/cur_sea_60m_20230419_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20230416" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_dir_10m_20230416"
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20230416
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_dir_10m_20230416
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_dir_10m_20230416"
rclone copy cur_dir_10m_20230416.orthom/cur_dir_10m_20230416_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_dir_10m_20230416.orthom/cur_dir_10m_20230416_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_dir_10m_20230416.orthom/cur_dir_10m_20230416_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_dir_10m_20230416.orthom/cur_dir_10m_20230416_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20230416" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_dir_20m_20230416"
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20230416
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_dir_20m_20230416
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_dir_20m_20230416"
rclone copy cur_dir_20m_20230416.orthom/cur_dir_20m_20230416_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_dir_20m_20230416.orthom/cur_dir_20m_20230416_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_dir_20m_20230416.orthom/cur_dir_20m_20230416_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_dir_20m_20230416.orthom/cur_dir_20m_20230416_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20230416" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_dir_40m_20230416"
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20230416
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_dir_40m_20230416
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_dir_40m_20230416"
rclone copy cur_dir_40m_20230416.orthom/cur_dir_40m_20230416_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_dir_40m_20230416.orthom/cur_dir_40m_20230416_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_dir_40m_20230416.orthom/cur_dir_40m_20230416_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_dir_40m_20230416.orthom/cur_dir_40m_20230416_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_60m/cur_dir_60m_20230416" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_dir_60m_20230416"
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_60m/cur_dir_60m_20230416
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_dir_60m_20230416
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_dir_60m_20230416"
rclone copy cur_dir_60m_20230416.orthom/cur_dir_60m_20230416_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_dir_60m_20230416.orthom/cur_dir_60m_20230416_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_dir_60m_20230416.orthom/cur_dir_60m_20230416_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_dir_60m_20230416.orthom/cur_dir_60m_20230416_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20230415" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_wat_10m_20230415"
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20230415
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_wat_10m_20230415
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_wat_10m_20230415"
rclone copy cur_wat_10m_20230415.orthom/cur_wat_10m_20230415_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_wat_10m_20230415.orthom/cur_wat_10m_20230415_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_wat_10m_20230415.orthom/cur_wat_10m_20230415_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_wat_10m_20230415.orthom/cur_wat_10m_20230415_02K_orthom.png orthos:/focal_plots/orthom_02K
