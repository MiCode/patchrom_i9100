#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
BUILD_OUT=out

if [ $2 = "$BUILD_OUT/framework" ]
then
        for file2 in `find framework2.jar.out -name *.smali`; do
                file=${file2/framework2.jar.out/$BUILD_OUT\/framework}
                echo "rm file: $file"
                rm -rf "$file"
        done

	mkdir -p "$BUILD_OUT/framework-miui/smali"
	touch "$BUILD_OUT/framework-miui/apktool.yml"
	echo "version: 1.4.3" >> "$BUILD_OUT/framework-miui/apktool.yml"
	echo "apkFileName: framework-miui.jar" >> "$BUILD_OUT/framework-miui/apktool.yml"
	mv "$BUILD_OUT/framework/smali/miui" "$BUILD_OUT/framework-miui/smali"
	mkdir -p "$BUILD_OUT/framework-miui/smali/com/samsung"
	mv "$BUILD_OUT/framework/smali/com/samsung" "$BUILD_OUT/framework-miui/smali/com/samsung"
	mkdir -p "$BUILD_OUT/framework-miui/smali/android"
    mv "$BUILD_OUT/framework/smali/android/widget" "$BUILD_OUT/framework-miui/smali/android/widget"

        cd $BUILD_OUT/framework/smali && cat ../../../other/framework.jar_file_not_exist | cpio -o > ../../cpio.nofile
        cd ../../framework-miui/smali && cpio -id < ../../cpio.nofile
        cd ../../../
        for file in `more other/framework.jar_file_not_exist`; do
                rm -rf $BUILD_OUT/framework/smali/$file
        done

	$APKTOOL b "$BUILD_OUT/framework-miui" "$BUILD_OUT/framework-miui.jar"
	mkdir -p "$BUILD_OUT/ZIP/system/framework"
	cp "$BUILD_OUT/framework-miui.jar" "$BUILD_OUT/ZIP/system/framework/framework-miui.jar"
fi
