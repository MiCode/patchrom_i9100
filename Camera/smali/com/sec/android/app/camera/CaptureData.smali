.class public Lcom/sec/android/app/camera/CaptureData;
.super Ljava/lang/Object;
.source "CaptureData.java"


# instance fields
.field private mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

.field private mCaptureOnlyData:[B

.field private mDecodingData:[B

.field private mOrientation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x4000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mDecodingData:[B

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    iput-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    .line 57
    iput-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mDecodingData:[B

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 61
    iput-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    .line 63
    :cond_0
    return-void
.end method

.method public getCaptureBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 71
    const/16 v0, 0x1e0

    const/16 v1, 0x168

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getCaptureData()[B
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    return-object v0
.end method

.method public getCaptureSmallBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/16 v1, 0x54

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 77
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/sec/android/app/camera/CaptureData;->mOrientation:I

    return v0
.end method

.method public setCaptureData([BI)V
    .locals 6
    .parameter "data"
    .parameter "sampleSize"

    .prologue
    const/16 v5, 0x1e0

    const/16 v4, 0x168

    const/4 v3, 0x0

    .line 32
    iput-object p1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    .line 33
    iput v3, p0, Lcom/sec/android/app/camera/CaptureData;->mOrientation:I

    .line 35
    iget-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    if-eqz v1, :cond_1

    .line 36
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 37
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 38
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 39
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 40
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 41
    iget-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mDecodingData:[B

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 42
    iput v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 43
    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 45
    iget-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    iget-object v2, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyData:[B

    array-length v2, v2

    invoke-static {v1, v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    .line 46
    iget-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 47
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    .line 52
    .end local v0           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CaptureData;->mCaptureOnlyBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 82
    iput p1, p0, Lcom/sec/android/app/camera/CaptureData;->mOrientation:I

    .line 83
    return-void
.end method
