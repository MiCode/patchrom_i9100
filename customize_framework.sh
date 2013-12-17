#!/bin/bash
# $1: dir for miui
# $2: dir for original

APKTOOL="$PORT_ROOT/tools/apktool --quiet"
BUILD_OUT=out

SEP_FRAME="framework2.jar.out"

function appendSmaliPart() {
    cd overlay
    for file in `find $1/smali -name *.part`
    do
        filepath=`dirname $file`
        filename=`basename $file .part`
        dstfile="../out/$filepath/$filename"
        cat $file >> $dstfile
    done
    cd ..
}

if [ $2 = "$BUILD_OUT/framework" ]
then
    # remove all files at out/framework those exist in framework2.jar.out
    for file2 in `find framework2.jar.out -name *.smali`; do
            file=${file2/framework2.jar.out/$BUILD_OUT\/framework}
            echo "rm file: $file"
            rm -rf "$file"
    done

	rm -rf "$BUILD_OUT/framework/smali/com/google/android/mms"
	cp -f $1/smali/android/app/DownloadManager* $2/smali/android/app/
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

	cp -rf "$BUILD_OUT/framework_miui/smali/com/google/android/mms" "$BUILD_OUT/framework2/smali/com/google/android"
	#mv "$BUILD_OUT/$SEP_FRAME/smali/miui/"  "$BUILD_OUT/framework2/smali/miui"
fi

if [ $2 = "$BUILD_OUT/android.policy" ]
then
	appendSmaliPart "android.policy"

    for file in overlay/android.policy/*.patch
    do
        cp $file out/
        cd out
        git.apply `basename $file`
        cd ..
        for file2 in `find $2 -name *.rej`
        do
            echo "$file2 fail"
            exit 1
        done
    done
fi
