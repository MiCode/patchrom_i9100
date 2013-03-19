.class public Lcom/sec/android/glview/TwGLFileTexture;
.super Lcom/sec/android/glview/TwGLTexture;
.source "TwGLFileTexture.java"


# instance fields
.field private mFilePath:Ljava/lang/String;

.field private mSampleSize:I


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;)V
    .locals 1
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "filepath"

    .prologue
    .line 58
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLFileTexture;->mSampleSize:I

    .line 60
    iput-object p6, p0, Lcom/sec/android/glview/TwGLFileTexture;->mFilePath:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFLjava/lang/String;)V
    .locals 1
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "filepath"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLFileTexture;->mSampleSize:I

    .line 44
    iput-object p4, p0, Lcom/sec/android/glview/TwGLFileTexture;->mFilePath:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method protected loadBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 73
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    iget v1, p0, Lcom/sec/android/glview/TwGLFileTexture;->mSampleSize:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 74
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 75
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 77
    iget-object v1, p0, Lcom/sec/android/glview/TwGLFileTexture;->mFilePath:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public setSampleSize(I)V
    .locals 0
    .parameter "sampleSize"

    .prologue
    .line 64
    iput p1, p0, Lcom/sec/android/glview/TwGLFileTexture;->mSampleSize:I

    .line 65
    return-void
.end method
