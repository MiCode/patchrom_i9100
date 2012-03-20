.class public Lcom/sec/android/app/callsetting/videocall/PresetImage;
.super Landroid/app/Activity;
.source "PresetImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/callsetting/videocall/PresetImage$DefaultClickListener;,
        Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;
    }
.end annotation


# static fields
.field public static final THUMBNAIL_PROJECTION_VIDEOS:[Ljava/lang/String;

.field private static final mContext:Landroid/content/Context;

.field public static mUriVideos:Landroid/net/Uri;


# instance fields
.field private final INVALID_VIDEO_FILE:I

.field private final MAX_OUTPUT_X:I

.field private final MAX_OUTPUT_Y:I

.field private final NOT_ENOUGH_SPACE:I

.field private final REQUEST_ATTACH_PHOTO_FROM_CAMERA:I

.field private final REQUEST_ATTACH_VIDEO_FROM_CAMERA:I

.field private final REQUEST_PICK_PHOTO_FROM_GALLERY:I

.field private final REQUEST_PICK_VIDEO_FROM_GALLERY:I

.field private final UNABLE_TO_PLAY_VIDEO:I

.field private btnChangePreset:Landroid/widget/Button;

.field changeDialog:Landroid/app/AlertDialog;

.field isVideoContents:Z

.field private mImageButton:Landroid/widget/ImageButton;

.field outputX:I

.field outputY:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->mContext:Landroid/content/Context;

    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->THUMBNAIL_PROJECTION_VIDEOS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    const/16 v0, 0x32

    iput v0, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->REQUEST_PICK_PHOTO_FROM_GALLERY:I

    .line 88
    const/16 v0, 0x33

    iput v0, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->REQUEST_PICK_VIDEO_FROM_GALLERY:I

    .line 89
    const/16 v0, 0x34

    iput v0, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->REQUEST_ATTACH_PHOTO_FROM_CAMERA:I

    .line 90
    const/16 v0, 0x35

    iput v0, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->REQUEST_ATTACH_VIDEO_FROM_CAMERA:I

    .line 93
    const/16 v0, 0x36

    iput v0, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->UNABLE_TO_PLAY_VIDEO:I

    .line 94
    const/16 v0, 0x37

    iput v0, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->NOT_ENOUGH_SPACE:I

    .line 95
    const/16 v0, 0x38

    iput v0, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->INVALID_VIDEO_FILE:I

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->isVideoContents:Z

    .line 108
    const/16 v0, 0x16e

    iput v0, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->MAX_OUTPUT_X:I

    .line 109
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->MAX_OUTPUT_Y:I

    .line 275
    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/callsetting/videocall/PresetImage;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/callsetting/videocall/PresetImage;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->pickImageFromGallery()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/callsetting/videocall/PresetImage;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->pickVideoFromGallery()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/callsetting/videocall/PresetImage;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->capturePicture()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/callsetting/videocall/PresetImage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->checkRemainingSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/callsetting/videocall/PresetImage;J)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->recordVideo(J)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private capturePicture()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 351
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 353
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 354
    const-string v1, "aspectX"

    iget v2, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->outputX:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    const-string v1, "aspectY"

    iget v2, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->outputY:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 356
    const-string v1, "outputX"

    iget v2, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->outputX:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    const-string v1, "outputY"

    iget v2, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->outputY:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 358
    return-object v0
.end method

.method private checkRemainingSize()J
    .locals 12

    .prologue
    .line 317
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    .line 318
    .local v7, storageDirectory:Ljava/lang/String;
    new-instance v6, Landroid/os/StatFs;

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 319
    .local v6, stat:Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v10, v10

    mul-long v2, v8, v10

    .line 320
    .local v2, remainSize:J
    const-wide/16 v0, 0x0

    .line 321
    .local v0, margin:J
    mul-long v8, v2, v0

    sub-long v4, v2, v8

    .line 322
    .local v4, sizeLimit:J
    const-string v8, "PresetImage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checked sizeLimit is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-wide v4
.end method

.method private checkVideo(Landroid/net/Uri;)Z
    .locals 9
    .parameter "UriVideos"

    .prologue
    .line 371
    const/4 v8, 0x0

    .line 372
    .local v8, isVideoOk:Z
    move-object v1, p1

    .line 373
    .local v1, tempUriVideos:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 375
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v2, Lcom/sec/android/app/callsetting/videocall/PresetImage;->THUMBNAIL_PROJECTION_VIDEOS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 379
    .local v6, cursorVideos:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 380
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 381
    const/4 v8, 0x1

    .line 387
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 388
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    .end local v6           #cursorVideos:Landroid/database/Cursor;
    :cond_1
    :goto_1
    const-string v2, "PresetImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result of video validation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return v8

    .line 383
    .restart local v6       #cursorVideos:Landroid/database/Cursor;
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 390
    .end local v6           #cursorVideos:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 391
    .local v7, e:Ljava/lang/Exception;
    const-string v2, "PresetImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private overlay(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "bmp1"
    .parameter "bmp2"

    .prologue
    const/4 v5, 0x0

    .line 677
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 678
    .local v0, bmOverlay:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 679
    .local v1, canvas:Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, p1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 680
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, p2, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 681
    return-object v0
.end method

.method private pickImageFromGallery()Landroid/content/Intent;
    .locals 6

    .prologue
    const/16 v5, 0x16e

    const/16 v4, 0x12c

    const/4 v3, 0x1

    .line 328
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 329
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const-string v1, "onlyJpg"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 331
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v1, "aspectX"

    iget v2, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->outputX:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 333
    const-string v1, "aspectY"

    iget v2, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->outputY:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    const-string v1, "outputX"

    iget v2, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->outputX:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    const-string v1, "outputY"

    iget v2, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->outputY:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 337
    return-object v0
.end method

.method private pickVideoFromGallery()Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 341
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 342
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    const-string v1, "com.cooliris.media"

    const-string v2, "com.cooliris.media.Gallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    const-string v1, "only3gp"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 346
    const-string v1, "senderIsVideoCall"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 347
    return-object v0
.end method

.method private recordVideo(J)Landroid/content/Intent;
    .locals 3
    .parameter "sizeLimit"

    .prologue
    .line 362
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.sizeLimit"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 365
    const-string v1, "videocall_preset"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 366
    return-object v0
.end method

.method private setImage(Landroid/graphics/Bitmap;)V
    .locals 8
    .parameter "photo"

    .prologue
    .line 522
    move-object v4, p1

    .line 523
    .local v4, selectedPhoto:Landroid/graphics/Bitmap;
    const-string v5, "PresetImage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set the Image, the selcted photo is = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :try_start_0
    const-string v5, "preset_photo.jpg"

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 526
    .local v1, fos:Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x4b

    invoke-virtual {p1, v5, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 527
    const-string v3, "data/data/com.sec.android.app.callsetting/files/preset_photo.jpg"

    .line 528
    .local v3, preset_Path:Ljava/lang/String;
    const-string v2, "photo"

    .line 529
    .local v2, preset_Name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preset_path"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 531
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preset_name"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 533
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    .end local v1           #fos:Ljava/io/FileOutputStream;
    .end local v2           #preset_Name:Ljava/lang/String;
    .end local v3           #preset_Path:Ljava/lang/String;
    :goto_0
    return-void

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 536
    const-string v5, "IOException"

    const-string v6, "e"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setVideo(Ljava/lang/String;)V
    .locals 16
    .parameter "selectedVideoPath"

    .prologue
    .line 541
    const-string v2, "PresetImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set the Video, the selcted video is = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 543
    .local v1, cr:Landroid/content/ContentResolver;
    const-wide/16 v14, -0x1

    .line 545
    .local v14, videoId:J
    :try_start_0
    sget-object v2, Lcom/sec/android/app/callsetting/videocall/PresetImage;->mUriVideos:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/callsetting/videocall/PresetImage;->THUMBNAIL_PROJECTION_VIDEOS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 547
    .local v7, cursorVideos:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 548
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 549
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 553
    :cond_0
    if-eqz v7, :cond_1

    .line 554
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .end local v7           #cursorVideos:Landroid/database/Cursor;
    :cond_1
    :goto_0
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 565
    .local v10, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput v2, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 567
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v14, v15, v3, v10}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 570
    .local v13, video:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->outputX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->outputY:I

    const/4 v4, 0x1

    invoke-static {v13, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v13

    .line 572
    :try_start_2
    const-string v2, "preset_video.jpg"

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v9

    .line 573
    .local v9, fos:Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x4b

    invoke-virtual {v13, v2, v3, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 574
    const-string v12, "data/data/com.sec.android.app.callsetting/files/preset_video.jpg"

    .line 575
    .local v12, preset_Path:Ljava/lang/String;
    const-string v11, "video"

    .line 576
    .local v11, preset_Name:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_path"

    invoke-static {v2, v3, v12}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 578
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_name"

    invoke-static {v2, v3, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 580
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_video_path"

    move-object/from16 v0, p1

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 582
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 592
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v11           #preset_Name:Ljava/lang/String;
    .end local v12           #preset_Path:Ljava/lang/String;
    .end local v13           #video:Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 556
    .end local v10           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v8

    .line 557
    .local v8, e:Ljava/lang/Exception;
    const-string v2, "PresetImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 583
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v10       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v13       #video:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v8

    .line 584
    .local v8, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 585
    const-string v2, "IOException"

    const-string v3, "e"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 588
    .end local v8           #e:Ljava/io/IOException;
    .end local v13           #video:Landroid/graphics/Bitmap;
    :catch_2
    move-exception v8

    .line 589
    .local v8, e:Ljava/lang/Exception;
    const-string v2, "Exception casued by thumnail operation"

    const-string v3, "e"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const v2, 0x7f07003d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->displayToast(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updatePresetImage()V
    .locals 15

    .prologue
    const v14, 0x7f02000b

    .line 597
    const-string v12, "PresetImage"

    const-string v13, "updatePresetImage()"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_path"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 603
    .local v10, preset_Path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_name"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 605
    .local v9, preset_Name:Ljava/lang/String;
    const-string v3, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.png"

    .line 609
    .local v3, mDefaultPath:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 610
    .local v5, myResources:Landroid/content/res/Resources;
    const v12, 0x7f02000b

    invoke-virtual {v5, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    .line 612
    .local v2, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v4, Ljava/io/File;

    const-string v12, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.png"

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 613
    .local v4, mdefaultFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 614
    const-string v12, "preset_defaultimage.png"

    const/4 v13, 0x1

    invoke-virtual {p0, v12, v13}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    .line 617
    .local v7, os:Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v12

    new-array v0, v12, [B

    .line 620
    .local v0, data:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .local v11, result:I
    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    .line 621
    const/4 v12, 0x0

    invoke-virtual {v7, v0, v12, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 624
    .end local v0           #data:[B
    .end local v11           #result:I
    :catch_0
    move-exception v1

    .line 626
    .local v1, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 630
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    :goto_1
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 636
    .end local v4           #mdefaultFile:Ljava/io/File;
    .end local v7           #os:Ljava/io/OutputStream;
    :cond_1
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 642
    .end local v2           #is:Ljava/io/InputStream;
    .end local v5           #myResources:Landroid/content/res/Resources;
    :goto_3
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 644
    .local v6, originalImage:Landroid/graphics/Bitmap;
    if-nez v6, :cond_2

    .line 646
    move-object v10, v3

    .line 647
    const-string v9, "preset_default"

    .line 648
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_name"

    invoke-static {v12, v13, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 651
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_path"

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 654
    iget-object v12, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v14}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 674
    :goto_4
    return-void

    .line 627
    .end local v6           #originalImage:Landroid/graphics/Bitmap;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v4       #mdefaultFile:Ljava/io/File;
    .restart local v5       #myResources:Landroid/content/res/Resources;
    .restart local v7       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .line 628
    .local v1, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_5
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 633
    .end local v1           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v4           #mdefaultFile:Ljava/io/File;
    .end local v7           #os:Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    .line 634
    .local v1, e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 638
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v5           #myResources:Landroid/content/res/Resources;
    :catch_3
    move-exception v1

    .line 639
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 658
    .end local v1           #e:Ljava/io/IOException;
    .restart local v6       #originalImage:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_name"

    invoke-static {v12, v13, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 661
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "preset_path"

    invoke-static {v12, v13, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 665
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 666
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020022

    invoke-static {v12, v13}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 667
    .local v8, playImg:Landroid/graphics/Bitmap;
    iget-boolean v12, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->isVideoContents:Z

    if-eqz v12, :cond_3

    .line 668
    iget-object v12, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v6, v8}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->overlay(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4

    .line 671
    :cond_3
    iget-object v12, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v12, v6}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4
.end method


# virtual methods
.method public displayToast(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 455
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 456
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 457
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 460
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 461
    const-string v3, "PresetImage"

    const-string v4, "onActivityResult"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 519
    :goto_0
    return-void

    .line 468
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 472
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 473
    .local v0, extras:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 474
    const-string v3, "PresetImage"

    const-string v4, "Return value from GALLERY (extras) is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 477
    :cond_1
    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 478
    .local v1, photo:Landroid/graphics/Bitmap;
    iget v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->outputX:I

    iget v4, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->outputY:I

    const/4 v5, 0x1

    invoke-static {v1, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 479
    invoke-direct {p0, v1}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 487
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #photo:Landroid/graphics/Bitmap;
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 488
    .restart local v0       #extras:Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 489
    const-string v3, "PresetImage"

    const-string v4, "Return value from GALLERY (extras) is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 492
    :cond_2
    const-string v3, "data"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 493
    .restart local v1       #photo:Landroid/graphics/Bitmap;
    invoke-direct {p0, v1}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->setImage(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 499
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #photo:Landroid/graphics/Bitmap;
    :pswitch_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/callsetting/videocall/PresetImage;->mUriVideos:Landroid/net/Uri;

    .line 500
    const-string v3, "PresetImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUriVideos by REQUEST_PICK_VIDEO_FROM_GALLERY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/callsetting/videocall/PresetImage;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 502
    .local v2, preset_video_path:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->setVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 508
    .end local v2           #preset_video_path:Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/callsetting/videocall/PresetImage;->mUriVideos:Landroid/net/Uri;

    .line 509
    const-string v3, "PresetImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUriVideos by REQUEST_ATTACH_VIDEO_FROM_CAMERA : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/callsetting/videocall/PresetImage;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 511
    .restart local v2       #preset_video_path:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->setVideo(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 468
    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 117
    const-string v0, "Configuration"

    const-string v1, "changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 119
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v8, "PresetImage"

    const-string v9, "onCreate"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v8, 0x7f030019

    invoke-virtual {p0, v8}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->setContentView(I)V

    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V
    invoke-virtual {v0, v10}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_0
    const v8, 0x7f08003c

    invoke-virtual {p0, v8}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    iput-object v8, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    .line 411
    iget-object v8, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    new-instance v9, Lcom/sec/android/app/callsetting/videocall/PresetImage$3;

    invoke-direct {v9, p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage$3;-><init>(Lcom/sec/android/app/callsetting/videocall/PresetImage;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->post(Ljava/lang/Runnable;)Z

    .line 422
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 423
    .local v6, myResources:Landroid/content/res/Resources;
    const v8, 0x7f02000b

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 425
    .local v4, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v5, Ljava/io/File;

    const-string v8, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.png"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    .local v5, mdefaultFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 427
    const-string v8, "preset_defaultimage.png"

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 430
    .local v7, os:Ljava/io/OutputStream;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v8

    new-array v2, v8, [B

    .line 431
    .local v2, data:[B
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 432
    .local v1, count:I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_1

    .line 433
    invoke-virtual {v7, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 440
    .end local v1           #count:I
    .end local v2           #data:[B
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 446
    .end local v5           #mdefaultFile:Ljava/io/File;
    .end local v7           #os:Ljava/io/OutputStream;
    :cond_2
    :goto_1
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 451
    .end local v4           #is:Ljava/io/InputStream;
    .end local v6           #myResources:Landroid/content/res/Resources;
    :goto_2
    return-void

    .line 434
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #mdefaultFile:Ljava/io/File;
    .restart local v6       #myResources:Landroid/content/res/Resources;
    .restart local v7       #os:Ljava/io/OutputStream;
    :catch_0
    move-exception v3

    .line 436
    .local v3, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 443
    .end local v3           #e:Ljava/io/IOException;
    .end local v5           #mdefaultFile:Ljava/io/File;
    .end local v7           #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v3

    .line 444
    .restart local v3       #e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 448
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #is:Ljava/io/InputStream;
    .end local v6           #myResources:Landroid/content/res/Resources;
    :catch_2
    move-exception v3

    .line 449
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 437
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #mdefaultFile:Ljava/io/File;
    .restart local v6       #myResources:Landroid/content/res/Resources;
    .restart local v7       #os:Ljava/io/OutputStream;
    :catch_3
    move-exception v3

    .line 438
    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_7
    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    .line 685
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 686
    .local v1, itemId:I
    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    .line 687
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 688
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 689
    const-string v2, "com.android.phone.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 690
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 691
    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->startActivity(Landroid/content/Intent;)V

    .line 692
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->finish()V

    .line 693
    const/4 v2, 0x1

    .line 695
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 123
    const-string v2, "PresetImage"

    const-string v3, "onResume()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->isVideoContents:Z

    .line 128
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, preset_Name:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 130
    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_video_path"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, videoUri:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 134
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/callsetting/videocall/PresetImage;->mUriVideos:Landroid/net/Uri;

    .line 136
    :cond_0
    sget-object v2, Lcom/sec/android/app/callsetting/videocall/PresetImage;->mUriVideos:Landroid/net/Uri;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/android/app/callsetting/videocall/PresetImage;->mUriVideos:Landroid/net/Uri;

    invoke-direct {p0, v2}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->checkVideo(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    const-string v2, "PresetImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUriVideos in onResume :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/app/callsetting/videocall/PresetImage;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->isVideoContents:Z

    .line 150
    .end local v1           #videoUri:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->setListener()V

    .line 151
    invoke-direct {p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->updatePresetImage()V

    .line 154
    iget-object v2, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->isVideoContents:Z

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 155
    const-string v2, "PresetImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clickable attr. in onResume() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->isClickable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void

    .line 140
    .restart local v1       #videoUri:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_path"

    const-string v4, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.png"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 143
    invoke-virtual {p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preset_name"

    const v4, 0x7f0700d5

    invoke-virtual {p0, v4}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 115
    return-void
.end method

.method public setListener()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->mImageButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/app/callsetting/videocall/PresetImage$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage$1;-><init>(Lcom/sec/android/app/callsetting/videocall/PresetImage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->btnChangePreset:Landroid/widget/Button;

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->btnChangePreset:Landroid/widget/Button;

    new-instance v1, Lcom/sec/android/app/callsetting/videocall/PresetImage$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/callsetting/videocall/PresetImage$2;-><init>(Lcom/sec/android/app/callsetting/videocall/PresetImage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    return-void
.end method
