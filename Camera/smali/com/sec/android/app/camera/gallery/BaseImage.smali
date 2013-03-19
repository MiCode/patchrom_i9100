.class public abstract Lcom/sec/android/app/camera/gallery/BaseImage;
.super Ljava/lang/Object;
.source "BaseImage.java"

# interfaces
.implements Lcom/sec/android/app/camera/gallery/IImage;


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseImage"

.field private static final UNKNOWN_LENGTH:I = -0x1


# instance fields
.field protected mContainer:Lcom/sec/android/app/camera/gallery/BaseImageList;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mDataPath:Ljava/lang/String;

.field private final mDateTaken:J

.field private final mDisplayName:Ljava/lang/String;

.field private mHeight:I

.field protected mId:J

.field protected final mIndex:I

.field protected mMimeType:Ljava/lang/String;

.field protected mMiniThumbMagic:J

.field private mTitle:Ljava/lang/String;

.field protected mUri:Landroid/net/Uri;

.field private mWidth:I


# direct methods
.method protected constructor <init>(Lcom/sec/android/app/camera/gallery/BaseImageList;Landroid/content/ContentResolver;JILandroid/net/Uri;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 1
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

    .prologue
    const/4 v0, -0x1

    .line 63
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mWidth:I

    .line 59
    iput v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mHeight:I

    .line 64
    iput-object p1, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mContainer:Lcom/sec/android/app/camera/gallery/BaseImageList;

    .line 65
    iput-object p2, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 66
    iput-wide p3, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mId:J

    .line 67
    iput p5, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mIndex:I

    .line 68
    iput-object p6, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    .line 69
    iput-object p7, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDataPath:Ljava/lang/String;

    .line 70
    iput-wide p8, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mMiniThumbMagic:J

    .line 71
    iput-object p10, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mMimeType:Ljava/lang/String;

    .line 72
    iput-wide p11, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDateTaken:J

    .line 73
    iput-object p13, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mTitle:Ljava/lang/String;

    .line 74
    iput-object p14, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDisplayName:Ljava/lang/String;

    .line 75
    return-void
.end method

.method private setupDimension()V
    .locals 6

    .prologue
    .line 156
    const/4 v1, 0x0

    .line 158
    .local v1, input:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    const-string v5, "r"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 159
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 160
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 161
    invoke-static {}, Lcom/sec/android/app/camera/BitmapManager;->instance()Lcom/sec/android/app/camera/BitmapManager;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/android/app/camera/BitmapManager;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 163
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mWidth:I

    .line 164
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    invoke-static {v1}, Lcom/sec/android/app/camera/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 171
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, ex:Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    :try_start_1
    iput v3, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mWidth:I

    .line 167
    const/4 v3, 0x0

    iput v3, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    invoke-static {v1}, Lcom/sec/android/app/camera/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    invoke-static {v1}, Lcom/sec/android/app/camera/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 83
    instance-of v0, p1, Lcom/sec/android/app/camera/gallery/Image;

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 85
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    check-cast p1, Lcom/sec/android/app/camera/gallery/Image;

    .end local p1
    iget-object v1, p1, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public fullSizeBitmap(II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "minSideLength"
    .parameter "maxNumberOfPixels"

    .prologue
    .line 94
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/android/app/camera/gallery/BaseImage;->fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "minSideLength"
    .parameter "maxNumberOfPixels"
    .parameter "rotateAsNeeded"
    .parameter "useNative"

    .prologue
    .line 100
    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mContainer:Lcom/sec/android/app/camera/gallery/BaseImageList;

    iget-wide v3, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mId:J

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/gallery/BaseImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 101
    .local v1, url:Landroid/net/Uri;
    if-nez v1, :cond_1

    .line 102
    const/4 v0, 0x0

    .line 111
    :cond_0
    :goto_0
    return-object v0

    .line 104
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1, p2, v1, v2, p4}, Lcom/sec/android/app/camera/Util;->makeBitmap(IILandroid/net/Uri;Landroid/content/ContentResolver;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 107
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/BaseImage;->getDegreesRotated()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 4

    .prologue
    .line 116
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 119
    :goto_0
    return-object v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, ex:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fullSizeImageId()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mId:J

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getContainer()Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mContainer:Lcom/sec/android/app/camera/gallery/BaseImageList;

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDataPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDateTaken:J

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 180
    iget v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mHeight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/BaseImage;->setupDimension()V

    .line 182
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mHeight:I

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 174
    iget v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/BaseImage;->setupDimension()V

    .line 176
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 191
    .local v0, b:Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mDataPath:Ljava/lang/String;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/media/ThumbnailUtils;->createImageThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 196
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/BaseImage;->getDegreesRotated()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    move-object v2, v0

    .line 199
    :goto_0
    return-object v2

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, ex:Ljava/lang/Exception;
    const-string v2, "BaseImage"

    const-string v3, "miniThumbBitmap got exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onRemove()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/BaseImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
