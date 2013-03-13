#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
BUILD_OUT=out

SEP_FRAME="framework2.jar.out"

if [ $2 = "$BUILD_OUT/framework" ]
then
    # remove all files at out/framework those exist in framework2.jar.out
    for file2 in `find framework2.jar.out -name *.smali`; do
            file=${file2/framework2.jar.out/$BUILD_OUT\/framework}
            echo "rm file: $file"
            rm -rf "$file"
    done

    # move some smali to create a separate $SEP_FRAME.jar
    # including: smali/miui smali/android/widget
	#mkdir -p "$BUILD_OUT/$SEP_FRAME/smali"
    #rm -rf $BUILD_OUT/$SEP_FRAME/smali/miui
	#mv "$BUILD_OUT/framework/smali/miui" "$BUILD_OUT/$SEP_FRAME/smali"
fi

if [ $2 = "$BUILD_OUT/framework2" ]
then
    # remove all files at out/framework1 those exist in framework.jar.out
    for file2 in `find framework.jar.out -name *.smali`; do
            file=${file2/framework.jar.out/$BUILD_OUT\/framework2}
            echo "rm file: $file"
            rm -rf "$file"
    done

	#mv "$BUILD_OUT/$SEP_FRAME/smali/miui/"  "$BUILD_OUT/framework2/smali/miui"
fi
