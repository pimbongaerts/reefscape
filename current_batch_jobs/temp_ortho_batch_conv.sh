# Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20210307
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20210307
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py --skip_build # cur_sna_60m_20210307
rclone copy cur_sna_60m_20210307.orthom/cur_sna_60m_20210307_64K_orthom.tif orthos:/focal_plots/orthom_64K
# Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20210214
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_60m/cur_kal_60m_20210214
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py --skip_build # cur_kal_60m_20210214
rclone copy cur_kal_60m_20210214.orthom/cur_kal_60m_20210214_64K_orthom.tif orthos:/focal_plots/orthom_64K
# Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20210228
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_60m/cur_sea_60m_20210228
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py --skip_build # cur_sea_60m_20210228
rclone copy cur_sea_60m_20210228.orthom/cur_sea_60m_20210228_64K_orthom.tif orthos:/focal_plots/orthom_64K
# Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20210307
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_40m/cur_sna_40m_20210307
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py --skip_build # cur_sna_40m_20210307
rclone copy cur_sna_40m_20210307.orthom/cur_sna_40m_20210307_64K_orthom.tif orthos:/focal_plots/orthom_64K
# Orthomosaic generation of /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20210214
cd /mnt/coral3d/focal_plots/cur_kal/cur_kal_40m/cur_kal_40m_20210214
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py --skip_build # cur_kal_40m_20210214
rclone copy cur_kal_40m_20210214.orthom/cur_kal_40m_20210214_64K_orthom.tif orthos:/focal_plots/orthom_64K
# Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20210228
cd /mnt/coral3d/focal_plots/cur_sea/cur_sea_40m/cur_sea_40m_20210228
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py --skip_build # cur_sea_40m_20210228
rclone copy cur_sea_40m_20210228.orthom/cur_sea_40m_20210228_64K_orthom.tif orthos:/focal_plots/orthom_64K
# Orthomosaic generation of /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20201227
cd /mnt/coral3d/focal_plots/cur_sna/cur_sna_60m/cur_sna_60m_20201227
~/tools/metashape-pro-1.8/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_ortho.py --skip_build # cur_sna_60m_20201227
rclone copy cur_sna_60m_20201227.orthom/cur_sna_60m_20201227_64K_orthom.tif orthos:/focal_plots/orthom_64K