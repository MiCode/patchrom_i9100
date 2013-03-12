echo 0 > /sys/devices/system/cpu/cpufreq/busfreq_level_lock
echo userspace > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 1000000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
sleep 10
echo 1000000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_setspeed
sleep 30
echo -1 > /sys/devices/system/cpu/cpufreq/busfreq_level_lock
echo ondemand > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
sleep 5
echo 5 > /sys/devices/system/cpu/cpufreq/ondemand/down_differential
echo 85 > /sys/devices/system/cpu/cpufreq/ondemand/up_threshold
