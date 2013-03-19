.class Lcom/sec/android/app/camera/gallery/UriImage;
.super Ljava/lang/Object;
.source "UriImage.java"

# interfaces
.implements Lcom/sec/android/app/camera/gallery/IImage;


# static fields
.field private static final TAG:Ljava/lang/String; = "UriImage"


# instance fields
.field private final mContainer:Lcom/sec/android/app/camera/gallery/IImageList;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/gallery/IImageList;Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 0
    .parameter "container"
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mContainer:Lcom/sec/android/app/camera/gallery/IImageList;

    .line 41
    iput-object p2, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 42
    iput-object p3, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mUri:Landroid/net/Uri;

    .line 43
    return-void
.end method

.method private getInputStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 55
    :try_start_0
    const-string v1, "file"

    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 61
    :goto_0
    return-object v1

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, ex:Ljava/io/FileNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPFD()Landroid/os/ParcelFileDescriptor;
    .locals 5

    .prologue
    .line 67
    :try_start_0
    const-string v2, "file"

    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, path:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 75
    .end local v1           #path:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mUri:Landroid/net/Uri;

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, ex:Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;
    .locals 4

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 130
    .local v0, input:Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_0

    .line 131
    const/4 v1, 0x0

    .line 139
    :goto_0
    return-object v1

    .line 133
    :cond_0
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 134
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 135
    invoke-static {}, Lcom/sec/android/app/camera/BitmapManager;->instance()Lcom/sec/android/app/camera/BitmapManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/camera/BitmapManager;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    .end local v1           #options:Landroid/graphics/BitmapFactory$Options;
    :catchall_0
    move-exception v2

    invoke-static {v0}, Lcom/sec/android/app/camera/Util;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v2
.end method


# virtual methods
.method public fullSizeBitmap(II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "minSideLength"
    .parameter "maxNumberOfPixels"

    .prologue
    .line 80
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/android/app/camera/gallery/UriImage;->fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeBitmap(IIZ)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "minSideLength"
    .parameter "maxNumberOfPixels"
    .parameter "rotateAsNeeded"

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/android/app/camera/gallery/UriImage;->fullSizeBitmap(IIZZ)Landroid/graphics/Bitmap;

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
    .line 93
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/UriImage;->getPFD()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 94
    .local v2, pfdInput:Landroid/os/ParcelFileDescriptor;
    invoke-static {p1, p2, v2, p4}, Lcom/sec/android/app/camera/Util;->makeBitmap(IILandroid/os/ParcelFileDescriptor;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 99
    .end local v2           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    .local v1, ex:Ljava/lang/Exception;
    const-string v3, "UriImage"

    const-string v4, "got exception decoding bitmap "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/UriImage;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeImageId()J
    .locals 2

    .prologue
    .line 161
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getContainer()Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mContainer:Lcom/sec/android/app/camera/gallery/IImageList;

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateTaken()J
    .locals 2

    .prologue
    .line 169
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDegreesRotated()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/sec/android/app/camera/gallery/UriImage;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 152
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 145
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/gallery/UriImage;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/sec/android/app/camera/gallery/UriImage;->snifBitmapOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 157
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDrm()Z
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/gallery/UriImage;->thumbBitmap(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public rotateImageBy(I)Z
    .locals 1
    .parameter "degrees"

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public thumbBitmap(Z)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "rotateAsNeeded"

    .prologue
    .line 124
    sget v0, Lcom/sec/android/app/camera/gallery/UriImage;->THUMBNAIL_TARGET_SIZE:I

    sget v1, Lcom/sec/android/app/camera/gallery/UriImage;->THUMBNAIL_MAX_NUM_PIXELS:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/android/app/camera/gallery/UriImage;->fullSizeBitmap(IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
