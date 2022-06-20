echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sam/cur_sam_10m/cur_sam_10m_20200222" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sam/cur_sam_10m/cur_sam_10m_20200222
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sam_10m_20200222
rclone copy cur_sam_10m_20200222.orthom/cur_sam_10m_20200222_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sam_10m_20200222.orthom/cur_sam_10m_20200222_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sam_10m_20200222.orthom/cur_sam_10m_20200222_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sam_10m_20200222.orthom/cur_sam_10m_20200222_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sam/cur_sam_20m/cur_sam_20m_20200222" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sam/cur_sam_20m/cur_sam_20m_20200222
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sam_20m_20200222
rclone copy cur_sam_20m_20200222.orthom/cur_sam_20m_20200222_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sam_20m_20200222.orthom/cur_sam_20m_20200222_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sam_20m_20200222.orthom/cur_sam_20m_20200222_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sam_20m_20200222.orthom/cur_sam_20m_20200222_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sam/cur_sam_40m/cur_sam_40m_20200222" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_sam/cur_sam_40m/cur_sam_40m_20200222
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sam_40m_20200222
rclone copy cur_sam_40m_20200222.orthom/cur_sam_40m_20200222_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sam_40m_20200222.orthom/cur_sam_40m_20200222_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sam_40m_20200222.orthom/cur_sam_40m_20200222_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sam_40m_20200222.orthom/cur_sam_40m_20200222_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_cas/cur_cas_05m/cur_cas_05m_20190401" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_cas/cur_cas_05m/cur_cas_05m_20190401
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_cas_05m_20190401
rclone copy cur_cas_05m_20190401.orthom/cur_cas_05m_20190401_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_cas_05m_20190401.orthom/cur_cas_05m_20190401_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_cas_05m_20190401.orthom/cur_cas_05m_20190401_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_cas_05m_20190401.orthom/cur_cas_05m_20190401_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_cas/cur_cas_05m/cur_cas_05m_20210225" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_cas/cur_cas_05m/cur_cas_05m_20210225
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_cas_05m_20210225
rclone copy cur_cas_05m_20210225.orthom/cur_cas_05m_20210225_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_cas_05m_20210225.orthom/cur_cas_05m_20210225_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_cas_05m_20210225.orthom/cur_cas_05m_20210225_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_cas_05m_20210225.orthom/cur_cas_05m_20210225_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_cas/cur_cas_10m/cur_cas_10m_20190401" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_cas/cur_cas_10m/cur_cas_10m_20190401
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_cas_10m_20190401
rclone copy cur_cas_10m_20190401.orthom/cur_cas_10m_20190401_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_cas_10m_20190401.orthom/cur_cas_10m_20190401_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_cas_10m_20190401.orthom/cur_cas_10m_20190401_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_cas_10m_20190401.orthom/cur_cas_10m_20190401_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_cas/cur_cas_10m/cur_cas_10m_20210225" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_cas/cur_cas_10m/cur_cas_10m_20210225
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_cas_10m_20210225
rclone copy cur_cas_10m_20210225.orthom/cur_cas_10m_20210225_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_cas_10m_20210225.orthom/cur_cas_10m_20210225_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_cas_10m_20210225.orthom/cur_cas_10m_20210225_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_cas_10m_20210225.orthom/cur_cas_10m_20210225_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_cas/cur_cas_20m/cur_cas_20m_20190331" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_cas/cur_cas_20m/cur_cas_20m_20190331
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_cas_20m_20190331
rclone copy cur_cas_20m_20190331.orthom/cur_cas_20m_20190331_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_cas_20m_20190331.orthom/cur_cas_20m_20190331_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_cas_20m_20190331.orthom/cur_cas_20m_20190331_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_cas_20m_20190331.orthom/cur_cas_20m_20190331_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_cas/cur_cas_20m/cur_cas_20m_20210225" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_cas/cur_cas_20m/cur_cas_20m_20210225
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_cas_20m_20210225
rclone copy cur_cas_20m_20210225.orthom/cur_cas_20m_20210225_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_cas_20m_20210225.orthom/cur_cas_20m_20210225_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_cas_20m_20210225.orthom/cur_cas_20m_20210225_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_cas_20m_20210225.orthom/cur_cas_20m_20210225_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_seb/cur_seb_10m/cur_seb_10m_20190319" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_seb/cur_seb_10m/cur_seb_10m_20190319
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_seb_10m_20190319
rclone copy cur_seb_10m_20190319.orthom/cur_seb_10m_20190319_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_seb_10m_20190319.orthom/cur_seb_10m_20190319_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_seb_10m_20190319.orthom/cur_seb_10m_20190319_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_seb_10m_20190319.orthom/cur_seb_10m_20190319_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_seb/cur_seb_10m/cur_seb_10m_20210302" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_seb/cur_seb_10m/cur_seb_10m_20210302
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_seb_10m_20210302
rclone copy cur_seb_10m_20210302.orthom/cur_seb_10m_20210302_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_seb_10m_20210302.orthom/cur_seb_10m_20210302_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_seb_10m_20210302.orthom/cur_seb_10m_20210302_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_seb_10m_20210302.orthom/cur_seb_10m_20210302_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_seb/cur_seb_20m/cur_seb_20m_20190319" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_seb/cur_seb_20m/cur_seb_20m_20190319
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_seb_20m_20190319
rclone copy cur_seb_20m_20190319.orthom/cur_seb_20m_20190319_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_seb_20m_20190319.orthom/cur_seb_20m_20190319_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_seb_20m_20190319.orthom/cur_seb_20m_20190319_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_seb_20m_20190319.orthom/cur_seb_20m_20190319_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_seb/cur_seb_20m/cur_seb_20m_20201210" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_seb/cur_seb_20m/cur_seb_20m_20201210
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_seb_20m_20201210
rclone copy cur_seb_20m_20201210.orthom/cur_seb_20m_20201210_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_seb_20m_20201210.orthom/cur_seb_20m_20201210_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_seb_20m_20201210.orthom/cur_seb_20m_20201210_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_seb_20m_20201210.orthom/cur_seb_20m_20201210_02K_orthom.png orthos:/focal_plots/orthom_02K
echo $(date -u) "Orthomosaic generation of /mnt/coral3d/focal_plots/cur_seb/cur_seb_20m/cur_seb_20m_20210302" >> /home/deepcat/deepsquid_log.txt
cd /mnt/coral3d/focal_plots/cur_seb/cur_seb_20m/cur_seb_20m_20210302
~/tools/metashape-pro-deepsquid-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_seb_20m_20210302
rclone copy cur_seb_20m_20210302.orthom/cur_seb_20m_20210302_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_seb_20m_20210302.orthom/cur_seb_20m_20210302_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_seb_20m_20210302.orthom/cur_seb_20m_20210302_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_seb_20m_20210302.orthom/cur_seb_20m_20210302_02K_orthom.png orthos:/focal_plots/orthom_02K