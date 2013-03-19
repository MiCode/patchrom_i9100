.class public Lcom/sec/android/app/camera/ImageSavingUtils;
.super Ljava/lang/Object;
.source "ImageSavingUtils.java"


# static fields
.field public static final CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String; = null

.field public static final CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String; = null

.field public static final CAMERA_IMAGE_SNS_MODE_MMC:Ljava/lang/String; = null

.field public static final CAMERA_IMAGE_SNS_MODE_PHONE:Ljava/lang/String; = null

.field protected static final TAG:Ljava/lang/String; = "ImageSavingUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DCIM/Camera"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ShareShot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_SNS_MODE_PHONE:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->getExternalSDStoragePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ShareShot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_SNS_MODE_MMC:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addImage(ILjava/lang/String;Ljava/lang/String;JLandroid/location/Location;Landroid/graphics/Bitmap;[BIII)Z
    .locals 8
    .parameter "shootingMode"
    .parameter "directory"
    .parameter "filename"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "source"
    .parameter "jpegData"
    .parameter "orientation"
    .parameter "whiteBalance"
    .parameter "flashMode"

    .prologue
    .line 100
    const/4 v4, 0x0

    .line 103
    .local v4, outputStream:Ljava/io/OutputStream;
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 105
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 106
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .local v3, file:Ljava/io/File;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 108
    .end local v4           #outputStream:Ljava/io/OutputStream;
    .local v5, outputStream:Ljava/io/OutputStream;
    if-eqz p6, :cond_4

    .line 109
    :try_start_1
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x4b

    invoke-virtual {p6, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 115
    :cond_1
    :goto_0
    invoke-virtual {v3, p3, p4}, Ljava/io/File;->setLastModified(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 124
    if-eqz v5, :cond_2

    .line 125
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 132
    :cond_2
    :goto_1
    const/4 v6, 0x1

    move-object v4, v5

    .end local v0           #dir:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    :cond_3
    :goto_2
    return v6

    .line 111
    .end local v4           #outputStream:Ljava/io/OutputStream;
    .restart local v0       #dir:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    :cond_4
    if-eqz v5, :cond_1

    if-eqz p7, :cond_1

    .line 112
    :try_start_3
    invoke-virtual {v5, p7}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_0

    .line 116
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 117
    .end local v0           #dir:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .local v2, ex:Ljava/io/FileNotFoundException;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    :goto_3
    :try_start_4
    const-string v6, "ImageSavingUtils"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    const/4 v6, 0x0

    .line 124
    if-eqz v4, :cond_3

    .line 125
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 126
    :catch_1
    move-exception v1

    .line 128
    .local v1, e:Ljava/io/IOException;
    const-string v7, "ImageSavingUtils"

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 126
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    .end local v4           #outputStream:Ljava/io/OutputStream;
    .restart local v0       #dir:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    .line 128
    .restart local v1       #e:Ljava/io/IOException;
    const-string v6, "ImageSavingUtils"

    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 119
    .end local v0           #dir:Ljava/io/File;
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #file:Ljava/io/File;
    .end local v5           #outputStream:Ljava/io/OutputStream;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    :catch_3
    move-exception v2

    .line 120
    .local v2, ex:Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v6, "ImageSavingUtils"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 121
    const/4 v6, 0x0

    .line 124
    if-eqz v4, :cond_3

    .line 125
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 126
    :catch_4
    move-exception v1

    .line 128
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "ImageSavingUtils"

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 123
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 124
    :goto_5
    if-eqz v4, :cond_5

    .line 125
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 129
    :cond_5
    :goto_6
    throw v6

    .line 126
    :catch_5
    move-exception v1

    .line 128
    .restart local v1       #e:Ljava/io/IOException;
    const-string v7, "ImageSavingUtils"

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 123
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #outputStream:Ljava/io/OutputStream;
    .restart local v0       #dir:Ljava/io/File;
    .restart local v3       #file:Ljava/io/File;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/OutputStream;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    goto :goto_5

    .line 119
    .end local v4           #outputStream:Ljava/io/OutputStream;
    .restart local v5       #outputStream:Ljava/io/OutputStream;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5           #outputStream:Ljava/io/OutputStream;
    .restart local v4       #outputStream:Ljava/io/OutputStream;
    goto :goto_4

    .line 116
    .end local v0           #dir:Ljava/io/File;
    .end local v3           #file:Ljava/io/File;
    :catch_7
    move-exception v2

    goto :goto_3
.end method

.method public static convertGpsToExif(D)Ljava/lang/String;
    .locals 12
    .parameter "location"

    .prologue
    const/4 v7, 0x3

    const/4 v11, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    .line 219
    invoke-static {p0, p1, v10}, Landroid/location/Location;->convert(DI)Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, sec:Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 221
    .local v5, value:[Ljava/lang/String;
    array-length v6, v5

    if-eq v6, v7, :cond_0

    .line 222
    const/4 v6, 0x0

    .line 228
    :goto_0
    return-object v6

    .line 224
    :cond_0
    aget-object v6, v5, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 225
    .local v1, m:I
    aget-object v6, v5, v11

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 226
    .local v0, d:I
    aget-object v6, v5, v10

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 228
    .local v2, s:D
    const-string v6, "%d/1,%d/1,%d/10000"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    const-wide v8, 0x40c3880000000000L

    mul-double/2addr v8, v2

    double-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public static createName(J)Ljava/lang/String;
    .locals 1
    .parameter "dateTaken"

    .prologue
    .line 56
    const-string v0, "yyyyMMdd_kkmmss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createName(JI)Ljava/lang/String;
    .locals 2
    .parameter "dateTaken"
    .parameter "sequenceNumber"

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyyMMdd_kkmmss"

    invoke-static {v1, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createName(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "dateTaken"
    .parameter "addStr"

    .prologue
    .line 72
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 73
    :cond_0
    const-string v0, "yyyyMMdd_kkmmss"

    invoke-static {v0, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyyMMdd_kkmmss"

    invoke-static {v1, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static createName(JLjava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "dateTaken"
    .parameter "address"
    .parameter "sequenceNumber"

    .prologue
    .line 64
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyyMMdd_kkmmss"

    invoke-static {v1, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyyMMdd_kkmmss"

    invoke-static {v1, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/sec/android/app/camera/ImageSavingUtils;->removeSpecialChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static createName(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "dateTaken"
    .parameter "address"
    .parameter "addStr"

    .prologue
    .line 80
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyyMMdd_kkmmss"

    invoke-static {v1, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yyyyMMdd_kkmmss"

    invoke-static {v1, p0, p1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/sec/android/app/camera/ImageSavingUtils;->removeSpecialChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static removeSpecialChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 89
    const-string v1, "[|?*</]"

    const-string v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method public static setExif(Ljava/lang/String;JLandroid/location/Location;III)V
    .locals 25
    .parameter "filePath"
    .parameter "dateTaken"
    .parameter "location"
    .parameter "orientation"
    .parameter "whiteBalance"
    .parameter "flashMode"

    .prologue
    .line 142
    const/4 v9, 0x0

    .line 144
    .local v9, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v10, Landroid/media/ExifInterface;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v9           #exif:Landroid/media/ExifInterface;
    .local v10, exif:Landroid/media/ExifInterface;
    if-nez v10, :cond_0

    move-object v9, v10

    .line 215
    .end local v10           #exif:Landroid/media/ExifInterface;
    .restart local v9       #exif:Landroid/media/ExifInterface;
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v8

    .line 146
    .local v8, ex:Ljava/io/IOException;
    const-string v21, "ImageSavingUtils"

    const-string v22, "cannot read exif"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 154
    .end local v8           #ex:Ljava/io/IOException;
    .end local v9           #exif:Landroid/media/ExifInterface;
    .restart local v10       #exif:Landroid/media/ExifInterface;
    :cond_0
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string v21, "yyyy:MM:dd HH:mm:ss"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 155
    .local v17, sdf:Ljava/text/SimpleDateFormat;
    new-instance v21, Ljava/util/Date;

    move-object/from16 v0, v21

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v16

    .line 156
    .local v16, sTaken:Ljava/lang/String;
    const-string v21, "DateTime"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    if-eqz p3, :cond_2

    .line 159
    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    .line 160
    .local v12, lat:D
    invoke-static {v12, v13}, Lcom/sec/android/app/camera/ImageSavingUtils;->convertGpsToExif(D)Ljava/lang/String;

    move-result-object v18

    .line 161
    .local v18, slat:Ljava/lang/String;
    if-eqz v18, :cond_1

    .line 162
    const-string v21, "GPSLatitude"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v22, "GPSLatitudeRef"

    const-wide/16 v23, 0x0

    cmpl-double v21, v12, v23

    if-lez v21, :cond_3

    const-string v21, "N"

    :goto_1
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    .line 167
    .local v14, lon:D
    invoke-static {v14, v15}, Lcom/sec/android/app/camera/ImageSavingUtils;->convertGpsToExif(D)Ljava/lang/String;

    move-result-object v19

    .line 168
    .local v19, slon:Ljava/lang/String;
    if-eqz v19, :cond_2

    .line 169
    const-string v21, "GPSLongitude"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v22, "GPSLongitudeRef"

    const-wide/16 v23, 0x0

    cmpl-double v21, v14, v23

    if-lez v21, :cond_4

    const-string v21, "E"

    :goto_2
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v12           #lat:D
    .end local v14           #lon:D
    .end local v18           #slat:Ljava/lang/String;
    .end local v19           #slon:Ljava/lang/String;
    :cond_2
    const-string v21, "Orientation"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    if-nez p5, :cond_5

    const/16 v20, 0x0

    .line 181
    .local v20, wb:I
    :goto_3
    const-string v21, "WhiteBalance"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const/4 v6, 0x0

    .line 184
    .local v6, EXIF_FLASH_UNKNOWN:I
    const/16 v5, 0x8

    .line 185
    .local v5, EXIF_FLASH_ON:I
    const/16 v4, 0x10

    .line 186
    .local v4, EXIF_FLASH_OFF:I
    const/16 v3, 0x18

    .line 187
    .local v3, EXIF_FLASH_AUTO:I
    const/16 v7, 0x20

    .line 191
    .local v7, EXIF_FLASH_UNSUPPORTED:I
    packed-switch p6, :pswitch_data_0

    .line 203
    const/4 v11, 0x0

    .line 208
    .local v11, exifFlash:I
    :goto_4
    const-string v21, "Flash"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :try_start_1
    invoke-virtual {v10}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    move-object v9, v10

    .line 215
    .end local v10           #exif:Landroid/media/ExifInterface;
    .restart local v9       #exif:Landroid/media/ExifInterface;
    goto/16 :goto_0

    .line 163
    .end local v3           #EXIF_FLASH_AUTO:I
    .end local v4           #EXIF_FLASH_OFF:I
    .end local v5           #EXIF_FLASH_ON:I
    .end local v6           #EXIF_FLASH_UNKNOWN:I
    .end local v7           #EXIF_FLASH_UNSUPPORTED:I
    .end local v9           #exif:Landroid/media/ExifInterface;
    .end local v11           #exifFlash:I
    .end local v20           #wb:I
    .restart local v10       #exif:Landroid/media/ExifInterface;
    .restart local v12       #lat:D
    .restart local v18       #slat:Ljava/lang/String;
    :cond_3
    const-string v21, "S"

    goto :goto_1

    .line 170
    .restart local v14       #lon:D
    .restart local v19       #slon:Ljava/lang/String;
    :cond_4
    const-string v21, "W"

    goto :goto_2

    .line 179
    .end local v12           #lat:D
    .end local v14           #lon:D
    .end local v18           #slat:Ljava/lang/String;
    .end local v19           #slon:Ljava/lang/String;
    :cond_5
    const/16 v20, 0x1

    goto :goto_3

    .line 194
    .restart local v3       #EXIF_FLASH_AUTO:I
    .restart local v4       #EXIF_FLASH_OFF:I
    .restart local v5       #EXIF_FLASH_ON:I
    .restart local v6       #EXIF_FLASH_UNKNOWN:I
    .restart local v7       #EXIF_FLASH_UNSUPPORTED:I
    .restart local v20       #wb:I
    :pswitch_0
    const/16 v11, 0x8

    .line 195
    .restart local v11       #exifFlash:I
    goto :goto_4

    .line 197
    .end local v11           #exifFlash:I
    :pswitch_1
    const/16 v11, 0x18

    .line 198
    .restart local v11       #exifFlash:I
    goto :goto_4

    .line 200
    .end local v11           #exifFlash:I
    :pswitch_2
    const/16 v11, 0x10

    .line 201
    .restart local v11       #exifFlash:I
    goto :goto_4

    .line 212
    :catch_1
    move-exception v8

    .line 213
    .restart local v8       #ex:Ljava/io/IOException;
    const-string v21, "ImageSavingUtils"

    const-string v22, "saveAttributes is failed"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setImageSize(Landroid/content/ContentResolver;Landroid/net/Uri;J)V
    .locals 4
    .parameter "cr"
    .parameter "uri"
    .parameter "size"

    .prologue
    const/4 v3, 0x0

    .line 136
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 137
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_size"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 138
    invoke-virtual {p0, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 139
    return-void
.end method
