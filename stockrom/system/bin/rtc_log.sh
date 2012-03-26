echo "System just booted..." >> /data/log/rtc.log

while true ; do
    UPTIME="`cat /proc/uptime`"
    DATE="`date`"
    RTC0="`cat /sys/class/rtc/rtc0/date` `cat /sys/class/rtc/rtc0/time` `cat /sys/class/rtc/rtc0/since_epoch`"
    RTC1="`cat /sys/class/rtc/rtc1/date` `cat /sys/class/rtc/rtc1/time` `cat /sys/class/rtc/rtc1/since_epoch`"
    echo "$UPTIME	$DATE	rtc0: $RTC0	rtc1: $RTC1" >> /data/log/rtc.log
    sleep 3600
done
