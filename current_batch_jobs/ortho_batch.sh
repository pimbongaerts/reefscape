echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20220513" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20220513
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_05m_20220513
rclone copy cur_kal_05m_20220513.orthom/cur_kal_05m_20220513_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_05m_20220513.orthom/cur_kal_05m_20220513_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_05m_20220513.orthom/cur_kal_05m_20220513_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_05m_20220513.orthom/cur_kal_05m_20220513_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20220515" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20220515
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_10m_20220515
rclone copy cur_sna_10m_20220515.orthom/cur_sna_10m_20220515_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_10m_20220515.orthom/cur_sna_10m_20220515_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_10m_20220515.orthom/cur_sna_10m_20220515_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_10m_20220515.orthom/cur_sna_10m_20220515_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20220515" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20220515
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_05m_20220515
rclone copy cur_sna_05m_20220515.orthom/cur_sna_05m_20220515_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_05m_20220515.orthom/cur_sna_05m_20220515_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_05m_20220515.orthom/cur_sna_05m_20220515_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_05m_20220515.orthom/cur_sna_05m_20220515_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20200221" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20200221
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_60m_20200221
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_02K_orthom.png orthos:/focal_plots/orthom_02K
