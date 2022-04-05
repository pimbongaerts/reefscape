# Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20211129
cd /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20211129
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_05m_20211129
rclone copy cur_est_05m_20211129.orthom/cur_est_05m_20211129_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_05m_20211129.orthom/cur_est_05m_20211129_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_05m_20211129.orthom/cur_est_05m_20211129_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_05m_20211129.orthom/cur_est_05m_20211129_02K_orthom.png orthos:/focal_plots/orthom_02K
# Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20211129
cd /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20211129
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_10m_20211129
rclone copy cur_est_10m_20211129.orthom/cur_est_10m_20211129_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_10m_20211129.orthom/cur_est_10m_20211129_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_10m_20211129.orthom/cur_est_10m_20211129_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_10m_20211129.orthom/cur_est_10m_20211129_02K_orthom.png orthos:/focal_plots/orthom_02K
# Orthomosaic generation of /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20211129
cd /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20211129
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_est_20m_20211129
rclone copy cur_est_20m_20211129.orthom/cur_est_20m_20211129_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_est_20m_20211129.orthom/cur_est_20m_20211129_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_est_20m_20211129.orthom/cur_est_20m_20211129_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_est_20m_20211129.orthom/cur_est_20m_20211129_02K_orthom.png orthos:/focal_plots/orthom_02K