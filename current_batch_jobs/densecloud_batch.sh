hostname=$(hostname)
cd /mnt/coral3d/focal_plots/cur_hul/cur_hul_60m/cur_hul_60m_20230422
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started densecloud generation for: cur_hul_60m_20230422"
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_dense_cloud.py
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished densecloud generation for: cur_hul_60m_20230422"
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/model_info.py
cd /mnt/coral3d/focal_plots/cur_est/cur_est_05m/cur_est_05m_20230420
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started densecloud generation for: cur_est_05m_20230420"
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_dense_cloud.py
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished densecloud generation for: cur_est_05m_20230420"
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/model_info.py
cd /mnt/coral3d/focal_plots/cur_est/cur_est_10m/cur_est_10m_20230420
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started densecloud generation for: cur_est_10m_20230420"
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_dense_cloud.py
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished densecloud generation for: cur_est_10m_20230420"
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/model_info.py
cd /mnt/coral3d/focal_plots/cur_est/cur_est_20m/cur_est_20m_20230420
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started densecloud generation for: cur_est_20m_20230420"
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_dense_cloud.py
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished densecloud generation for: cur_est_20m_20230420"
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/model_info.py
cd /mnt/coral3d/focal_plots/cur_est/cur_est_40m/cur_est_40m_20230420
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started densecloud generation for: cur_est_40m_20230420"
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_dense_cloud.py
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished densecloud generation for: cur_est_40m_20230420"
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/model_info.py
cd /mnt/coral3d/focal_plots/cur_est/cur_est_60m/cur_est_60m_20230420
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started densecloud generation for: cur_est_60m_20230420"
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/create_dense_cloud.py
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished densecloud generation for: cur_est_60m_20230420"
~/tools/metashape-pro/metashape.sh -platform offscreen -r ~/reefscape/scripts/model_info.py
