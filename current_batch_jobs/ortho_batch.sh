echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20221206" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20221206
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_20m_20221206
rclone copy cur_kal_20m_20221206.orthom/cur_kal_20m_20221206_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_20m_20221206.orthom/cur_kal_20m_20221206_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_20m_20221206.orthom/cur_kal_20m_20221206_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_20m_20221206.orthom/cur_kal_20m_20221206_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20221217" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20221217
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_40m_20221217
rclone copy cur_kal_40m_20221217.orthom/cur_kal_40m_20221217_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_40m_20221217.orthom/cur_kal_40m_20221217_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_40m_20221217.orthom/cur_kal_40m_20221217_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_40m_20221217.orthom/cur_kal_40m_20221217_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20221206" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_10m/cur_kal_10m_20221206
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_10m_20221206
rclone copy cur_kal_10m_20221206.orthom/cur_kal_10m_20221206_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_10m_20221206.orthom/cur_kal_10m_20221206_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_10m_20221206.orthom/cur_kal_10m_20221206_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_10m_20221206.orthom/cur_kal_10m_20221206_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20220513" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20220513
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_05m_20220513
rclone copy cur_kal_05m_20220513.orthom/cur_kal_05m_20220513_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_05m_20220513.orthom/cur_kal_05m_20220513_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_05m_20220513.orthom/cur_kal_05m_20220513_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_05m_20220513.orthom/cur_kal_05m_20220513_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20221206" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_05m/cur_kal_05m_20221206
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_05m_20221206
rclone copy cur_kal_05m_20221206.orthom/cur_kal_05m_20221206_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_05m_20221206.orthom/cur_kal_05m_20221206_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_05m_20221206.orthom/cur_kal_05m_20221206_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_05m_20221206.orthom/cur_kal_05m_20221206_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20221217" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20221217
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_60m_20221217
rclone copy cur_kal_60m_20221217.orthom/cur_kal_60m_20221217_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_60m_20221217.orthom/cur_kal_60m_20221217_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_60m_20221217.orthom/cur_kal_60m_20221217_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_60m_20221217.orthom/cur_kal_60m_20221217_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20221205" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20221205
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_20m_20221205
rclone copy cur_sna_20m_20221205.orthom/cur_sna_20m_20221205_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_20m_20221205.orthom/cur_sna_20m_20221205_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_20m_20221205.orthom/cur_sna_20m_20221205_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_20m_20221205.orthom/cur_sna_20m_20221205_02K_orthom.png orthos:/focal_plots/orthom_02K
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
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20221205" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20221205
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_05m_20221205
rclone copy cur_sna_05m_20221205.orthom/cur_sna_05m_20221205_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_05m_20221205.orthom/cur_sna_05m_20221205_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_05m_20221205.orthom/cur_sna_05m_20221205_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_05m_20221205.orthom/cur_sna_05m_20221205_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20221223" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20221223
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_40m_20221223
rclone copy cur_sna_40m_20221223.orthom/cur_sna_40m_20221223_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_40m_20221223.orthom/cur_sna_40m_20221223_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_40m_20221223.orthom/cur_sna_40m_20221223_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_40m_20221223.orthom/cur_sna_40m_20221223_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20221223" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20221223
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_60m_20221223
rclone copy cur_sna_60m_20221223.orthom/cur_sna_60m_20221223_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_60m_20221223.orthom/cur_sna_60m_20221223_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_60m_20221223.orthom/cur_sna_60m_20221223_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_60m_20221223.orthom/cur_sna_60m_20221223_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20221125" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20221125
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_10m_20221125
rclone copy cur_sea_10m_20221125.orthom/cur_sea_10m_20221125_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_10m_20221125.orthom/cur_sea_10m_20221125_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_10m_20221125.orthom/cur_sea_10m_20221125_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_10m_20221125.orthom/cur_sea_10m_20221125_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_20m/cur_sea_20m_20221125" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_20m/cur_sea_20m_20221125
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_20m_20221125
rclone copy cur_sea_20m_20221125.orthom/cur_sea_20m_20221125_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_20m_20221125.orthom/cur_sea_20m_20221125_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_20m_20221125.orthom/cur_sea_20m_20221125_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_20m_20221125.orthom/cur_sea_20m_20221125_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20221202" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20221202
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_40m_20221202
rclone copy cur_sea_40m_20221202.orthom/cur_sea_40m_20221202_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_40m_20221202.orthom/cur_sea_40m_20221202_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_40m_20221202.orthom/cur_sea_40m_20221202_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_40m_20221202.orthom/cur_sea_40m_20221202_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20200221" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20200221
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_60m_20200221
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20221202" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20221202
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_60m_20221202
rclone copy cur_sea_60m_20221202.orthom/cur_sea_60m_20221202_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_60m_20221202.orthom/cur_sea_60m_20221202_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_60m_20221202.orthom/cur_sea_60m_20221202_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_60m_20221202.orthom/cur_sea_60m_20221202_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_05m/cur_dir_05m_20221129" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_05m/cur_dir_05m_20221129
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_dir_05m_20221129
rclone copy cur_dir_05m_20221129.orthom/cur_dir_05m_20221129_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_dir_05m_20221129.orthom/cur_dir_05m_20221129_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_dir_05m_20221129.orthom/cur_dir_05m_20221129_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_dir_05m_20221129.orthom/cur_dir_05m_20221129_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20221129" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20221129
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_dir_10m_20221129
rclone copy cur_dir_10m_20221129.orthom/cur_dir_10m_20221129_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_dir_10m_20221129.orthom/cur_dir_10m_20221129_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_dir_10m_20221129.orthom/cur_dir_10m_20221129_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_dir_10m_20221129.orthom/cur_dir_10m_20221129_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20221129" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20221129
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_dir_20m_20221129
rclone copy cur_dir_20m_20221129.orthom/cur_dir_20m_20221129_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_dir_20m_20221129.orthom/cur_dir_20m_20221129_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_dir_20m_20221129.orthom/cur_dir_20m_20221129_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_dir_20m_20221129.orthom/cur_dir_20m_20221129_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20221203" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20221203
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_dir_40m_20221203
rclone copy cur_dir_40m_20221203.orthom/cur_dir_40m_20221203_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_dir_40m_20221203.orthom/cur_dir_40m_20221203_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_dir_40m_20221203.orthom/cur_dir_40m_20221203_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_dir_40m_20221203.orthom/cur_dir_40m_20221203_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_60m/cur_dir_60m_20221203" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_60m/cur_dir_60m_20221203
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_dir_60m_20221203
rclone copy cur_dir_60m_20221203.orthom/cur_dir_60m_20221203_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_dir_60m_20221203.orthom/cur_dir_60m_20221203_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_dir_60m_20221203.orthom/cur_dir_60m_20221203_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_dir_60m_20221203.orthom/cur_dir_60m_20221203_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_05m/cur_wat_05m_20221128" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_05m/cur_wat_05m_20221128
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_wat_05m_20221128
rclone copy cur_wat_05m_20221128.orthom/cur_wat_05m_20221128_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_wat_05m_20221128.orthom/cur_wat_05m_20221128_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_wat_05m_20221128.orthom/cur_wat_05m_20221128_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_wat_05m_20221128.orthom/cur_wat_05m_20221128_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20221128" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20221128
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_wat_10m_20221128
rclone copy cur_wat_10m_20221128.orthom/cur_wat_10m_20221128_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_wat_10m_20221128.orthom/cur_wat_10m_20221128_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_wat_10m_20221128.orthom/cur_wat_10m_20221128_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_wat_10m_20221128.orthom/cur_wat_10m_20221128_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_20m/cur_wat_20m_20221128" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_20m/cur_wat_20m_20221128
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_wat_20m_20221128
rclone copy cur_wat_20m_20221128.orthom/cur_wat_20m_20221128_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_wat_20m_20221128.orthom/cur_wat_20m_20221128_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_wat_20m_20221128.orthom/cur_wat_20m_20221128_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_wat_20m_20221128.orthom/cur_wat_20m_20221128_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_05m/cur_hul_05m_20221208" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_05m/cur_hul_05m_20221208
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_hul_05m_20221208
rclone copy cur_hul_05m_20221208.orthom/cur_hul_05m_20221208_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_hul_05m_20221208.orthom/cur_hul_05m_20221208_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_hul_05m_20221208.orthom/cur_hul_05m_20221208_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_hul_05m_20221208.orthom/cur_hul_05m_20221208_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_10m/cur_hul_10m_20221208" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_10m/cur_hul_10m_20221208
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_hul_10m_20221208
rclone copy cur_hul_10m_20221208.orthom/cur_hul_10m_20221208_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_hul_10m_20221208.orthom/cur_hul_10m_20221208_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_hul_10m_20221208.orthom/cur_hul_10m_20221208_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_hul_10m_20221208.orthom/cur_hul_10m_20221208_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_20m/cur_hul_20m_20221208" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_20m/cur_hul_20m_20221208
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_hul_20m_20221208
rclone copy cur_hul_20m_20221208.orthom/cur_hul_20m_20221208_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_hul_20m_20221208.orthom/cur_hul_20m_20221208_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_hul_20m_20221208.orthom/cur_hul_20m_20221208_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_hul_20m_20221208.orthom/cur_hul_20m_20221208_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20221201" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20221201
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_05m_20221201
rclone copy cur_est_05m_20221201.orthom/cur_est_05m_20221201_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_05m_20221201.orthom/cur_est_05m_20221201_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_05m_20221201.orthom/cur_est_05m_20221201_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_05m_20221201.orthom/cur_est_05m_20221201_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20221201" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20221201
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_10m_20221201
rclone copy cur_est_10m_20221201.orthom/cur_est_10m_20221201_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_10m_20221201.orthom/cur_est_10m_20221201_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_10m_20221201.orthom/cur_est_10m_20221201_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_10m_20221201.orthom/cur_est_10m_20221201_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(hostname) $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20221201" >> /home/deepcat/deepcat_log.txt
cd /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20221201
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_20m_20221201
rclone copy cur_est_20m_20221201.orthom/cur_est_20m_20221201_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_20m_20221201.orthom/cur_est_20m_20221201_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_20m_20221201.orthom/cur_est_20m_20221201_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_20m_20221201.orthom/cur_est_20m_20221201_02K_orthom.png orthos:/focal_plots/orthom_02K
