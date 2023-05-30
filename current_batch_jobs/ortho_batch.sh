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
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20230423" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_kal_05m_20230423"
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20230423
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_05m_20230423
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_kal_05m_20230423"
rclone copy cur_kal_05m_20230423.orthom/cur_kal_05m_20230423_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_05m_20230423.orthom/cur_kal_05m_20230423_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_05m_20230423.orthom/cur_kal_05m_20230423_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_05m_20230423.orthom/cur_kal_05m_20230423_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20230423" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_kal_60m_20230423"
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20230423
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_60m_20230423
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_kal_60m_20230423"
rclone copy cur_kal_60m_20230423.orthom/cur_kal_60m_20230423_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_60m_20230423.orthom/cur_kal_60m_20230423_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_60m_20230423.orthom/cur_kal_60m_20230423_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_60m_20230423.orthom/cur_kal_60m_20230423_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20230414" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_sna_60m_20230414"
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20230414
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_60m_20230414
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_sna_60m_20230414"
rclone copy cur_sna_60m_20230414.orthom/cur_sna_60m_20230414_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_60m_20230414.orthom/cur_sna_60m_20230414_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_60m_20230414.orthom/cur_sna_60m_20230414_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_60m_20230414.orthom/cur_sna_60m_20230414_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20200221" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_sea_60m_20200221"
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20200221
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_60m_20200221
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_sea_60m_20200221"
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_05m/cur_hul_05m_20230422" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_hul_05m_20230422"
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_05m/cur_hul_05m_20230422
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_hul_05m_20230422
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_hul_05m_20230422"
rclone copy cur_hul_05m_20230422.orthom/cur_hul_05m_20230422_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_hul_05m_20230422.orthom/cur_hul_05m_20230422_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_hul_05m_20230422.orthom/cur_hul_05m_20230422_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_hul_05m_20230422.orthom/cur_hul_05m_20230422_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_10m/cur_hul_10m_20230422" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_hul_10m_20230422"
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_10m/cur_hul_10m_20230422
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_hul_10m_20230422
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_hul_10m_20230422"
rclone copy cur_hul_10m_20230422.orthom/cur_hul_10m_20230422_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_hul_10m_20230422.orthom/cur_hul_10m_20230422_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_hul_10m_20230422.orthom/cur_hul_10m_20230422_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_hul_10m_20230422.orthom/cur_hul_10m_20230422_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_20m/cur_hul_20m_20230422" >> /home/deepcat/deepcat_log.txt
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is generating ortho for: cur_hul_20m_20230422"
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_20m/cur_hul_20m_20230422
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_hul_20m_20230422
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname is copying orthomosaics to Google drive: cur_hul_20m_20230422"
rclone copy cur_hul_20m_20230422.orthom/cur_hul_20m_20230422_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_hul_20m_20230422.orthom/cur_hul_20m_20230422_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_hul_20m_20230422.orthom/cur_hul_20m_20230422_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_hul_20m_20230422.orthom/cur_hul_20m_20230422_02K_orthom.png orthos:/focal_plots/orthom_02K
