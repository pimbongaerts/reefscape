echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20210219" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_20m/cur_kal_20m_20210219
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_kal_20m_20210219
rclone copy cur_kal_20m_20210219.orthom/cur_kal_20m_20210219_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_kal_20m_20210219.orthom/cur_kal_20m_20210219_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_kal_20m_20210219.orthom/cur_kal_20m_20210219_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_kal_20m_20210219.orthom/cur_kal_20m_20210219_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20200303" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_10m/cur_sna_10m_20200303
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_10m_20200303
rclone copy cur_sna_10m_20200303.orthom/cur_sna_10m_20200303_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_10m_20200303.orthom/cur_sna_10m_20200303_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_10m_20200303.orthom/cur_sna_10m_20200303_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_10m_20200303.orthom/cur_sna_10m_20200303_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20200303" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20200303
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_20m_20200303
rclone copy cur_sna_20m_20200303.orthom/cur_sna_20m_20200303_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_20m_20200303.orthom/cur_sna_20m_20200303_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_20m_20200303.orthom/cur_sna_20m_20200303_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_20m_20200303.orthom/cur_sna_20m_20200303_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20200221" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20200221
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_60m_20200221
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_05m/cur_dir_05m_20210221" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_05m/cur_dir_05m_20210221
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_dir_05m_20210221
rclone copy cur_dir_05m_20210221.orthom/cur_dir_05m_20210221_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_dir_05m_20210221.orthom/cur_dir_05m_20210221_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_dir_05m_20210221.orthom/cur_dir_05m_20210221_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_dir_05m_20210221.orthom/cur_dir_05m_20210221_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20210221" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20210221
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_dir_10m_20210221
rclone copy cur_dir_10m_20210221.orthom/cur_dir_10m_20210221_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_dir_10m_20210221.orthom/cur_dir_10m_20210221_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_dir_10m_20210221.orthom/cur_dir_10m_20210221_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_dir_10m_20210221.orthom/cur_dir_10m_20210221_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20210221" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20210221
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_dir_20m_20210221
rclone copy cur_dir_20m_20210221.orthom/cur_dir_20m_20210221_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_dir_20m_20210221.orthom/cur_dir_20m_20210221_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_dir_20m_20210221.orthom/cur_dir_20m_20210221_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_dir_20m_20210221.orthom/cur_dir_20m_20210221_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20211202" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20211202
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_dir_20m_20211202
rclone copy cur_dir_20m_20211202.orthom/cur_dir_20m_20211202_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_dir_20m_20211202.orthom/cur_dir_20m_20211202_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_dir_20m_20211202.orthom/cur_dir_20m_20211202_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_dir_20m_20211202.orthom/cur_dir_20m_20211202_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20210221" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20210221
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_dir_40m_20210221
rclone copy cur_dir_40m_20210221.orthom/cur_dir_40m_20210221_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_dir_40m_20210221.orthom/cur_dir_40m_20210221_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_dir_40m_20210221.orthom/cur_dir_40m_20210221_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_dir_40m_20210221.orthom/cur_dir_40m_20210221_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20211128" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20211128
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_dir_40m_20211128
rclone copy cur_dir_40m_20211128.orthom/cur_dir_40m_20211128_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_dir_40m_20211128.orthom/cur_dir_40m_20211128_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_dir_40m_20211128.orthom/cur_dir_40m_20211128_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_dir_40m_20211128.orthom/cur_dir_40m_20211128_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_60m/cur_dir_60m_20210213" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_60m/cur_dir_60m_20210213
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_dir_60m_20210213
rclone copy cur_dir_60m_20210213.orthom/cur_dir_60m_20210213_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_dir_60m_20210213.orthom/cur_dir_60m_20210213_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_dir_60m_20210213.orthom/cur_dir_60m_20210213_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_dir_60m_20210213.orthom/cur_dir_60m_20210213_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_05m/cur_wat_05m_20200225" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_05m/cur_wat_05m_20200225
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_wat_05m_20200225
rclone copy cur_wat_05m_20200225.orthom/cur_wat_05m_20200225_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_wat_05m_20200225.orthom/cur_wat_05m_20200225_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_wat_05m_20200225.orthom/cur_wat_05m_20200225_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_wat_05m_20200225.orthom/cur_wat_05m_20200225_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_05m/cur_wat_05m_20210218" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_05m/cur_wat_05m_20210218
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_wat_05m_20210218
rclone copy cur_wat_05m_20210218.orthom/cur_wat_05m_20210218_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_wat_05m_20210218.orthom/cur_wat_05m_20210218_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_wat_05m_20210218.orthom/cur_wat_05m_20210218_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_wat_05m_20210218.orthom/cur_wat_05m_20210218_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20200225" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20200225
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_wat_10m_20200225
rclone copy cur_wat_10m_20200225.orthom/cur_wat_10m_20200225_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_wat_10m_20200225.orthom/cur_wat_10m_20200225_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_wat_10m_20200225.orthom/cur_wat_10m_20200225_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_wat_10m_20200225.orthom/cur_wat_10m_20200225_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20210218" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20210218
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_wat_10m_20210218
rclone copy cur_wat_10m_20210218.orthom/cur_wat_10m_20210218_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_wat_10m_20210218.orthom/cur_wat_10m_20210218_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_wat_10m_20210218.orthom/cur_wat_10m_20210218_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_wat_10m_20210218.orthom/cur_wat_10m_20210218_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_20m/cur_wat_20m_20200225" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_20m/cur_wat_20m_20200225
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_wat_20m_20200225
rclone copy cur_wat_20m_20200225.orthom/cur_wat_20m_20200225_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_wat_20m_20200225.orthom/cur_wat_20m_20200225_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_wat_20m_20200225.orthom/cur_wat_20m_20200225_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_wat_20m_20200225.orthom/cur_wat_20m_20200225_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_20m/cur_wat_20m_20210218" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_20m/cur_wat_20m_20210218
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_wat_20m_20210218
rclone copy cur_wat_20m_20210218.orthom/cur_wat_20m_20210218_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_wat_20m_20210218.orthom/cur_wat_20m_20210218_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_wat_20m_20210218.orthom/cur_wat_20m_20210218_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_wat_20m_20210218.orthom/cur_wat_20m_20210218_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20200219" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20200219
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_05m_20200219
rclone copy cur_est_05m_20200219.orthom/cur_est_05m_20200219_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_05m_20200219.orthom/cur_est_05m_20200219_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_05m_20200219.orthom/cur_est_05m_20200219_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_05m_20200219.orthom/cur_est_05m_20200219_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20201127" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20201127
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_05m_20201127
rclone copy cur_est_05m_20201127.orthom/cur_est_05m_20201127_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_05m_20201127.orthom/cur_est_05m_20201127_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_05m_20201127.orthom/cur_est_05m_20201127_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_05m_20201127.orthom/cur_est_05m_20201127_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20210216" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20210216
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_05m_20210216
rclone copy cur_est_05m_20210216.orthom/cur_est_05m_20210216_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_05m_20210216.orthom/cur_est_05m_20210216_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_05m_20210216.orthom/cur_est_05m_20210216_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_05m_20210216.orthom/cur_est_05m_20210216_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20211129" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20211129
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_05m_20211129
rclone copy cur_est_05m_20211129.orthom/cur_est_05m_20211129_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_05m_20211129.orthom/cur_est_05m_20211129_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_05m_20211129.orthom/cur_est_05m_20211129_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_05m_20211129.orthom/cur_est_05m_20211129_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20200219" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20200219
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_10m_20200219
rclone copy cur_est_10m_20200219.orthom/cur_est_10m_20200219_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_10m_20200219.orthom/cur_est_10m_20200219_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_10m_20200219.orthom/cur_est_10m_20200219_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_10m_20200219.orthom/cur_est_10m_20200219_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20210216" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20210216
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_10m_20210216
rclone copy cur_est_10m_20210216.orthom/cur_est_10m_20210216_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_10m_20210216.orthom/cur_est_10m_20210216_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_10m_20210216.orthom/cur_est_10m_20210216_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_10m_20210216.orthom/cur_est_10m_20210216_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20211129" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20211129
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_10m_20211129
rclone copy cur_est_10m_20211129.orthom/cur_est_10m_20211129_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_10m_20211129.orthom/cur_est_10m_20211129_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_10m_20211129.orthom/cur_est_10m_20211129_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_10m_20211129.orthom/cur_est_10m_20211129_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20220511" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20220511
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_10m_20220511
rclone copy cur_est_10m_20220511.orthom/cur_est_10m_20220511_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_10m_20220511.orthom/cur_est_10m_20220511_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_10m_20220511.orthom/cur_est_10m_20220511_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_10m_20220511.orthom/cur_est_10m_20220511_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20200219" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20200219
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_20m_20200219
rclone copy cur_est_20m_20200219.orthom/cur_est_20m_20200219_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_20m_20200219.orthom/cur_est_20m_20200219_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_20m_20200219.orthom/cur_est_20m_20200219_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_20m_20200219.orthom/cur_est_20m_20200219_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20201127" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20201127
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_20m_20201127
rclone copy cur_est_20m_20201127.orthom/cur_est_20m_20201127_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_20m_20201127.orthom/cur_est_20m_20201127_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_20m_20201127.orthom/cur_est_20m_20201127_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_20m_20201127.orthom/cur_est_20m_20201127_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20210216" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20210216
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_20m_20210216
rclone copy cur_est_20m_20210216.orthom/cur_est_20m_20210216_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_20m_20210216.orthom/cur_est_20m_20210216_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_20m_20210216.orthom/cur_est_20m_20210216_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_20m_20210216.orthom/cur_est_20m_20210216_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20211129" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20211129
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_20m_20211129
rclone copy cur_est_20m_20211129.orthom/cur_est_20m_20211129_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_20m_20211129.orthom/cur_est_20m_20211129_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_20m_20211129.orthom/cur_est_20m_20211129_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_20m_20211129.orthom/cur_est_20m_20211129_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20220511" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20220511
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_20m_20220511
rclone copy cur_est_20m_20220511.orthom/cur_est_20m_20220511_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_20m_20220511.orthom/cur_est_20m_20220511_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_20m_20220511.orthom/cur_est_20m_20220511_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_20m_20220511.orthom/cur_est_20m_20220511_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_40m/cur_est_40m_20220511" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_est/cur_est_40m/cur_est_40m_20220511
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_40m_20220511
rclone copy cur_est_40m_20220511.orthom/cur_est_40m_20220511_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_40m_20220511.orthom/cur_est_40m_20220511_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_40m_20220511.orthom/cur_est_40m_20220511_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_40m_20220511.orthom/cur_est_40m_20220511_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_60m/cur_est_60m_20200302" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_est/cur_est_60m/cur_est_60m_20200302
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_60m_20200302
rclone copy cur_est_60m_20200302.orthom/cur_est_60m_20200302_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_60m_20200302.orthom/cur_est_60m_20200302_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_60m_20200302.orthom/cur_est_60m_20200302_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_60m_20200302.orthom/cur_est_60m_20200302_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_60m/cur_est_60m_20220511" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_est/cur_est_60m/cur_est_60m_20220511
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_60m_20220511
rclone copy cur_est_60m_20220511.orthom/cur_est_60m_20220511_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_60m_20220511.orthom/cur_est_60m_20220511_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_60m_20220511.orthom/cur_est_60m_20220511_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_60m_20220511.orthom/cur_est_60m_20220511_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_05m/cur_hul_05m_20200301" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_05m/cur_hul_05m_20200301
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_hul_05m_20200301
rclone copy cur_hul_05m_20200301.orthom/cur_hul_05m_20200301_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_hul_05m_20200301.orthom/cur_hul_05m_20200301_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_hul_05m_20200301.orthom/cur_hul_05m_20200301_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_hul_05m_20200301.orthom/cur_hul_05m_20200301_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_05m/cur_hul_05m_20210223" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_05m/cur_hul_05m_20210223
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_hul_05m_20210223
rclone copy cur_hul_05m_20210223.orthom/cur_hul_05m_20210223_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_hul_05m_20210223.orthom/cur_hul_05m_20210223_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_hul_05m_20210223.orthom/cur_hul_05m_20210223_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_hul_05m_20210223.orthom/cur_hul_05m_20210223_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_10m/cur_hul_10m_20200301" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_10m/cur_hul_10m_20200301
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_hul_10m_20200301
rclone copy cur_hul_10m_20200301.orthom/cur_hul_10m_20200301_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_hul_10m_20200301.orthom/cur_hul_10m_20200301_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_hul_10m_20200301.orthom/cur_hul_10m_20200301_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_hul_10m_20200301.orthom/cur_hul_10m_20200301_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_10m/cur_hul_10m_20210223" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_10m/cur_hul_10m_20210223
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_hul_10m_20210223
rclone copy cur_hul_10m_20210223.orthom/cur_hul_10m_20210223_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_hul_10m_20210223.orthom/cur_hul_10m_20210223_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_hul_10m_20210223.orthom/cur_hul_10m_20210223_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_hul_10m_20210223.orthom/cur_hul_10m_20210223_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_10m/cur_hul_10m_20220519" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_10m/cur_hul_10m_20220519
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_hul_10m_20220519
rclone copy cur_hul_10m_20220519.orthom/cur_hul_10m_20220519_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_hul_10m_20220519.orthom/cur_hul_10m_20220519_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_hul_10m_20220519.orthom/cur_hul_10m_20220519_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_hul_10m_20220519.orthom/cur_hul_10m_20220519_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_20m/cur_hul_20m_20200301" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_20m/cur_hul_20m_20200301
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_hul_20m_20200301
rclone copy cur_hul_20m_20200301.orthom/cur_hul_20m_20200301_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_hul_20m_20200301.orthom/cur_hul_20m_20200301_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_hul_20m_20200301.orthom/cur_hul_20m_20200301_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_hul_20m_20200301.orthom/cur_hul_20m_20200301_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_20m/cur_hul_20m_20210223" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_20m/cur_hul_20m_20210223
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_hul_20m_20210223
rclone copy cur_hul_20m_20210223.orthom/cur_hul_20m_20210223_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_hul_20m_20210223.orthom/cur_hul_20m_20210223_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_hul_20m_20210223.orthom/cur_hul_20m_20210223_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_hul_20m_20210223.orthom/cur_hul_20m_20210223_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_20m/cur_hul_20m_20220519" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_20m/cur_hul_20m_20220519
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_hul_20m_20220519
rclone copy cur_hul_20m_20220519.orthom/cur_hul_20m_20220519_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_hul_20m_20220519.orthom/cur_hul_20m_20220519_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_hul_20m_20220519.orthom/cur_hul_20m_20220519_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_hul_20m_20220519.orthom/cur_hul_20m_20220519_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_40m/cur_hul_40m_20200301" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_40m/cur_hul_40m_20200301
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_hul_40m_20200301
rclone copy cur_hul_40m_20200301.orthom/cur_hul_40m_20200301_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_hul_40m_20200301.orthom/cur_hul_40m_20200301_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_hul_40m_20200301.orthom/cur_hul_40m_20200301_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_hul_40m_20200301.orthom/cur_hul_40m_20200301_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_40m/cur_hul_40m_20220519" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_40m/cur_hul_40m_20220519
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_hul_40m_20220519
rclone copy cur_hul_40m_20220519.orthom/cur_hul_40m_20220519_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_hul_40m_20220519.orthom/cur_hul_40m_20220519_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_hul_40m_20220519.orthom/cur_hul_40m_20220519_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_hul_40m_20220519.orthom/cur_hul_40m_20220519_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_hul/cur_hul_60m/cur_hul_60m_20200301" >> /home/deepcat/deepsquid_log.txt 
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_60m/cur_hul_60m_20200301
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_hul_60m_20200301
rclone copy cur_hul_60m_20200301.orthom/cur_hul_60m_20200301_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_hul_60m_20200301.orthom/cur_hul_60m_20200301_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_hul_60m_20200301.orthom/cur_hul_60m_20200301_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_hul_60m_20200301.orthom/cur_hul_60m_20200301_02K_orthom.png orthos:/focal_plots/orthom_02K