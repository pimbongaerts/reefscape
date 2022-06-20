echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20201130" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20201130
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_dir_10m_20201130
rclone copy cur_dir_10m_20201130.orthom/cur_dir_10m_20201130_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_dir_10m_20201130.orthom/cur_dir_10m_20201130_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_dir_10m_20201130.orthom/cur_dir_10m_20201130_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_dir_10m_20201130.orthom/cur_dir_10m_20201130_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20220517" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20220517
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_dir_10m_20220517
rclone copy cur_dir_10m_20220517.orthom/cur_dir_10m_20220517_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_dir_10m_20220517.orthom/cur_dir_10m_20220517_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_dir_10m_20220517.orthom/cur_dir_10m_20220517_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_dir_10m_20220517.orthom/cur_dir_10m_20220517_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20201130" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20201130
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_dir_20m_20201130
rclone copy cur_dir_20m_20201130.orthom/cur_dir_20m_20201130_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_dir_20m_20201130.orthom/cur_dir_20m_20201130_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_dir_20m_20201130.orthom/cur_dir_20m_20201130_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_dir_20m_20201130.orthom/cur_dir_20m_20201130_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20220517" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20220517
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_dir_20m_20220517
rclone copy cur_dir_20m_20220517.orthom/cur_dir_20m_20220517_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_dir_20m_20220517.orthom/cur_dir_20m_20220517_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_dir_20m_20220517.orthom/cur_dir_20m_20220517_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_dir_20m_20220517.orthom/cur_dir_20m_20220517_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20220517" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20220517
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_dir_40m_20220517
rclone copy cur_dir_40m_20220517.orthom/cur_dir_40m_20220517_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_dir_40m_20220517.orthom/cur_dir_40m_20220517_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_dir_40m_20220517.orthom/cur_dir_40m_20220517_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_dir_40m_20220517.orthom/cur_dir_40m_20220517_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_60m/cur_dir_60m_20220517" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_60m/cur_dir_60m_20220517
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_dir_60m_20220517
rclone copy cur_dir_60m_20220517.orthom/cur_dir_60m_20220517_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_dir_60m_20220517.orthom/cur_dir_60m_20220517_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_dir_60m_20220517.orthom/cur_dir_60m_20220517_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_dir_60m_20220517.orthom/cur_dir_60m_20220517_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_05m/cur_wat_05m_20200225" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_05m/cur_wat_05m_20200225
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_wat_05m_20200225
rclone copy cur_wat_05m_20200225.orthom/cur_wat_05m_20200225_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_wat_05m_20200225.orthom/cur_wat_05m_20200225_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_wat_05m_20200225.orthom/cur_wat_05m_20200225_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_wat_05m_20200225.orthom/cur_wat_05m_20200225_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20200225" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_10m/cur_wat_10m_20200225
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_wat_10m_20200225
rclone copy cur_wat_10m_20200225.orthom/cur_wat_10m_20200225_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_wat_10m_20200225.orthom/cur_wat_10m_20200225_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_wat_10m_20200225.orthom/cur_wat_10m_20200225_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_wat_10m_20200225.orthom/cur_wat_10m_20200225_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_20m/cur_wat_20m_20200225" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_20m/cur_wat_20m_20200225
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_wat_20m_20200225
rclone copy cur_wat_20m_20200225.orthom/cur_wat_20m_20200225_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_wat_20m_20200225.orthom/cur_wat_20m_20200225_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_wat_20m_20200225.orthom/cur_wat_20m_20200225_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_wat_20m_20200225.orthom/cur_wat_20m_20200225_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_40m/cur_wat_40m_20200225" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_40m/cur_wat_40m_20200225
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_wat_40m_20200225
rclone copy cur_wat_40m_20200225.orthom/cur_wat_40m_20200225_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_wat_40m_20200225.orthom/cur_wat_40m_20200225_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_wat_40m_20200225.orthom/cur_wat_40m_20200225_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_wat_40m_20200225.orthom/cur_wat_40m_20200225_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_60m/cur_wat_60m_20200225" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_60m/cur_wat_60m_20200225
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_wat_60m_20200225
rclone copy cur_wat_60m_20200225.orthom/cur_wat_60m_20200225_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_wat_60m_20200225.orthom/cur_wat_60m_20200225_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_wat_60m_20200225.orthom/cur_wat_60m_20200225_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_wat_60m_20200225.orthom/cur_wat_60m_20200225_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_wat/cur_wat_60m/cur_wat_60m_20220516" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_wat/cur_wat_60m/cur_wat_60m_20220516
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_wat_60m_20220516
rclone copy cur_wat_60m_20220516.orthom/cur_wat_60m_20220516_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_wat_60m_20220516.orthom/cur_wat_60m_20220516_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_wat_60m_20220516.orthom/cur_wat_60m_20220516_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_wat_60m_20220516.orthom/cur_wat_60m_20220516_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20211129" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20211129
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_05m_20211129
rclone copy cur_est_05m_20211129.orthom/cur_est_05m_20211129_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_05m_20211129.orthom/cur_est_05m_20211129_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_05m_20211129.orthom/cur_est_05m_20211129_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_05m_20211129.orthom/cur_est_05m_20211129_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20211129" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20211129
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_10m_20211129
rclone copy cur_est_10m_20211129.orthom/cur_est_10m_20211129_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_10m_20211129.orthom/cur_est_10m_20211129_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_10m_20211129.orthom/cur_est_10m_20211129_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_10m_20211129.orthom/cur_est_10m_20211129_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sam/cur_sam_05m/cur_sam_05m_20200222" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sam/cur_sam_05m/cur_sam_05m_20200222
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sam_05m_20200222
rclone copy cur_sam_05m_20200222.orthom/cur_sam_05m_20200222_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sam_05m_20200222.orthom/cur_sam_05m_20200222_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sam_05m_20200222.orthom/cur_sam_05m_20200222_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sam_05m_20200222.orthom/cur_sam_05m_20200222_02K_orthom.png orthos:/focal_plots/orthom_02K