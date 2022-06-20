echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20190307" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20190307
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_05m_20190307
rclone copy cur_sna_05m_20190307.orthom/cur_sna_05m_20190307_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_05m_20190307.orthom/cur_sna_05m_20190307_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_05m_20190307.orthom/cur_sna_05m_20190307_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_05m_20190307.orthom/cur_sna_05m_20190307_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20191110" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_05m/cur_sna_05m_20191110
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_05m_20191110
rclone copy cur_sna_05m_20191110.orthom/cur_sna_05m_20191110_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_05m_20191110.orthom/cur_sna_05m_20191110_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_05m_20191110.orthom/cur_sna_05m_20191110_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_05m_20191110.orthom/cur_sna_05m_20191110_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20190222" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20190222
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_40m_20190222
rclone copy cur_sna_40m_20190222.orthom/cur_sna_40m_20190222_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_40m_20190222.orthom/cur_sna_40m_20190222_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_40m_20190222.orthom/cur_sna_40m_20190222_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_40m_20190222.orthom/cur_sna_40m_20190222_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20191110" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20191110
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_40m_20191110
rclone copy cur_sna_40m_20191110.orthom/cur_sna_40m_20191110_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_40m_20191110.orthom/cur_sna_40m_20191110_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_40m_20191110.orthom/cur_sna_40m_20191110_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_40m_20191110.orthom/cur_sna_40m_20191110_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20220515" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20220515
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_40m_20220515
rclone copy cur_sna_40m_20220515.orthom/cur_sna_40m_20220515_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_40m_20220515.orthom/cur_sna_40m_20220515_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_40m_20220515.orthom/cur_sna_40m_20220515_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_40m_20220515.orthom/cur_sna_40m_20220515_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20191111" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20191111
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_60m_20191111
rclone copy cur_sna_60m_20191111.orthom/cur_sna_60m_20191111_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_60m_20191111.orthom/cur_sna_60m_20191111_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_60m_20191111.orthom/cur_sna_60m_20191111_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_60m_20191111.orthom/cur_sna_60m_20191111_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20190222" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20190222
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_60m_20190222
rclone copy cur_sna_60m_20190222.orthom/cur_sna_60m_20190222_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_60m_20190222.orthom/cur_sna_60m_20190222_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_60m_20190222.orthom/cur_sna_60m_20190222_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_60m_20190222.orthom/cur_sna_60m_20190222_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20220515" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20220515
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_60m_20220515
rclone copy cur_sna_60m_20220515.orthom/cur_sna_60m_20220515_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_60m_20220515.orthom/cur_sna_60m_20220515_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_60m_20220515.orthom/cur_sna_60m_20220515_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_60m_20220515.orthom/cur_sna_60m_20220515_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20191112" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20191112
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_10m_20191112
rclone copy cur_sea_10m_20191112.orthom/cur_sea_10m_20191112_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_10m_20191112.orthom/cur_sea_10m_20191112_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_10m_20191112.orthom/cur_sea_10m_20191112_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_10m_20191112.orthom/cur_sea_10m_20191112_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20190319" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20190319
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_10m_20190319
rclone copy cur_sea_10m_20190319.orthom/cur_sea_10m_20190319_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_10m_20190319.orthom/cur_sea_10m_20190319_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_10m_20190319.orthom/cur_sea_10m_20190319_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_10m_20190319.orthom/cur_sea_10m_20190319_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20220512" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_10m/cur_sea_10m_20220512
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_10m_20220512
rclone copy cur_sea_10m_20220512.orthom/cur_sea_10m_20220512_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_10m_20220512.orthom/cur_sea_10m_20220512_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_10m_20220512.orthom/cur_sea_10m_20220512_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_10m_20220512.orthom/cur_sea_10m_20220512_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_20m/cur_sea_20m_20191112" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_20m/cur_sea_20m_20191112
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_20m_20191112
rclone copy cur_sea_20m_20191112.orthom/cur_sea_20m_20191112_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_20m_20191112.orthom/cur_sea_20m_20191112_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_20m_20191112.orthom/cur_sea_20m_20191112_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_20m_20191112.orthom/cur_sea_20m_20191112_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_20m/cur_sea_20m_20220512" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_20m/cur_sea_20m_20220512
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_20m_20220512
rclone copy cur_sea_20m_20220512.orthom/cur_sea_20m_20220512_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_20m_20220512.orthom/cur_sea_20m_20220512_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_20m_20220512.orthom/cur_sea_20m_20220512_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_20m_20220512.orthom/cur_sea_20m_20220512_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20190220" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20190220
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_40m_20190220
rclone copy cur_sea_40m_20190220.orthom/cur_sea_40m_20190220_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_40m_20190220.orthom/cur_sea_40m_20190220_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_40m_20190220.orthom/cur_sea_40m_20190220_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_40m_20190220.orthom/cur_sea_40m_20190220_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20191112" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20191112
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_40m_20191112
rclone copy cur_sea_40m_20191112.orthom/cur_sea_40m_20191112_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_40m_20191112.orthom/cur_sea_40m_20191112_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_40m_20191112.orthom/cur_sea_40m_20191112_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_40m_20191112.orthom/cur_sea_40m_20191112_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20220512" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20220512
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_40m_20220512
rclone copy cur_sea_40m_20220512.orthom/cur_sea_40m_20220512_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_40m_20220512.orthom/cur_sea_40m_20220512_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_40m_20220512.orthom/cur_sea_40m_20220512_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_40m_20220512.orthom/cur_sea_40m_20220512_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20191112" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20191112
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_60m_20191112
rclone copy cur_sea_60m_20191112.orthom/cur_sea_60m_20191112_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_60m_20191112.orthom/cur_sea_60m_20191112_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_60m_20191112.orthom/cur_sea_60m_20191112_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_60m_20191112.orthom/cur_sea_60m_20191112_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20200221" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20200221
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_60m_20200221
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_60m_20200221.orthom/cur_sea_60m_20200221_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20190219" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20190219
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_60m_20190219
rclone copy cur_sea_60m_20190219.orthom/cur_sea_60m_20190219_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_60m_20190219.orthom/cur_sea_60m_20190219_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_60m_20190219.orthom/cur_sea_60m_20190219_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_60m_20190219.orthom/cur_sea_60m_20190219_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20220512" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20220512
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sea_60m_20220512
rclone copy cur_sea_60m_20220512.orthom/cur_sea_60m_20220512_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sea_60m_20220512.orthom/cur_sea_60m_20220512_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sea_60m_20220512.orthom/cur_sea_60m_20220512_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sea_60m_20220512.orthom/cur_sea_60m_20220512_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_dir/cur_dir_05m/cur_dir_05m_20201130" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_05m/cur_dir_05m_20201130
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_dir_05m_20201130
rclone copy cur_dir_05m_20201130.orthom/cur_dir_05m_20201130_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_dir_05m_20201130.orthom/cur_dir_05m_20201130_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_dir_05m_20201130.orthom/cur_dir_05m_20201130_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_dir_05m_20201130.orthom/cur_dir_05m_20201130_02K_orthom.png orthos:/focal_plots/orthom_02K