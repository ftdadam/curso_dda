webtalk_init -webtalk_dir D:/curso_dda/0_leds/0_leds.sim/sim_1/behav/xsim.dir/tb_top_behav/webtalk/
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Mon Aug 13 11:30:57 2018" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "XSIM v2016.1 (64-bit)" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "1538259" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "WIN64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "xsim_vivado" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "85e731a8-0250-45fc-a011-cc839be86e8c" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "7d7a6d22ee874d2ea6e0e0aadc5d48a6" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "14" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Microsoft Windows 8 or later , 64-bit" -context "user_environment"
webtalk_add_data -client project -key os_release -value "major release  (build 9200)" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Core(TM) i7-5500U CPU @ 2.40GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "2397 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "8.000 GB" -context "user_environment"
webtalk_register_client -client xsim
webtalk_add_data -client xsim -key Command -value "xsim" -context "xsim\\command_line_options"
webtalk_add_data -client xsim -key trace_waveform -value "true" -context "xsim\\usage"
webtalk_add_data -client xsim -key runtime -value "1 us" -context "xsim\\usage"
webtalk_add_data -client xsim -key iteration -value "1" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Time -value "0.23_sec" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Memory -value "21372_KB" -context "xsim\\usage"
webtalk_transmit -clientid 3210450484 -regid "" -xml D:/curso_dda/0_leds/0_leds.sim/sim_1/behav/xsim.dir/tb_top_behav/webtalk/usage_statistics_ext_xsim.xml -html D:/curso_dda/0_leds/0_leds.sim/sim_1/behav/xsim.dir/tb_top_behav/webtalk/usage_statistics_ext_xsim.html -wdm D:/curso_dda/0_leds/0_leds.sim/sim_1/behav/xsim.dir/tb_top_behav/webtalk/usage_statistics_ext_xsim.wdm -intro "<H3>XSIM Usage Report</H3><BR>"
webtalk_terminate
