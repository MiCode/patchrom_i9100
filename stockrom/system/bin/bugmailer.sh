#!/system/bin/sh

timestamp=`date +'%Y-%m-%d-%H-%M-%S'`
#storagePath="$EXTERNAL_STORAGE/bugreports"
storagePath="/data/log"
bugreport=$storagePath/dumpstate_force-$timestamp
#screenshotPath="$EXTERNAL_STORAGE/Pictures/Screenshots"
#screenshotPath="/data/log"
#screenshot=$screenshotPath/Screenshot_$timestamp.png

# check screen shot folder
#if [ ! -e $screenshotPath ]; then
#  mkdir $screenshotPath
#fi

# 2011-12-07/systemSW/Debug/ move this job to dumpstate
# take screen shot
# we run this as a bg job in case screencap is stuck
#/system/bin/screencap -p $screenshot &

# run bugreport
/system/bin/dumpstate -k -p -o $bugreport $@

# 2011-12-07/systemSW/Debug/ unnecessary
# make files readable
#chown root.sdcard_rw $bugreport.txt
#chown root.sdcard_rw $screenshot

# 2011-12-07/systemSW/Debug/ unnecessary
# invoke send_bug to look up email accounts and fire intents
# make it convenient to send bugreport to oneself
#/system/bin/send_bug $bugreport.txt $screenshot
