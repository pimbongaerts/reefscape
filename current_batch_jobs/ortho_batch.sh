echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20200303" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20200303
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_10m_20200303
rclone copy cur_sna_10m_20200303.orthom/cur_sna_10m_20200303_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_10m_20200303.orthom/cur_sna_10m_20200303_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_10m_20200303.orthom/cur_sna_10m_20200303_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_10m_20200303.orthom/cur_sna_10m_20200303_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20200221" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20200221
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_60m_20200221
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_05m/cur_wat_05m_20200225" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_05m/cur_wat_05m_20200225
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_wat_05m_20200225
rclone copy cur_wat_05m_20200225.orthom/cur_wat_05m_20200225_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_wat_05m_20200225.orthom/cur_wat_05m_20200225_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_wat_05m_20200225.orthom/cur_wat_05m_20200225_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_wat_05m_20200225.orthom/cur_wat_05m_20200225_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20200225" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20200225
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_wat_10m_20200225
rclone copy cur_wat_10m_20200225.orthom/cur_wat_10m_20200225_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_wat_10m_20200225.orthom/cur_wat_10m_20200225_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_wat_10m_20200225.orthom/cur_wat_10m_20200225_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_wat_10m_20200225.orthom/cur_wat_10m_20200225_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_20m/cur_wat_20m_20200225" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_20m/cur_wat_20m_20200225
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_wat_20m_20200225
rclone copy cur_wat_20m_20200225.orthom/cur_wat_20m_20200225_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_wat_20m_20200225.orthom/cur_wat_20m_20200225_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_wat_20m_20200225.orthom/cur_wat_20m_20200225_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_wat_20m_20200225.orthom/cur_wat_20m_20200225_02K_orthom.png orthos:/focal_plots/orthom_02K
