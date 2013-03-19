.class public Lcom/sec/android/app/camera/gallery/Image;
.super Lcom/sec/android/app/camera/gallery/BaseImage;
.source "Image.java"

# interfaces
.implements Lcom/sec/android/app/camera/gallery/IImage;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseImage"


# instance fields
.field private mExif:Landroid/media/ExifInterface;

.field private mRotation:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "container"
    .parameter "cr"
    .parameter "id"
    .parameter "index"
    .parameter "uri"
    .parameter "dataPath"
    .parameter "miniThumbMagic"
    .parameter "mimeType"
    .parameter "dateTaken"
    .parameter "title"
    .parameter "displayName"
    .parameter "rotation"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p14}, Lcom/sec/android/app/camera/gallery/BaseImage;-><init>(Lcom/sec/android/app/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 51
    iput p15, p0, Lcom/sec/android/app/camera/gallery/Image;->mRotation:I

    .line 52
    return-void
.end method

.method private loadExifData()V
    .locals 3

    .prologue
    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/gallery/Image;->mExif:Landroid/media/ExifInterface;

    if-nez v1, :cond_0

    .line 96
    new-instance v1, Landroid/media/ExifInterface;

    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDataPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/gallery/Image;->mExif:Landroid/media/ExifInterface;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "BaseImage"

    const-string v2, "cannot read exif"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private saveExifData()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/Image;->mExif:Landroid/media/ExifInterface;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/Image;->mExif:Landroid/media/ExifInterface;

    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 107
    :cond_0
    return-void
.end method

.method private setExifRotation(I)V
    .locals 5
    .parameter "degrees"

    .prologue
    .line 111
    :try_start_0
    rem-int/lit16 p1, p1, 0x168

    .line 112
    if-gez p1, :cond_0

    .line 113
    add-int/lit16 p1, p1, 0x168

    .line 115
    :cond_0
    const/4 v1, 0x1

    .line 116
    .local v1, orientation:I
    sparse-switch p1, :sswitch_data_0

    .line 133
    :goto_0
    const-string v2, "Orientation"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/gallery/Image;->replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/Image;->saveExifData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v1           #orientation:I
    :goto_1
    return-void

    .line 118
    .restart local v1       #orientation:I
    :sswitch_0
    const/4 v1, 0x1

    .line 119
    goto :goto_0

    .line 121
    :sswitch_1
    const/4 v1, 0x6

    .line 122
    goto :goto_0

    .line 124
    :sswitch_2
    const/4 v1, 0x3

    .line 125
    goto :goto_0

    .line 127
    :sswitch_3
    const/16 v1, 0x8

    .line 128
    goto :goto_0

    .line 136
    .end local v1           #orientation:I
    :catch_0
    move-exception v0

    .line 137
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "BaseImage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to save exif data with new orientation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/Image;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 116
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/sec/android/app/camera/gallery/Image;->mRotation:I

    return v0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public isReadonly()Z
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/Image;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, mimeType:Ljava/lang/String;
    const-string v1, "image/jpeg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "image/png"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/Image;->loadExifData()V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/Image;->mExif:Landroid/media/ExifInterface;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/Image;->mExif:Landroid/media/ExifInterface;

    invoke-virtual {v0, p1, p2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method public rotateImageBy(I)Z
    .locals 2
    .parameter "degrees"

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/Image;->getDegreesRotated()I

    move-result v1

    add-int/2addr v1, p1

    rem-int/lit16 v0, v1, 0x168

    .line 148
    .local v0, newDegrees:I
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/gallery/Image;->setExifRotation(I)V

    .line 149
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/gallery/Image;->setDegreesRotated(I)V

    .line 151
    const/4 v1, 0x1

    return v1
.end method

.method protected setDegreesRotated(I)V
    .locals 4
    .parameter "degrees"

    .prologue
    const/4 v3, 0x0

    .line 60
    iget v1, p0, Lcom/sec/android/app/camera/gallery/Image;->mRotation:I

    if-ne v1, p1, :cond_0

    .line 69
    :goto_0
    return-void

    .line 62
    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/gallery/Image;->mRotation:I

    .line 63
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 64
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "orientation"

    iget v2, p0, Lcom/sec/android/app/camera/gallery/Image;->mRotation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    iget-object v1, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public thumbBitmap(Z)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "rotateAsNeeded"

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 163
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 164
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 167
    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDataPath:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/Image;->getDegreesRotated()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 173
    :cond_0
    return-object v0
.end method
