#!/bin/bash
#
# $1: dir for miui
# $2: dir for original
#

for file in `find $1 -name "*.smali"`
do
        newfile=${file/$1/$2}
        if [ ! -f "$newfile" ]
        then
                mkdir -p `dirname $newfile`
                echo "add smali from miui: $file"
                cp $file $newfile
        fi
done
if [ -z "$PORT_ROOT" ]
then
    KEYPATH=${KEY_PATH:=.}
else
    KEYPATH=${KEY_PATH:=$PORT_ROOT/tools}
fi

APKTOOL=$KEYPATH/apktool
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

        cd $BUILD_OUT/framework/smali && cat ../../../other/framework.jar_file_not_exist | cpio -o > ../../cpio.nofile
        cd ../../framework-miui/smali && cpio -idv < ../../cpio.nofile
        cd ../../../
        for file in `more other/framework.jar_file_not_exist`; do
                rm -rf $BUILD_OUT/framework/smali/$file
        done

	$APKTOOL b "$BUILD_OUT/framework-miui" "$BUILD_OUT/framework-miui.jar"
	mkdir -p "$BUILD_OUT/ZIP/system/framework"
	cp "$BUILD_OUT/framework-miui.jar" "$BUILD_OUT/ZIP/system/framework/framework-miui.jar"
fi
