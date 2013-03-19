.class public Lcom/sec/android/app/camera/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ImageManager$1;,
        Lcom/sec/android/app/camera/ImageManager$EmptyImageList;,
        Lcom/sec/android/app/camera/ImageManager$DataLocation;,
        Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    }
.end annotation


# static fields
.field public static final CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String; = null

.field public static final CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String; = null

.field public static final INCLUDE_DRM_IMAGES:I = 0x2

.field public static final INCLUDE_IMAGES:I = 0x1

.field public static final INCLUDE_VIDEOS:I = 0x4

.field public static final SORT_ASCENDING:I = 0x1

.field public static final SORT_DESCENDING:I = 0x2

.field private static final STORAGE_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "ImageManager"

.field private static final THUMB_URI:Landroid/net/Uri;

.field private static final VIDEO_STORAGE_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/app/camera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    .line 62
    sget-object v0, Landroid/provider/MediaStore$Images$Thumbnails;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/app/camera/ImageManager;->THUMB_URI:Landroid/net/Uri;

    .line 64
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageManager;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    .line 145
    sget-object v0, Lcom/sec/android/app/camera/ImageManager;->CAMERA_IMAGE_BUCKET_NAME:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/app/camera/ImageManager;->getBucketId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 439
    return-void
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;
    .locals 12
    .parameter "cr"
    .parameter "title"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "directory"
    .parameter "filename"
    .parameter "source"
    .parameter "jpegData"
    .parameter "degree"

    .prologue
    .line 264
    const/4 v6, 0x0

    .line 265
    .local v6, outputStream:Ljava/io/OutputStream;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 267
    .local v5, filePath:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p5

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 268
    .local v2, dir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 269
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 270
    :cond_0
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    .local v4, file:Ljava/io/File;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 272
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .local v7, outputStream:Ljava/io/OutputStream;
    if-eqz p7, :cond_2

    .line 273
    :try_start_1
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x4b

    move-object/from16 v0, p7

    invoke-virtual {v0, v9, v10, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 274
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, p9, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 286
    :goto_0
    invoke-static {v7}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 289
    new-instance v8, Landroid/content/ContentValues;

    const/4 v9, 0x7

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 290
    .local v8, values:Landroid/content/ContentValues;
    const-string v9, "title"

    invoke-virtual {v8, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string v9, "_display_name"

    move-object/from16 v0, p6

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v9, "datetaken"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 297
    const-string v9, "mime_type"

    const-string v10, "image/jpeg"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v9, "orientation"

    const/4 v10, 0x0

    aget v10, p9, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    const-string v9, "_data"

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    if-eqz p4, :cond_1

    .line 302
    const-string v9, "latitude"

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 303
    const-string v9, "longitude"

    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 306
    :cond_1
    sget-object v9, Lcom/sec/android/app/camera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v9, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    move-object v6, v7

    .end local v2           #dir:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    .end local v7           #outputStream:Ljava/io/OutputStream;
    .end local v8           #values:Landroid/content/ContentValues;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    :goto_1
    return-object v9

    .line 276
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :cond_2
    :try_start_2
    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 277
    const/4 v9, 0x0

    invoke-static {v5}, Lcom/sec/android/app/camera/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v10

    aput v10, p9, v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 279
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 280
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    .end local v7           #outputStream:Ljava/io/OutputStream;
    .local v3, ex:Ljava/io/FileNotFoundException;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    :goto_2
    :try_start_3
    const-string v9, "ImageManager"

    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 281
    const/4 v9, 0x0

    .line 286
    invoke-static {v6}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 282
    .end local v3           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 283
    .local v3, ex:Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v9, "ImageManager"

    invoke-static {v9, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 284
    const/4 v9, 0x0

    .line 286
    invoke-static {v6}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v3           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_4
    invoke-static {v6}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v9

    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v2       #dir:Ljava/io/File;
    .restart local v4       #file:Ljava/io/File;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7           #outputStream:Ljava/io/OutputStream;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    goto :goto_4

    .line 282
    .end local v6           #outputStream:Ljava/io/OutputStream;
    .restart local v7       #outputStream:Ljava/io/OutputStream;
    :catch_2
    move-exception v3

    move-object v6, v7

    .end local v7           #outputStream:Ljava/io/OutputStream;
    .restart local v6       #outputStream:Ljava/io/OutputStream;
    goto :goto_3

    .line 279
    .end local v2           #dir:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    :catch_3
    move-exception v3

    goto :goto_2
.end method

.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[II)Landroid/net/Uri;
    .locals 1
    .parameter "cr"
    .parameter "title"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "directory"
    .parameter "filename"
    .parameter "source"
    .parameter "jpegData"
    .parameter "degree"
    .parameter "weather"

    .prologue
    .line 235
    invoke-static/range {p0 .. p9}, Lcom/sec/android/app/camera/ImageManager;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;

    move-result-object v0

    .line 249
    .local v0, result:Landroid/net/Uri;
    return-object v0
.end method

.method private static checkFsWritable()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 517
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/DCIM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 519
    .local v1, directoryName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 520
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 521
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_1

    .line 537
    :cond_0
    :goto_0
    return v4

    .line 525
    :cond_1
    new-instance v3, Ljava/io/File;

    const-string v5, ".probe"

    invoke-direct {v3, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    .local v3, f:Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 529
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 531
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 534
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    const/4 v4, 0x1

    goto :goto_0

    .line 536
    :catch_0
    move-exception v2

    .line 537
    .local v2, ex:Ljava/io/IOException;
    goto :goto_0
.end method

.method public static ensureOSXCompatibleFolder()V
    .locals 3

    .prologue
    .line 161
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/100ANDRO"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v0, nnnAAAAA:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    :cond_0
    return-void
.end method

.method public static getBucketId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "path"

    .prologue
    .line 153
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmptyImageListParam()Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    .locals 2

    .prologue
    .line 493
    new-instance v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/sec/android/app/camera/ImageManager$ImageListParam;-><init>()V

    .line 494
    .local v0, param:Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    .line 495
    return-object v0
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 8
    .parameter "filepath"

    .prologue
    const/4 v7, -0x1

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, degree:I
    const/4 v2, 0x0

    .line 313
    .local v2, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #exif:Landroid/media/ExifInterface;
    .local v3, exif:Landroid/media/ExifInterface;
    move-object v2, v3

    .line 317
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 318
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 320
    .local v4, orientation:I
    if-eq v4, v7, :cond_0

    .line 322
    packed-switch v4, :pswitch_data_0

    .line 338
    .end local v4           #orientation:I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, ex:Ljava/io/IOException;
    const-string v5, "ImageManager"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 324
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v4       #orientation:I
    :pswitch_1
    const/16 v0, 0x5a

    .line 325
    goto :goto_1

    .line 327
    :pswitch_2
    const/16 v0, 0xb4

    .line 328
    goto :goto_1

    .line 330
    :pswitch_3
    const/16 v0, 0x10e

    .line 331
    goto :goto_1

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getImageListParam(Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    .locals 1
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 478
    new-instance v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/sec/android/app/camera/ImageManager$ImageListParam;-><init>()V

    .line 479
    .local v0, param:Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    iput-object p0, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mLocation:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    .line 480
    iput p1, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mInclusion:I

    .line 481
    iput p2, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mSort:I

    .line 482
    iput-object p3, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 483
    return-object v0
.end method

.method public static getLastImageThumbPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.thumbnails/image_last_thumb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastVideoThumbPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.thumbnails/video_last_thumb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSingleImageListParam(Landroid/net/Uri;)Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    .locals 1
    .parameter "uri"

    .prologue
    .line 487
    new-instance v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    invoke-direct {v0}, Lcom/sec/android/app/camera/ImageManager$ImageListParam;-><init>()V

    .line 488
    .local v0, param:Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    iput-object p0, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mSingleImageUri:Landroid/net/Uri;

    .line 489
    return-object v0
.end method

.method public static getTempJpegPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/.tempjpeg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasStorage()Z
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/camera/ImageManager;->hasStorage(Z)Z

    move-result v0

    return v0
.end method

.method public static hasStorage(Z)Z
    .locals 3
    .parameter "requireWriteAccess"

    .prologue
    const/4 v1, 0x1

    .line 546
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, state:Ljava/lang/String;
    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    if-eqz p0, :cond_0

    .line 550
    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->checkFsWritable()Z

    move-result v1

    .line 559
    :cond_0
    :goto_0
    return v1

    .line 555
    :cond_1
    if-nez p0, :cond_2

    const-string v2, "mounted_ro"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 559
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isImage(Lcom/sec/android/app/camera/gallery/IImage;)Z
    .locals 1
    .parameter "image"

    .prologue
    .line 213
    invoke-interface {p0}, Lcom/sec/android/app/camera/gallery/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/ImageManager;->isImageMimeType(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isImageMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 197
    const-string v0, "image/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .locals 10
    .parameter "cr"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 578
    const/4 v7, 0x0

    .line 579
    .local v7, result:Z
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string v0, "volume"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/camera/ImageManager;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 582
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 583
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 584
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 585
    const-string v0, "external"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 587
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 590
    :cond_1
    return v7
.end method

.method static isSingleImageMode(Ljava/lang/String;)Z
    .locals 1
    .parameter "uriString"

    .prologue
    .line 433
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideo(Lcom/sec/android/app/camera/gallery/IImage;)Z
    .locals 1
    .parameter "image"

    .prologue
    .line 222
    instance-of v0, p0, Lcom/sec/android/app/camera/gallery/VideoObject;

    return v0
.end method

.method public static makeEmptyImageList()Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 2

    .prologue
    .line 506
    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->getEmptyImageListParam()Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$ImageListParam;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v0

    return-object v0
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 5
    .parameter "cr"
    .parameter "uri"
    .parameter "sort"

    .prologue
    const/4 v4, 0x0

    .line 411
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, uriString:Ljava/lang/String;
    :goto_0
    const-string v2, "content://drm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 418
    sget-object v2, Lcom/sec/android/app/camera/ImageManager$DataLocation;->ALL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    const/4 v3, 0x2

    invoke-static {p0, v2, v3, p2, v4}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v2

    .line 427
    :goto_1
    return-object v2

    .line 411
    .end local v1           #uriString:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 420
    .restart local v1       #uriString:Ljava/lang/String;
    :cond_1
    const-string v2, "content://media/external/video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 421
    sget-object v2, Lcom/sec/android/app/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    const/4 v3, 0x4

    invoke-static {p0, v2, v3, p2, v4}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v2

    goto :goto_1

    .line 423
    :cond_2
    invoke-static {v1}, Lcom/sec/android/app/camera/ImageManager;->isSingleImageMode(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 424
    invoke-static {p0, p1}, Lcom/sec/android/app/camera/ImageManager;->makeSingleImageList(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v2

    goto :goto_1

    .line 426
    :cond_3
    if-eqz p1, :cond_4

    const-string v2, "bucketId"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, bucketId:Ljava/lang/String;
    :goto_2
    sget-object v2, Lcom/sec/android/app/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, p2, v0}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v2

    goto :goto_1

    .line 426
    .end local v0           #bucketId:Ljava/lang/String;
    :cond_4
    const-string v0, ""

    goto :goto_2
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 2
    .parameter "cr"
    .parameter "location"
    .parameter "inclusion"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 500
    invoke-static {p1, p2, p3, p4}, Lcom/sec/android/app/camera/ImageManager;->getImageListParam(Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    move-result-object v0

    .line 502
    .local v0, param:Lcom/sec/android/app/camera/ImageManager$ImageListParam;
    invoke-static {p0, v0}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$ImageListParam;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v1

    return-object v1
.end method

.method public static makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$ImageListParam;)Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 17
    .parameter "cr"
    .parameter "param"

    .prologue
    .line 344
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mLocation:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    .line 345
    .local v13, location:Lcom/sec/android/app/camera/ImageManager$DataLocation;
    move-object/from16 v0, p1

    iget v8, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mInclusion:I

    .line 346
    .local v8, inclusion:I
    move-object/from16 v0, p1

    iget v5, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mSort:I

    .line 347
    .local v5, sort:I
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mBucketId:Ljava/lang/String;

    .line 348
    .local v6, bucketId:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mSingleImageUri:Landroid/net/Uri;

    .line 349
    .local v14, singleImageUri:Landroid/net/Uri;
    move-object/from16 v0, p1

    iget-boolean v9, v0, Lcom/sec/android/app/camera/ImageManager$ImageListParam;->mIsEmptyImageList:Z

    .line 351
    .local v9, isEmptyImageList:Z
    if-nez v9, :cond_0

    if-nez p0, :cond_1

    .line 352
    :cond_0
    new-instance v12, Lcom/sec/android/app/camera/ImageManager$EmptyImageList;

    const/4 v1, 0x0

    invoke-direct {v12, v1}, Lcom/sec/android/app/camera/ImageManager$EmptyImageList;-><init>(Lcom/sec/android/app/camera/ImageManager$1;)V

    .line 405
    :goto_0
    return-object v12

    .line 355
    :cond_1
    if-eqz v14, :cond_2

    .line 356
    new-instance v12, Lcom/sec/android/app/camera/gallery/SingleImageList;

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v14}, Lcom/sec/android/app/camera/gallery/SingleImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_0

    .line 360
    :cond_2
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/sec/android/app/camera/ImageManager;->hasStorage(Z)Z

    move-result v7

    .line 363
    .local v7, haveSdCard:Z
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v11, l:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/camera/gallery/BaseImageList;>;"
    if-eqz v7, :cond_4

    sget-object v1, Lcom/sec/android/app/camera/ImageManager$DataLocation;->INTERNAL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    if-eq v13, v1, :cond_4

    .line 366
    and-int/lit8 v1, v8, 0x1

    if-eqz v1, :cond_3

    .line 367
    new-instance v1, Lcom/sec/android/app/camera/gallery/ImageList;

    sget-object v3, Lcom/sec/android/app/camera/ImageManager;->STORAGE_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/camera/ImageManager;->THUMB_URI:Landroid/net/Uri;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/gallery/ImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_3
    and-int/lit8 v1, v8, 0x4

    if-eqz v1, :cond_4

    .line 371
    new-instance v1, Lcom/sec/android/app/camera/gallery/VideoList;

    sget-object v2, Lcom/sec/android/app/camera/ImageManager;->VIDEO_STORAGE_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v5, v6}, Lcom/sec/android/app/camera/gallery/VideoList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    :cond_4
    sget-object v1, Lcom/sec/android/app/camera/ImageManager$DataLocation;->INTERNAL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    if-eq v13, v1, :cond_5

    sget-object v1, Lcom/sec/android/app/camera/ImageManager$DataLocation;->ALL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    if-ne v13, v1, :cond_7

    .line 375
    :cond_5
    and-int/lit8 v1, v8, 0x1

    if-eqz v1, :cond_6

    .line 376
    new-instance v1, Lcom/sec/android/app/camera/gallery/ImageList;

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Landroid/provider/MediaStore$Images$Thumbnails;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/gallery/ImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    :cond_6
    and-int/lit8 v1, v8, 0x2

    if-eqz v1, :cond_7

    .line 382
    new-instance v1, Lcom/sec/android/app/camera/gallery/DrmImageList;

    sget-object v2, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v5, v6}, Lcom/sec/android/app/camera/gallery/DrmImageList;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_7
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 390
    .local v10, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/gallery/BaseImageList;>;"
    :cond_8
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 391
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/camera/gallery/BaseImageList;

    .line 392
    .local v15, sublist:Lcom/sec/android/app/camera/gallery/BaseImageList;
    invoke-virtual {v15}, Lcom/sec/android/app/camera/gallery/BaseImageList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 393
    invoke-virtual {v15}, Lcom/sec/android/app/camera/gallery/BaseImageList;->close()V

    .line 394
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 398
    .end local v15           #sublist:Lcom/sec/android/app/camera/gallery/BaseImageList;
    :cond_9
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 399
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/camera/gallery/BaseImageList;

    .line 400
    .local v12, list:Lcom/sec/android/app/camera/gallery/BaseImageList;
    goto/16 :goto_0

    .line 403
    .end local v12           #list:Lcom/sec/android/app/camera/gallery/BaseImageList;
    :cond_a
    new-instance v16, Lcom/sec/android/app/camera/gallery/ImageListUber;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/android/app/camera/gallery/IImageList;

    move-object/from16 v0, v16

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/camera/gallery/ImageListUber;-><init>([Lcom/sec/android/app/camera/gallery/IImageList;I)V

    .local v16, uber:Lcom/sec/android/app/camera/gallery/ImageListUber;
    move-object/from16 v12, v16

    .line 405
    goto/16 :goto_0
.end method

.method public static makeSingleImageList(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 1
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 510
    invoke-static {p1}, Lcom/sec/android/app/camera/ImageManager;->getSingleImageListParam(Landroid/net/Uri;)Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$ImageListParam;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v0

    return-object v0
.end method

.method private static query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "resolver"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v1, 0x0

    .line 566
    if-nez p0, :cond_0

    .line 572
    :goto_0
    return-object v1

    .line 569
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method

.method public static roundOrientation(I)I
    .locals 3
    .parameter "orientationInput"

    .prologue
    .line 171
    move v0, p0

    .line 172
    .local v0, orientation:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 176
    :cond_0
    rem-int/lit16 v0, v0, 0x168

    .line 178
    const/16 v2, 0x2d

    if-ge v0, v2, :cond_1

    .line 179
    const/4 v1, 0x0

    .line 190
    .local v1, retVal:I
    :goto_0
    return v1

    .line 180
    .end local v1           #retVal:I
    :cond_1
    const/16 v2, 0x87

    if-ge v0, v2, :cond_2

    .line 181
    const/16 v1, 0x5a

    .restart local v1       #retVal:I
    goto :goto_0

    .line 182
    .end local v1           #retVal:I
    :cond_2
    const/16 v2, 0xe1

    if-ge v0, v2, :cond_3

    .line 183
    const/16 v1, 0xb4

    .restart local v1       #retVal:I
    goto :goto_0

    .line 184
    .end local v1           #retVal:I
    :cond_3
    const/16 v2, 0x13b

    if-ge v0, v2, :cond_4

    .line 185
    const/16 v1, 0x10e

    .restart local v1       #retVal:I
    goto :goto_0

    .line 187
    .end local v1           #retVal:I
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #retVal:I
    goto :goto_0
.end method

.method public static setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V
    .locals 4
    .parameter "cr"
    .parameter "uri"
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 226
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 227
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 228
    invoke-virtual {p0, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 229
    return-void
.end method
