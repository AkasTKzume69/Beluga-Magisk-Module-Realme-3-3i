#!/system/bin/sh
case $1 in
0)
###################################
# Balanced Profile
###################################
# CPU Mode
echo 0 > /proc/cpufreq/cpufreq_power_mode
echo 0 > /sys/devices/system/cpu/eas/enable
echo 0 > /proc/cpufreq/cpufreq_cci_mode
# CPU Governor Tune
echo 10000 > /sys/devices/system/cpu/cpufreq/schedutil/down_rate_limit_us
echo 0 > /sys/devices/system/cpu/cpufreq/schedutil/up_rate_limit_us
# CPU Set
echo 0-7 > /dev/cpuset/top-app/cpus
echo 0-3,6-7 > /dev/cpuset/foreground/boost/cpus
echo 0-3,6-7 > /dev/cpuset/foreground/cpus
echo 0-3 > /dev/cpuset/background/cpus
echo 0-3 > /dev/cpuset/system-background/cpus
echo 0-7 > /dev/cpuset/restricted/cpus
# PPM
echo 1 > /proc/ppm/enabled
# GPU Mode
echo 0 > /proc/gpufreq/gpufreq_opp_freq
# Touchpanel
echo 0 > /proc/touchpanel/oppo_tp_limit_enable
echo 1 > /proc/touchpanel/oppo_tp_direction
# GED
echo 0 > /sys/module/ged/parameters/gx_game_mode
echo 0 > /sys/module/ged/parameters/gx_force_cpu_boost
echo 0 > /sys/module/ged/parameters/gx_boost_on
echo 0 > /sys/module/ged/parameters/boost_gpu_enable
echo 1 > /sys/module/ged/parameters/ged_smart_boost
echo 0 > /sys/module/ged/parameters/boost_amp
echo 0 > /sys/module/ged/parameters/boost_extra
echo 0 > /sys/module/ged/parameters/enable_cpu_boost
echo 0 > /sys/module/ged/parameters/enable_gpu_boost
echo 0 > /sys/module/ged/parameters/enable_game_self_frc_detect
echo 10 > /sys/module/ged/parameters/gpu_idle
echo 100 > /sys/module/ged/parameters/cpu_boost_policy
echo 0 > /sys/module/ged/parameters/ged_force_mdp_enable
echo 0 > /sys/module/ged/parameters/ged_boost_enable
echo 0 > /sys/module/ged/parameters/gx_frc_mode
;;
1)
###################################
# Power Saving Profile
###################################
# CPU Mode
echo 1 > /proc/cpufreq/cpufreq_power_mode
echo 0 > /sys/devices/system/cpu/eas/enable
echo 0 > /proc/cpufreq/cpufreq_cci_mode
# CPU Governor Tune
echo 50000 > /sys/devices/system/cpu/cpufreq/schedutil/down_rate_limit_us
echo 0 > /sys/devices/system/cpu/cpufreq/schedutil/up_rate_limit_us
# CPU Set
echo 0-7 > /dev/cpuset/top-app/cpus
echo 0-3,6-7 > /dev/cpuset/foreground/boost/cpus
echo 0-3,6-7 > /dev/cpuset/foreground/cpus
echo 0-3 > /dev/cpuset/background/cpus
echo 0-3 > /dev/cpuset/system-background/cpus
echo 0-7 > /dev/cpuset/restricted/cpus
# PPM
echo 1 > /proc/ppm/enabled
# GPU Mode
echo 0 > /proc/gpufreq/gpufreq_opp_freq
# Touchpanel
echo 0 > /proc/touchpanel/oppo_tp_limit_enable
echo 1 > /proc/touchpanel/oppo_tp_direction
# GED
echo 0 > /sys/module/ged/parameters/gx_game_mode
echo 0 > /sys/module/ged/parameters/gx_force_cpu_boost
echo 0 > /sys/module/ged/parameters/gx_boost_on
echo 0 > /sys/module/ged/parameters/boost_gpu_enable
echo 0 > /sys/module/ged/parameters/ged_smart_boost
echo 0 > /sys/module/ged/parameters/boost_amp
echo 0 > /sys/module/ged/parameters/boost_extra
echo 0 > /sys/module/ged/parameters/enable_cpu_boost
echo 0 > /sys/module/ged/parameters/enable_gpu_boost
echo 0 > /sys/module/ged/parameters/enable_game_self_frc_detect
echo 10 > /sys/module/ged/parameters/gpu_idle
echo 100 > /sys/module/ged/parameters/cpu_boost_policy
echo 0 > /sys/module/ged/parameters/ged_force_mdp_enable
echo 0 > /sys/module/ged/parameters/ged_boost_enable
echo 0 > /sys/module/ged/parameters/gx_frc_mode
;;
2)
###################################
# Performance Profile 
###################################
# CPU Mode
echo 3 > /proc/cpufreq/cpufreq_power_mode
echo 1 > /sys/devices/system/cpu/eas/enable
echo 1 > /proc/cpufreq/cpufreq_cci_mode
# CPU Governor Tune
echo 50000 > /sys/devices/system/cpu/cpufreq/schedutil/down_rate_limit_us
echo 0 > /sys/devices/system/cpu/cpufreq/schedutil/up_rate_limit_us
# CPU Set
echo 0-7 > /dev/cpuset/top-app/cpus
echo 0-3,6-7 > /dev/cpuset/foreground/boost/cpus
echo 0-3,6-7 > /dev/cpuset/foreground/cpus
echo 0 > /dev/cpuset/background/cpus
echo 0-3 > /dev/cpuset/system-background/cpus
echo 0-3 > /dev/cpuset/restricted/cpus
# PPM
echo 0 > /proc/ppm/enabled
# GPU Mode
echo 800000 > /proc/gpufreq/gpufreq_opp_freq
# Touchpanel
echo 0 > /proc/touchpanel/oppo_tp_limit_enable
echo 1 > /proc/touchpanel/oppo_tp_direction
# GED
echo 1 > /sys/module/ged/parameters/gx_game_mode
echo 1 > /sys/module/ged/parameters/gx_force_cpu_boost
echo 1 > /sys/module/ged/parameters/gx_boost_on
echo 1 > /sys/module/ged/parameters/boost_gpu_enable
echo 0 > /sys/module/ged/parameters/ged_smart_boost
echo 1 > /sys/module/ged/parameters/boost_amp
echo 1 > /sys/module/ged/parameters/boost_extra
echo 1 > /sys/module/ged/parameters/enable_cpu_boost
echo 1 > /sys/module/ged/parameters/enable_gpu_boost
echo 1 > /sys/module/ged/parameters/enable_game_self_frc_detect
echo 10 > /sys/module/ged/parameters/gpu_idle
echo 100 > /sys/module/ged/parameters/cpu_boost_policy
echo 0 > /sys/module/ged/parameters/ged_force_mdp_enable
echo 1 > /sys/module/ged/parameters/ged_boost_enable
echo 1 > /sys/module/ged/parameters/gx_frc_mode
;;
esac
