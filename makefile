#
# Makefile for i9100
#

# The original zip file, MUST be specified by each product
local-zip-file     := i9100.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_i9100.zip

# All apps from original ZIP, but has smali files chanded
#local-modified-apps := LogsProvider Phone MediaProvider Settings

# All apks from MIUI
#local-miui-apps     := AntiSpam Backup BugReport CloudService MiuiCompass Contacts DeskClock FileExplorer \
	MiuiHome MiuiSystemUI Mms Monitor Notes PackageInstaller Phone QuickSearchBox SoundRecorder SuperMarket \
	ThemeManager Torch Updater ContactsProvider DownloadProvider DownloadProviderUi TelephonyProvider TelocationProvider

# All apps need to be removed from original ZIP file
#local-remove-apps	:= SystemUI
#local-remove-apps   := AlipayGphone AmsComposer AndroidQQ_Samsung_Seine BuddiesNow cooldict glyder2 \
    ImgoTV iReader kaixin001 Memo MiniDiary MinimalHome mreader PressReader ReadersHub Renren   \
    Sinamicroblog SinaNews SinaStock SinaWeather SocialHub Tencentmicroblog  \
    TomEbook Tonghuashun TouchWiz30Launcher Youku_Samsung_seine MusicPlayer \
    MediaHub PhotoRetouching VideoEditor thinkdroid QYVideoClient \
    Days DigitalClock Dlna DualClock Email EmailWidget FTC FTM FTS Kobo \
    Microbesgl Navigator PostIt Protips QuickSearchBox SamsungApps SamsungAppsUNA3 \
    SamsungIM SamsungWidget_ProgramMonitor SecretWallpaper1 SecretWallpaper2 \
    SevenEngine SnsAccountKx SnsAccountRr SnsDisclaimer SnsImageCache SnsProvider \
    Tasks TasksProvider Term TrimApp TwCalendarAppWidget Zinio \
    samsungappswidget syncmldm viva_tts

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:=

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
local-zip-misc:
