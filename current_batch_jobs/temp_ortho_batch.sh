# Decimation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20211124
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20211124
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_20m_20211124.ply -SS RANDOM 50000000
mv cur_sna_20m_20211124_RANDOM_SUBSAMPLED.ply cur_sna_20m_20211124_dec50M.ply
sleep 10
xvfb-run /snap/bin/cloudcompare.CloudCompare -SILENT -C_EXPORT_FMT PLY -NO_TIMESTAMP -O cur_sna_20m_20211124_dec50M.ply -SS RANDOM 7000000
mv cur_sna_20m_20211124_dec50M_RANDOM_SUBSAMPLED.ply cur_sna_20m_20211124_dec7M.ply
rclone copy cur_sna_20m_20211124_dec50M.ply orthos:/focal_plots/ply_dec50M
rclone copy cur_sna_20m_20211124_dec7M.ply orthos:/focal_plots/ply_dec7M
# Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20211124
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_20m/cur_sna_20m_20211124
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py # cur_sna_20m_20211124
rclone copy cur_sna_20m_20211124.orthom/cur_sna_20m_20211124_64K_orthom.tif orthos:/focal_plots/orthom_64K
rclone copy cur_sna_20m_20211124.orthom/cur_sna_20m_20211124_32K_orthom.tif orthos:/focal_plots/orthom_32K
rclone copy cur_sna_20m_20211124.orthom/cur_sna_20m_20211124_10K_orthom.png orthos:/focal_plots/orthom_10K
rclone copy cur_sna_20m_20211124.orthom/cur_sna_20m_20211124_02K_orthom.png orthos:/focal_plots/orthom_02K
