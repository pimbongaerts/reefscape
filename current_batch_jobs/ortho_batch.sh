echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20190308" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20190308
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_20m_20190308
rclone copy cur_kal_20m_20190308.orthom/cur_kal_20m_20190308_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_20m_20190308.orthom/cur_kal_20m_20190308_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_20m_20190308.orthom/cur_kal_20m_20190308_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_20m_20190308.orthom/cur_kal_20m_20190308_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20191113" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20191113
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_20m_20191113
rclone copy cur_kal_20m_20191113.orthom/cur_kal_20m_20191113_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_20m_20191113.orthom/cur_kal_20m_20191113_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_20m_20191113.orthom/cur_kal_20m_20191113_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_20m_20191113.orthom/cur_kal_20m_20191113_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20220513" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20220513
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_20m_20220513
rclone copy cur_kal_20m_20220513.orthom/cur_kal_20m_20220513_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_20m_20220513.orthom/cur_kal_20m_20220513_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_20m_20220513.orthom/cur_kal_20m_20220513_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_20m_20220513.orthom/cur_kal_20m_20220513_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20190224" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20190224
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_40m_20190224
rclone copy cur_kal_40m_20190224.orthom/cur_kal_40m_20190224_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_40m_20190224.orthom/cur_kal_40m_20190224_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_40m_20190224.orthom/cur_kal_40m_20190224_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_40m_20190224.orthom/cur_kal_40m_20190224_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20191113" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20191113
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_40m_20191113
rclone copy cur_kal_40m_20191113.orthom/cur_kal_40m_20191113_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_40m_20191113.orthom/cur_kal_40m_20191113_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_40m_20191113.orthom/cur_kal_40m_20191113_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_40m_20191113.orthom/cur_kal_40m_20191113_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20220513" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20220513
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_40m_20220513
rclone copy cur_kal_40m_20220513.orthom/cur_kal_40m_20220513_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_40m_20220513.orthom/cur_kal_40m_20220513_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_40m_20220513.orthom/cur_kal_40m_20220513_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_40m_20220513.orthom/cur_kal_40m_20220513_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20190309" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20190309
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_10m_20190309
rclone copy cur_kal_10m_20190309.orthom/cur_kal_10m_20190309_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_10m_20190309.orthom/cur_kal_10m_20190309_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_10m_20190309.orthom/cur_kal_10m_20190309_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_10m_20190309.orthom/cur_kal_10m_20190309_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20191113" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20191113
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_10m_20191113
rclone copy cur_kal_10m_20191113.orthom/cur_kal_10m_20191113_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_10m_20191113.orthom/cur_kal_10m_20191113_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_10m_20191113.orthom/cur_kal_10m_20191113_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_10m_20191113.orthom/cur_kal_10m_20191113_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20220513" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20220513
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_10m_20220513
rclone copy cur_kal_10m_20220513.orthom/cur_kal_10m_20220513_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_10m_20220513.orthom/cur_kal_10m_20220513_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_10m_20220513.orthom/cur_kal_10m_20220513_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_10m_20220513.orthom/cur_kal_10m_20220513_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20190309" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20190309
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_05m_20190309
rclone copy cur_kal_05m_20190309.orthom/cur_kal_05m_20190309_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_05m_20190309.orthom/cur_kal_05m_20190309_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_05m_20190309.orthom/cur_kal_05m_20190309_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_05m_20190309.orthom/cur_kal_05m_20190309_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20191113" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20191113
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_05m_20191113
rclone copy cur_kal_05m_20191113.orthom/cur_kal_05m_20191113_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_05m_20191113.orthom/cur_kal_05m_20191113_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_05m_20191113.orthom/cur_kal_05m_20191113_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_05m_20191113.orthom/cur_kal_05m_20191113_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20190224" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20190224
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_60m_20190224
rclone copy cur_kal_60m_20190224.orthom/cur_kal_60m_20190224_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_60m_20190224.orthom/cur_kal_60m_20190224_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_60m_20190224.orthom/cur_kal_60m_20190224_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_60m_20190224.orthom/cur_kal_60m_20190224_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20191113" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20191113
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_60m_20191113
rclone copy cur_kal_60m_20191113.orthom/cur_kal_60m_20191113_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_60m_20191113.orthom/cur_kal_60m_20191113_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_60m_20191113.orthom/cur_kal_60m_20191113_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_60m_20191113.orthom/cur_kal_60m_20191113_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20220513" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20220513
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_60m_20220513
rclone copy cur_kal_60m_20220513.orthom/cur_kal_60m_20220513_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_60m_20220513.orthom/cur_kal_60m_20220513_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_60m_20220513.orthom/cur_kal_60m_20220513_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_60m_20220513.orthom/cur_kal_60m_20220513_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20190310" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20190310
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_20m_20190310
rclone copy cur_sna_20m_20190310.orthom/cur_sna_20m_20190310_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_20m_20190310.orthom/cur_sna_20m_20190310_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_20m_20190310.orthom/cur_sna_20m_20190310_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_20m_20190310.orthom/cur_sna_20m_20190310_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20191111" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20191111
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_20m_20191111
rclone copy cur_sna_20m_20191111.orthom/cur_sna_20m_20191111_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_20m_20191111.orthom/cur_sna_20m_20191111_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_20m_20191111.orthom/cur_sna_20m_20191111_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_20m_20191111.orthom/cur_sna_20m_20191111_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20220515" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20220515
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_20m_20220515
rclone copy cur_sna_20m_20220515.orthom/cur_sna_20m_20220515_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_20m_20220515.orthom/cur_sna_20m_20220515_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_20m_20220515.orthom/cur_sna_20m_20220515_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_20m_20220515.orthom/cur_sna_20m_20220515_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20200303" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20200303
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_10m_20200303
rclone copy cur_sna_10m_20200303.orthom/cur_sna_10m_20200303_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_10m_20200303.orthom/cur_sna_10m_20200303_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_10m_20200303.orthom/cur_sna_10m_20200303_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_10m_20200303.orthom/cur_sna_10m_20200303_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20190305" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20190305
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_10m_20190305
rclone copy cur_sna_10m_20190305.orthom/cur_sna_10m_20190305_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_10m_20190305.orthom/cur_sna_10m_20190305_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_10m_20190305.orthom/cur_sna_10m_20190305_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_10m_20190305.orthom/cur_sna_10m_20190305_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20191111" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20191111
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_10m_20191111
rclone copy cur_sna_10m_20191111.orthom/cur_sna_10m_20191111_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_10m_20191111.orthom/cur_sna_10m_20191111_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_10m_20191111.orthom/cur_sna_10m_20191111_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_10m_20191111.orthom/cur_sna_10m_20191111_02K_orthom.png orthos:/focal_plots/orthom_02K
