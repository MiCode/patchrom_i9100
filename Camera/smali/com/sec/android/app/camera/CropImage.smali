.class public Lcom/sec/android/app/camera/CropImage;
.super Lcom/sec/android/app/camera/MonitoredActivity;
.source "CropImage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CropImage"


# instance fields
.field private mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

.field private mAspectX:I

.field private mAspectY:I

.field public mAttachVideo:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field mBlinkRect:Lcom/sec/android/app/camera/HighlightView;

.field public mBlinkRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field public mCircleCrop:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field mCrop:Lcom/sec/android/app/camera/HighlightView;

.field private mDateTaken:J

.field private mDiscard:Landroid/widget/Button;

.field public mFromApp:Z

.field private final mHandler:Landroid/os/Handler;

.field private mImage:Lcom/sec/android/app/camera/gallery/IImage;

.field private mImageView:Lcom/sec/android/app/camera/CropImageView;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mLatitude:D

.field private mLongitude:D

.field private mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mOutputX:I

.field private mOutputY:I

.field public mRectCrop:Z

.field mRunFaceDetection:Ljava/lang/Runnable;

.field private mSave:Landroid/widget/Button;

.field private mSaveUri:Landroid/net/Uri;

.field mSaving:Z

.field private mScale:Z

.field private mScaleUp:Z

.field private mSetWallpaper:Z

.field public mSkipSaveDiscard:Z

.field mWaitingToPick:Z

.field private mWeather:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/sec/android/app/camera/MonitoredActivity;-><init>()V

    .line 67
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 69
    iput-object v2, p0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    .line 70
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mSetWallpaper:Z

    .line 73
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    .line 74
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mRectCrop:Z

    .line 75
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mFromApp:Z

    .line 76
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mAttachVideo:Z

    .line 77
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CropImage;->mSkipSaveDiscard:Z

    .line 79
    iput-object v2, p0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CropImage;->mScaleUp:Z

    .line 101
    iput-object v2, p0, Lcom/sec/android/app/camera/CropImage;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 595
    new-instance v0, Lcom/sec/android/app/camera/CropImage$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CropImage$7;-><init>(Lcom/sec/android/app/camera/CropImage;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CropImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/sec/android/app/camera/CropImage;->onSaveClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CropImage;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/CropImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/CropImage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CropImage;->saveOutput(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/CropImage;)Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/CropImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/sec/android/app/camera/CropImage;->mAspectX:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/CropImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/sec/android/app/camera/CropImage;->mAspectY:I

    return v0
.end method

.method private onSaveClicked()V
    .locals 21

    .prologue
    .line 324
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v16

    .line 326
    .local v16, myExtras:Landroid/os/Bundle;
    if-eqz v16, :cond_2

    const-string v1, "attach-video"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 327
    const-string v1, "CropImage"

    const-string v3, "Attach = Video"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v1, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "inline-data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    .line 361
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    if-nez v1, :cond_6

    .line 454
    :cond_1
    :goto_1
    return-void

    .line 331
    :cond_2
    if-eqz v16, :cond_3

    const-string v1, "return-uri"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    if-nez v1, :cond_3

    .line 332
    const-string v1, "CropImage"

    const-string v3, "Crop = no, Return = uri"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 334
    .local v13, extras:Landroid/os/Bundle;
    const-string v1, "uri-data"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/4 v1, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "inline-data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 337
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto :goto_0

    .line 338
    .end local v13           #extras:Landroid/os/Bundle;
    :cond_3
    if-eqz v16, :cond_4

    const-string v1, "return-data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    if-nez v1, :cond_4

    .line 339
    const-string v1, "CropImage"

    const-string v3, "Crop = no, Return = data"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 341
    .restart local v13       #extras:Landroid/os/Bundle;
    const-string v1, "bitmap-data"

    const/4 v3, 0x1

    invoke-virtual {v13, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 342
    const/4 v1, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "inline-data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto/16 :goto_0

    .line 345
    .end local v13           #extras:Landroid/os/Bundle;
    :cond_4
    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    if-nez v1, :cond_5

    .line 346
    const-string v1, "CropImage"

    const-string v3, "Crop = no, Return = specified uri"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 348
    .restart local v13       #extras:Landroid/os/Bundle;
    const-string v1, "specify-data"

    const/4 v3, 0x1

    invoke-virtual {v13, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 349
    const-string v1, "uri-data"

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/4 v1, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "inline-data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 352
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto/16 :goto_0

    .line 353
    .end local v13           #extras:Landroid/os/Bundle;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mFromApp:Z

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 354
    const/4 v1, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CropImage;->setResult(I)V

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto/16 :goto_0

    .line 365
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mSaving:Z

    if-nez v1, :cond_1

    .line 367
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mSaving:Z

    .line 373
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mScale:Z

    if-nez v1, :cond_9

    .line 376
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 378
    .local v2, croppedImage:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 380
    .local v9, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v19

    .line 381
    .local v19, srcRect:Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    invoke-direct {v10, v1, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 383
    .local v10, dstRect:Landroid/graphics/Rect;
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v11, v1, 0x2

    .line 384
    .local v11, dx:I
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v12, v1, 0x2

    .line 387
    .local v12, dy:I
    const/4 v1, 0x0

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x0

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 390
    const/4 v1, 0x0

    neg-int v3, v11

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x0

    neg-int v4, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {v10, v1, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 393
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v9, v1, v0, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 433
    .end local v11           #dx:I
    .end local v12           #dy:I
    .end local v19           #srcRect:Landroid/graphics/Rect;
    :cond_7
    :goto_2
    if-eqz v16, :cond_c

    const-string v1, "data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v1, "return-data"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 434
    :cond_8
    const-string v1, "CropImage"

    const-string v3, "Crop = yes, Return = data"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 436
    .restart local v13       #extras:Landroid/os/Bundle;
    const-string v1, "data"

    invoke-virtual {v13, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 437
    const/4 v1, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "inline-data"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto/16 :goto_1

    .line 395
    .end local v2           #croppedImage:Landroid/graphics/Bitmap;
    .end local v9           #canvas:Landroid/graphics/Canvas;
    .end local v10           #dstRect:Landroid/graphics/Rect;
    .end local v13           #extras:Landroid/os/Bundle;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v18

    .line 397
    .local v18, r:Landroid/graphics/Rect;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v20

    .line 398
    .local v20, width:I
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    move-result v14

    .line 402
    .local v14, height:I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    if-eqz v1, :cond_b

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_3
    move/from16 v0, v20

    invoke-static {v0, v14, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 407
    .restart local v2       #croppedImage:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 408
    .restart local v9       #canvas:Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move/from16 v0, v20

    invoke-direct {v10, v1, v3, v0, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 409
    .restart local v10       #dstRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v9, v1, v0, v10, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 411
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    if-eqz v1, :cond_a

    .line 417
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 418
    .local v8, c:Landroid/graphics/Canvas;
    new-instance v17, Landroid/graphics/Path;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Path;-><init>()V

    .line 419
    .local v17, p:Landroid/graphics/Path;
    move/from16 v0, v20

    int-to-float v1, v0

    const/high16 v3, 0x4000

    div-float/2addr v1, v3

    int-to-float v3, v14

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    move/from16 v0, v20

    int-to-float v4, v0

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 421
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 422
    const/4 v1, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v1, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 426
    .end local v8           #c:Landroid/graphics/Canvas;
    .end local v17           #p:Landroid/graphics/Path;
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mScale:Z

    if-eqz v1, :cond_7

    .line 427
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/app/camera/CropImage;->mScaleUp:Z

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/sec/android/app/camera/Util;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto/16 :goto_2

    .line 402
    .end local v2           #croppedImage:Landroid/graphics/Bitmap;
    .end local v9           #canvas:Landroid/graphics/Canvas;
    .end local v10           #dstRect:Landroid/graphics/Rect;
    :cond_b
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_3

    .line 441
    .end local v14           #height:I
    .end local v18           #r:Landroid/graphics/Rect;
    .end local v20           #width:I
    .restart local v2       #croppedImage:Landroid/graphics/Bitmap;
    .restart local v9       #canvas:Landroid/graphics/Canvas;
    .restart local v10       #dstRect:Landroid/graphics/Rect;
    :cond_c
    const-string v1, "CropImage"

    const-string v3, "Crop = yes, Return = specified uri"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    move-object v7, v2

    .line 443
    .local v7, b:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sec/android/app/camera/CropImage;->mSetWallpaper:Z

    if-eqz v1, :cond_d

    const v15, 0x7f0900ee

    .line 446
    .local v15, msdId:I
    :goto_4
    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/sec/android/app/camera/CropImage$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7}, Lcom/sec/android/app/camera/CropImage$5;-><init>(Lcom/sec/android/app/camera/CropImage;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    invoke-static {v0, v1, v3, v4, v5}, Lcom/sec/android/app/camera/Util;->startBackgroundJob(Lcom/sec/android/app/camera/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto/16 :goto_1

    .line 443
    .end local v15           #msdId:I
    :cond_d
    const v15, 0x7f09000f

    goto :goto_4
.end method

.method private saveOutput(Landroid/graphics/Bitmap;)V
    .locals 25
    .parameter "croppedImage"

    .prologue
    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v2, :cond_4

    .line 458
    const/16 v23, 0x0

    .line 460
    .local v23, outputStream:Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v23

    .line 461
    if-eqz v23, :cond_0

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x4b

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :cond_0
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 470
    :goto_0
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 471
    .local v19, extras:Landroid/os/Bundle;
    const-string v2, "takenTime"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/app/camera/CropImage;->mDateTaken:J

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 472
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/camera/CropImage;->mLatitude:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/sec/android/app/camera/CropImage;->mLongitude:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    .line 473
    :cond_1
    const-string v2, "latitude"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/app/camera/CropImage;->mLatitude:D

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 474
    const-string v2, "longitude"

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/sec/android/app/camera/CropImage;->mLongitude:D

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 476
    :cond_2
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 538
    .end local v19           #extras:Landroid/os/Bundle;
    .end local v23           #outputStream:Ljava/io/OutputStream;
    :cond_3
    :goto_1
    move-object/from16 v13, p1

    .line 539
    .local v13, b:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/camera/CropImage$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v13}, Lcom/sec/android/app/camera/CropImage$6;-><init>(Lcom/sec/android/app/camera/CropImage;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    .line 547
    return-void

    .line 464
    .end local v13           #b:Landroid/graphics/Bitmap;
    .restart local v23       #outputStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v17

    .line 466
    .local v17, ex:Ljava/io/IOException;
    :try_start_1
    const-string v2, "CropImage"

    const-string v3, "Cannot open file"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 468
    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v17           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static/range {v23 .. v23}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v2

    .line 478
    .end local v23           #outputStream:Ljava/io/OutputStream;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/app/camera/CropImage;->mSetWallpaper:Z

    if-eqz v2, :cond_5

    .line 480
    :try_start_2
    invoke-static/range {p0 .. p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 481
    const/4 v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CropImage;->setResult(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 482
    :catch_1
    move-exception v16

    .line 483
    .local v16, e:Ljava/io/IOException;
    const-string v2, "CropImage"

    const-string v3, "Failed to set wallpaper."

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 484
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CropImage;->setResult(I)V

    goto :goto_1

    .line 487
    .end local v16           #e:Ljava/io/IOException;
    :cond_5
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 488
    .restart local v19       #extras:Landroid/os/Bundle;
    const-string v2, "rect"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CropImage;->mCrop:Lcom/sec/android/app/camera/HighlightView;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->getDataPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 491
    .local v22, oldPath:Ljava/io/File;
    new-instance v15, Ljava/io/File;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 493
    .local v15, directory:Ljava/io/File;
    const/16 v24, 0x0

    .line 494
    .local v24, x:I
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    .line 495
    .local v20, fileName:Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v3, 0x2e

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 497
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    .local v14, candidate:Ljava/lang/StringBuilder;
    :cond_6
    add-int/lit8 v24, v24, 0x1

    .line 502
    invoke-virtual {v15}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-string v2, "/"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const-string v2, "-"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    move/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 507
    const-string v2, ".jpg"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    new-instance v2, Ljava/io/File;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v18

    .line 509
    .local v18, exists:Z
    if-nez v18, :cond_6

    .line 515
    const/4 v2, 0x1

    :try_start_3
    new-array v11, v2, [I

    .line 516
    .local v11, degree:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    invoke-interface {v4}, Lcom/sec/android/app/camera/gallery/IImage;->getDateTaken()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual {v15}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/app/camera/CropImage;->mWeather:I

    move-object/from16 v9, p1

    invoke-static/range {v2 .. v12}, Lcom/sec/android/app/camera/ImageManager;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[II)Landroid/net/Uri;

    move-result-object v21

    .line 526
    .local v21, newUri:Landroid/net/Uri;
    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 527
    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 531
    .end local v11           #degree:[I
    .end local v21           #newUri:Landroid/net/Uri;
    :catch_2
    move-exception v17

    .line 534
    .local v17, ex:Ljava/lang/Exception;
    const-string v2, "CropImage"

    const-string v3, "store image fail, continue anyway"

    move-object/from16 v0, v17

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method private startFaceDetection()V
    .locals 4

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 291
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CropImage$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CropImage$4;-><init>(Lcom/sec/android/app/camera/CropImage;)V

    iget-object v3, p0, Lcom/sec/android/app/camera/CropImage;->mHandler:Landroid/os/Handler;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/Util;->startBackgroundJob(Lcom/sec/android/app/camera/MonitoredActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V

    goto :goto_0
.end method


# virtual methods
.method public getBlinkRectCnt()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 280
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 273
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MonitoredActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 274
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    const v13, 0x7f0b000c

    const/4 v12, 0x0

    const/4 v10, 0x1

    .line 113
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MonitoredActivity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 116
    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/CropImage;->requestWindowFeature(I)Z

    .line 117
    const v8, 0x7f030003

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CropImage;->setContentView(I)V

    .line 119
    const v8, 0x7f0b000b

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/camera/CropImageView;

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    .line 120
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v10, v9}, Lcom/sec/android/app/camera/CropImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 122
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 123
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 125
    .local v3, extras:Landroid/os/Bundle;
    if-eqz v3, :cond_2

    .line 126
    const-string v8, "circleCrop"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 127
    iput-boolean v10, p0, Lcom/sec/android/app/camera/CropImage;->mCircleCrop:Z

    .line 128
    iput v10, p0, Lcom/sec/android/app/camera/CropImage;->mAspectX:I

    .line 129
    iput v10, p0, Lcom/sec/android/app/camera/CropImage;->mAspectY:I

    .line 134
    :cond_0
    :goto_0
    const-string v8, "output"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    .line 135
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v8, :cond_6

    .line 136
    const-string v8, "outputFormat"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 137
    .local v5, outputFormatString:Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 138
    invoke-static {v5}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 144
    .end local v5           #outputFormatString:Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v8, "data"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/graphics/Bitmap;

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 145
    const-string v8, "aspectX"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/CropImage;->mAspectX:I

    .line 146
    const-string v8, "aspectY"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/CropImage;->mAspectY:I

    .line 147
    const-string v8, "outputX"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/CropImage;->mOutputX:I

    .line 148
    const-string v8, "outputY"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/CropImage;->mOutputY:I

    .line 149
    const-string v8, "scale"

    invoke-virtual {v3, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mScale:Z

    .line 150
    const-string v8, "scaleUpIfNeeded"

    invoke-virtual {v3, v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mScaleUp:Z

    .line 155
    const-string v8, "attach-video"

    invoke-virtual {v3, v8, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mAttachVideo:Z

    .line 156
    const-string v8, "fromApp"

    invoke-virtual {v3, v8, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mFromApp:Z

    .line 157
    const-string v8, "blink-rect"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBlinkRects:Ljava/util/ArrayList;

    .line 158
    const-string v8, "skip-savediscard"

    invoke-virtual {v3, v8, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mSkipSaveDiscard:Z

    .line 160
    const-string v8, "latitude"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/camera/CropImage;->mLatitude:D

    .line 161
    const-string v8, "longitude"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/camera/CropImage;->mLongitude:D

    .line 162
    const-string v8, "takenTime"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/sec/android/app/camera/CropImage;->mDateTaken:J

    .line 163
    const-string v8, "weather"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/camera/CropImage;->mWeather:I

    .line 166
    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_3

    .line 167
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 168
    .local v6, target:Landroid/net/Uri;
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v8, v6, v10}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    .line 169
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v8, v6}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    .line 170
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    if-eqz v8, :cond_3

    .line 177
    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    const/4 v9, -0x1

    const/high16 v10, 0x10

    invoke-interface {v8, v9, v10}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    .end local v6           #target:Landroid/net/Uri;
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_4

    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v8, :cond_4

    .line 188
    :try_start_1
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v9, p0, Lcom/sec/android/app/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    const-string v10, "r"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    .line 189
    .local v7, videoFileDescriptor:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    const/16 v9, 0x500

    const/16 v10, 0x3c0

    const/4 v11, 0x1

    invoke-static {v8, v9, v10, v11}, Lcom/sec/android/app/camera/imageviewer/MediaList;->getVideoThumbnail(Ljava/io/FileDescriptor;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 190
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 199
    .end local v7           #videoFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :cond_4
    :goto_3
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v8, :cond_7

    .line 200
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    .line 247
    :goto_4
    return-void

    .line 130
    :cond_5
    const-string v8, "rectCrop"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 131
    iput-boolean v10, p0, Lcom/sec/android/app/camera/CropImage;->mRectCrop:Z

    goto/16 :goto_0

    .line 142
    :cond_6
    const-string v8, "setWallpaper"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mSetWallpaper:Z

    goto/16 :goto_1

    .line 178
    .restart local v6       #target:Landroid/net/Uri;
    :catch_0
    move-exception v2

    .line 179
    .local v2, ex:Ljava/lang/Exception;
    const-string v8, "CropImage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot open Thumbnail : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto :goto_2

    .line 191
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v6           #target:Landroid/net/Uri;
    :catch_1
    move-exception v2

    .line 193
    .local v2, ex:Ljava/io/FileNotFoundException;
    const-string v8, "CropImage"

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 194
    .end local v2           #ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 195
    .local v1, e:Ljava/io/IOException;
    const-string v8, "CropImage"

    const-string v9, "Fail to close fd"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 210
    .end local v1           #e:Ljava/io/IOException;
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x400

    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 212
    const v8, 0x7f0b000f

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mDiscard:Landroid/widget/Button;

    .line 213
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mDiscard:Landroid/widget/Button;

    new-instance v9, Lcom/sec/android/app/camera/CropImage$1;

    invoke-direct {v9, p0}, Lcom/sec/android/app/camera/CropImage$1;-><init>(Lcom/sec/android/app/camera/CropImage;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v8, 0x7f0b0011

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mSave:Landroid/widget/Button;

    .line 223
    iget-object v8, p0, Lcom/sec/android/app/camera/CropImage;->mSave:Landroid/widget/Button;

    new-instance v9, Lcom/sec/android/app/camera/CropImage$2;

    invoke-direct {v9, p0}, Lcom/sec/android/app/camera/CropImage$2;-><init>(Lcom/sec/android/app/camera/CropImage;)V

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    invoke-direct {p0}, Lcom/sec/android/app/camera/CropImage;->startFaceDetection()V

    .line 231
    iget-boolean v8, p0, Lcom/sec/android/app/camera/CropImage;->mAttachVideo:Z

    if-eqz v8, :cond_8

    .line 232
    invoke-virtual {p0, v13}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 233
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 235
    new-instance v8, Lcom/sec/android/app/camera/CropImage$3;

    invoke-direct {v8, p0, v4}, Lcom/sec/android/app/camera/CropImage$3;-><init>(Lcom/sec/android/app/camera/CropImage;Landroid/content/Intent;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_4

    .line 244
    .end local v0           #button:Landroid/widget/Button;
    :cond_8
    invoke-virtual {p0, v13}, Lcom/sec/android/app/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 245
    .restart local v0       #button:Landroid/widget/Button;
    const/4 v8, 0x4

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 578
    const-string v0, "CropImage"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImageList;->close()V

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImageView:Lcom/sec/android/app/camera/CropImageView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CropImageView;->clear()V

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 589
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 592
    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/camera/MonitoredActivity;->onDestroy()V

    .line 593
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 252
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImage;->mSave:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/CropImage;->mDiscard:Landroid/widget/Button;

    if-nez v2, :cond_1

    .line 269
    :cond_0
    :goto_0
    return v1

    .line 255
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 269
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/MonitoredActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 257
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImage;->mSave:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 258
    invoke-direct {p0}, Lcom/sec/android/app/camera/CropImage;->onSaveClicked()V

    goto :goto_1

    .line 259
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CropImage;->mDiscard:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 261
    .local v0, result:Landroid/content/Intent;
    const-string v2, "delete-image"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 262
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 263
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    goto :goto_1

    .line 255
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 571
    const-string v0, "CropImage"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-super {p0}, Lcom/sec/android/app/camera/MonitoredActivity;->onPause()V

    .line 574
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 551
    const-string v0, "CropImage"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 557
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MonitoredActivity;->onResume()V

    .line 558
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mImage:Lcom/sec/android/app/camera/gallery/IImage;

    const/4 v1, -0x1

    const/high16 v2, 0x10

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 560
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CropImage;->finish()V

    .line 567
    :cond_1
    :goto_0
    return-void

    .line 563
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CropImage;->mSkipSaveDiscard:Z

    if-eqz v0, :cond_1

    .line 564
    invoke-direct {p0}, Lcom/sec/android/app/camera/CropImage;->onSaveClicked()V

    goto :goto_0
.end method
