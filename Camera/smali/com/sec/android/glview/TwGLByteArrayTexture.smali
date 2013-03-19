.class public Lcom/sec/android/glview/TwGLByteArrayTexture;
.super Lcom/sec/android/glview/TwGLTexture;
.source "TwGLByteArrayTexture.java"


# instance fields
.field private mBitmapData:[B

.field private mSampleSize:I


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF[B)V
    .locals 1
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "data"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mSampleSize:I

    .line 60
    iput-object p6, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mBitmapData:[B

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF[BZ)V
    .locals 1
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "data"
    .parameter "highCompress"

    .prologue
    .line 75
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mSampleSize:I

    .line 77
    iput-object p6, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mBitmapData:[B

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FF[B)V
    .locals 1
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "data"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mSampleSize:I

    .line 44
    iput-object p4, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mBitmapData:[B

    .line 45
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/sec/android/glview/TwGLTexture;->clear()V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mBitmapData:[B

    .line 88
    return-void
.end method

.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 99
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 100
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    iget v2, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mSampleSize:I

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 101
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 102
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 104
    iget-object v2, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mBitmapData:[B

    iget-object v3, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mBitmapData:[B

    array-length v3, v3

    invoke-static {v2, v4, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mBitmapData:[B

    .line 107
    return-object v0
.end method

.method public setSampleSize(I)V
    .locals 0
    .parameter "sampleSize"

    .prologue
    .line 91
    iput p1, p0, Lcom/sec/android/glview/TwGLByteArrayTexture;->mSampleSize:I

    .line 92
    return-void
.end method
