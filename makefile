#
# Makefile for gnote
#

# The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_i9300.zip

# the location for local-ota to save target-file
local-previous-target-dir := ~/workspace/ota_base/i9300_4.1

# All apps from original ZIP, but has smali files chanded
local-modified-apps := OriginalSettings Camera

local-modified-jars :=

# All apks from MIUI
local-miui-removed-apps := MediaProvider Stk

local-miui-modified-apps := MiuiHome Settings Phone Mms ThemeManager MiuiSystemUI

include phoneapps.mk

# To include the local targets before and after zip the final ZIP file, 
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-pre-zip-misc
local-after-zip:= local-put-to-phone

# The local targets after the zip file is generated, could include 'zip2sd' to 
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

# To define any local-target
updater := $(ZIP_DIR)/META-INF/com/google/android/updater-script
pre_install_data_packages := $(TMP_DIR)/pre_install_apk_pkgname.txt
local-pre-zip-misc:
	cp other/spn-conf.xml $(ZIP_DIR)/system/etc/spn-conf.xml
	cp other/build.prop $(ZIP_DIR)/system/build.prop
	cp stockrom/system/app/FFFFFFFF000000000000000000000001.drbin $(ZIP_DIR)/system/app
	cp -r stockrom/system/app/mcRegistry $(ZIP_DIR)/system/app
	rm -rf $(ZIP_DIR)/system/csc
	rm -rf $(pre_install_data_packages)
	for apk in $(ZIP_DIR)/data/media/preinstall_apps/*.apk; do\
		$(AAPT) d --values resources $$apk | grep 'id=127 packageCount' | sed -e "s/^.*name=//" >> $(pre_install_data_packages);\
	done
	more $(pre_install_data_packages) | wc -l > $(ZIP_DIR)/system/etc/enforcecopyinglibpackages.txt
	more $(pre_install_data_packages) >> $(ZIP_DIR)/system/etc/enforcecopyinglibpackages.txt

out/framework2.jar : out/framework.jar

%.phone : out/%.jar
	@echo push -- to --- phone
	adb remount
	adb push $< /system/framework
	adb shell chmod 644 /system/framework/$*.jar
	#adb shell stop
	#adb shell start
	#adb reboot

%.sign-plat : out/%
#%.sign-plat : /home/gexudong/libra.jbmiui/out/target/product/maguro/system/app/%
	java -jar $(TOOL_DIR)/signapk.jar $(PORT_ROOT)/build/security/platform.x509.pem $(PORT_ROOT)/build/security/platform.pk8  $< $<.signed
	@echo push -- to --- phone
	adb remount
	adb push $<.signed /system/app/$*
	adb shell chmod 644 /system/app/$*
