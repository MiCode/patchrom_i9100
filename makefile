#
# Makefile for i9100
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_i9100.zip

# All apps from original ZIP, but has smali files chanded
local-modified-apps := Phone

local-modified-jars := framework2

# All apks from MIUI
local-miui-apps     := AntiSpam Backup BugReport CloudService MiuiCompass Contacts DeskClock FileExplorer \
	MiuiSystemUI Mms Monitor Notes PackageInstaller QuickSearchBox SoundRecorder SuperMarket \
	ThemeManager Updater ContactsProvider DownloadProvider DownloadProviderUi TelephonyProvider TelocationProvider \
	Music Provision Gallery2

local-miui-modified-apps := MiuiHome Settings

# All apps need to be removed from original ZIP file
local-remove-apps   := Memo TouchWiz30Launcher MusicPlayer FTC FTM FTS TwCalendarAppWidget \
	SystemUI RootExplorer SetupWizard MyFiles RebootTool Superuser CWMManager GoogleQuickSearchBox \
	DioPenChineseIME Gallery3D SecDownloadProviderUi SecDownloadProvider VoiceRecorder ClockPackage \
	JobManager VideoPlayer


# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := add-lbesec-miui local-fix-updater-script
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
local-fix-updater-script:
	cp other/boot.img $(ZIP_DIR)
	cp other/AxT9IME.apk $(ZIP_DIR)/system/app
	more $(updater) | sed  -e "/\/su\"/a\set_perm(0, 0, 06755, \"/system/xbin/invoke-as\");" > $(updater).new
	mv $(updater).new $(updater)

local-put-to-phone:
	adb shell rm /sdcard/MIUI_i9100.zip
	adb push out/MIUI_i9100.zip /sdcard/
	adb reboot recovery
	@echo press ener after flash the image
	@read
	adb logcat -c
	adb push ../wpa_supplicant.conf /data/misc/wifi

local-ota-update:
	rm $(ZIP_DIR)/system/app/SuperMarket.apk
	rm $(ZIP_DIR)/system/app/Gallery2.apk
	
