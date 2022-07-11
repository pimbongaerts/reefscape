echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20191113" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20191113
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_40m_20191113
rclone copy cur_kal_40m_20191113.orthom/cur_kal_40m_20191113_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_40m_20191113.orthom/cur_kal_40m_20191113_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_40m_20191113.orthom/cur_kal_40m_20191113_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_40m_20191113.orthom/cur_kal_40m_20191113_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20191111" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20191111
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_20m_20191111
rclone copy cur_sna_20m_20191111.orthom/cur_sna_20m_20191111_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_20m_20191111.orthom/cur_sna_20m_20191111_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_20m_20191111.orthom/cur_sna_20m_20191111_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_20m_20191111.orthom/cur_sna_20m_20191111_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20200303" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20200303
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_10m_20200303
rclone copy cur_sna_10m_20200303.orthom/cur_sna_10m_20200303_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_10m_20200303.orthom/cur_sna_10m_20200303_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_10m_20200303.orthom/cur_sna_10m_20200303_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_10m_20200303.orthom/cur_sna_10m_20200303_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20200221" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20200221
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_60m_20200221
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_05m/cur_wat_05m_20200225" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_05m/cur_wat_05m_20200225
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_wat_05m_20200225
rclone copy cur_wat_05m_20200225.orthom/cur_wat_05m_20200225_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_wat_05m_20200225.orthom/cur_wat_05m_20200225_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_wat_05m_20200225.orthom/cur_wat_05m_20200225_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_wat_05m_20200225.orthom/cur_wat_05m_20200225_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20200225" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20200225
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_wat_10m_20200225
rclone copy cur_wat_10m_20200225.orthom/cur_wat_10m_20200225_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_wat_10m_20200225.orthom/cur_wat_10m_20200225_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_wat_10m_20200225.orthom/cur_wat_10m_20200225_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_wat_10m_20200225.orthom/cur_wat_10m_20200225_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_20m/cur_wat_20m_20200225" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_20m/cur_wat_20m_20200225
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_wat_20m_20200225
rclone copy cur_wat_20m_20200225.orthom/cur_wat_20m_20200225_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_wat_20m_20200225.orthom/cur_wat_20m_20200225_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_wat_20m_20200225.orthom/cur_wat_20m_20200225_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_wat_20m_20200225.orthom/cur_wat_20m_20200225_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_40m/cur_wat_40m_20200225" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_40m/cur_wat_40m_20200225
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_wat_40m_20200225
rclone copy cur_wat_40m_20200225.orthom/cur_wat_40m_20200225_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_wat_40m_20200225.orthom/cur_wat_40m_20200225_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_wat_40m_20200225.orthom/cur_wat_40m_20200225_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_wat_40m_20200225.orthom/cur_wat_40m_20200225_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20211129" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20211129
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_05m_20211129
rclone copy cur_est_05m_20211129.orthom/cur_est_05m_20211129_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_05m_20211129.orthom/cur_est_05m_20211129_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_05m_20211129.orthom/cur_est_05m_20211129_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_05m_20211129.orthom/cur_est_05m_20211129_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20211129" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20211129
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_10m_20211129
rclone copy cur_est_10m_20211129.orthom/cur_est_10m_20211129_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_10m_20211129.orthom/cur_est_10m_20211129_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_10m_20211129.orthom/cur_est_10m_20211129_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_10m_20211129.orthom/cur_est_10m_20211129_02K_orthom.png orthos:/focal_plots/orthom_02K
