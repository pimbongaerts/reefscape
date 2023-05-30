hostname=$(hostname)
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_05m/cur_dir_05m_20230416
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started camera conversions for: cur_dir_05m_20230416"
python3 ~/reefscape/scripts/convert_cameras.py
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished camera conversions for: cur_dir_05m_20230416"
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_10m/cur_dir_10m_20230416
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started camera conversions for: cur_dir_10m_20230416"
python3 ~/reefscape/scripts/convert_cameras.py
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished camera conversions for: cur_dir_10m_20230416"
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_20m/cur_dir_20m_20230416
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started camera conversions for: cur_dir_20m_20230416"
python3 ~/reefscape/scripts/convert_cameras.py
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished camera conversions for: cur_dir_20m_20230416"
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_40m/cur_dir_40m_20230416
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started camera conversions for: cur_dir_40m_20230416"
python3 ~/reefscape/scripts/convert_cameras.py
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished camera conversions for: cur_dir_40m_20230416"
cd /mnt/coral3d/focal_plots/cur_dir/cur_dir_60m/cur_dir_60m_20230416
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname started camera conversions for: cur_dir_60m_20230416"
python3 ~/reefscape/scripts/convert_cameras.py
/home/deepcat/tools/local_scripts/post_to_slack.sh "$hostname finished camera conversions for: cur_dir_60m_20230416"
