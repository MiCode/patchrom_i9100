.class abstract Lcom/sec/android/app/camera/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ImageViewTouchBase$Recycler;
    }
.end annotation


# static fields
.field static final SCALE_RATE:F = 1.25f

.field private static final TAG:Ljava/lang/String; = "ImageViewTouchBase"


# instance fields
.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field protected final mBitmapDisplayed:Lcom/sec/android/app/camera/RotateBitmap;

.field private final mDisplayMatrix:Landroid/graphics/Matrix;

.field protected mHandler:Landroid/os/Handler;

.field protected mLastXTouchPos:I

.field protected mLastYTouchPos:I

.field private final mMatrixValues:[F

.field mMaxZoom:F

.field private mOnLayoutRunnable:Ljava/lang/Runnable;

.field private mRecycler:Lcom/sec/android/app/camera/ImageViewTouchBase$Recycler;

.field protected mSuppMatrix:Landroid/graphics/Matrix;

.field mThisHeight:I

.field mThisWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 234
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mMatrixValues:[F

    .line 58
    new-instance v0, Lcom/sec/android/app/camera/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/sec/android/app/camera/RotateBitmap;

    .line 60
    iput v1, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mThisHeight:I

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 147
    iput-object v2, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 235
    invoke-direct {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->init()V

    .line 236
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 239
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mMatrixValues:[F

    .line 58
    new-instance v0, Lcom/sec/android/app/camera/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/sec/android/app/camera/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/sec/android/app/camera/RotateBitmap;

    .line 60
    iput v1, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mThisHeight:I

    .line 117
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 147
    iput-object v2, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 240
    invoke-direct {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->init()V

    .line 241
    return-void
.end method

.method private getProperBaseMatrix(Lcom/sec/android/app/camera/RotateBitmap;Landroid/graphics/Matrix;)V
    .locals 10
    .parameter "bitmap"
    .parameter "matrix"

    .prologue
    const/high16 v8, 0x4040

    const/high16 v9, 0x4000

    .line 263
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getWidth()I

    move-result v7

    int-to-float v4, v7

    .line 264
    .local v4, viewWidth:F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getHeight()I

    move-result v7

    int-to-float v3, v7

    .line 266
    .local v3, viewHeight:F
    invoke-virtual {p1}, Lcom/sec/android/app/camera/RotateBitmap;->getWidth()I

    move-result v7

    int-to-float v5, v7

    .line 267
    .local v5, w:F
    invoke-virtual {p1}, Lcom/sec/android/app/camera/RotateBitmap;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 268
    .local v0, h:F
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 272
    div-float v7, v4, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 273
    .local v6, widthScale:F
    div-float v7, v3, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 274
    .local v1, heightScale:F
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 276
    .local v2, scale:F
    invoke-virtual {p1}, Lcom/sec/android/app/camera/RotateBitmap;->getRotateMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 277
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 279
    mul-float v7, v5, v2

    sub-float v7, v4, v7

    div-float/2addr v7, v9

    mul-float v8, v0, v2

    sub-float v8, v3, v8

    div-float/2addr v8, v9

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 282
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 244
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 245
    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "bitmap"
    .parameter "rotation"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 129
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 130
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 131
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 134
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/sec/android/app/camera/RotateBitmap;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 135
    .local v1, old:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/sec/android/app/camera/RotateBitmap;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 136
    iget-object v2, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/sec/android/app/camera/RotateBitmap;

    invoke-virtual {v2, p2}, Lcom/sec/android/app/camera/RotateBitmap;->setRotation(I)V

    .line 138
    if-eqz v1, :cond_1

    if-eq v1, p1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mRecycler:Lcom/sec/android/app/camera/ImageViewTouchBase$Recycler;

    if-eqz v2, :cond_1

    .line 139
    iget-object v2, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mRecycler:Lcom/sec/android/app/camera/ImageViewTouchBase$Recycler;

    invoke-interface {v2, v1}, Lcom/sec/android/app/camera/ImageViewTouchBase$Recycler;->recycle(Landroid/graphics/Bitmap;)V

    .line 141
    :cond_1
    return-void
.end method


# virtual methods
.method protected center(ZZ)V
    .locals 12
    .parameter "horizontal"
    .parameter "vertical"

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x0

    .line 190
    iget-object v8, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/sec/android/app/camera/RotateBitmap;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_0

    .line 231
    :goto_0
    return-void

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 196
    .local v3, m:Landroid/graphics/Matrix;
    new-instance v4, Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/sec/android/app/camera/RotateBitmap;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/sec/android/app/camera/RotateBitmap;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 200
    .local v4, rect:Landroid/graphics/RectF;
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 202
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 203
    .local v2, height:F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 205
    .local v7, width:F
    const/4 v0, 0x0

    .local v0, deltaX:F
    const/4 v1, 0x0

    .line 207
    .local v1, deltaY:F
    if-eqz p2, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getHeight()I

    move-result v5

    .line 209
    .local v5, viewHeight:I
    int-to-float v8, v5

    cmpg-float v8, v2, v8

    if-gez v8, :cond_3

    .line 210
    int-to-float v8, v5

    sub-float/2addr v8, v2

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 218
    .end local v5           #viewHeight:I
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 219
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getWidth()I

    move-result v6

    .line 220
    .local v6, viewWidth:I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gez v8, :cond_5

    .line 221
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 229
    .end local v6           #viewWidth:I
    :cond_2
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/ImageViewTouchBase;->postTranslate(FF)V

    .line 230
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 211
    .restart local v5       #viewHeight:I
    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_4

    .line 212
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    goto :goto_1

    .line 213
    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    goto :goto_1

    .line 222
    .end local v5           #viewHeight:I
    .restart local v6       #viewWidth:I
    :cond_5
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_6

    .line 223
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_2

    .line 224
    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 225
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v9

    goto :goto_2
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 144
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 145
    return-void
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected getScale()F
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter "matrix"

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .parameter "matrix"
    .parameter "whichValue"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 249
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method protected maxZoom()F
    .locals 5

    .prologue
    .line 300
    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/sec/android/app/camera/RotateBitmap;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 301
    const/high16 v2, 0x3f80

    .line 307
    :goto_0
    return v2

    .line 304
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/sec/android/app/camera/RotateBitmap;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/RotateBitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mThisWidth:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 305
    .local v1, fw:F
    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/sec/android/app/camera/RotateBitmap;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/RotateBitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mThisHeight:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 306
    .local v0, fh:F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x4080

    mul-float v2, v3, v4

    .line 307
    .local v2, max:F
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 95
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 98
    const/4 v0, 0x1

    .line 100
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/high16 v1, 0x3f80

    .line 105
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 110
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/ImageViewTouchBase;->zoomTo(F)V

    .line 111
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 79
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 80
    sub-int v1, p4, p2

    iput v1, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mThisWidth:I

    .line 81
    sub-int v1, p5, p3

    iput v1, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mThisHeight:I

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 83
    .local v0, r:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 84
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 85
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/sec/android/app/camera/RotateBitmap;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 88
    iget-object v1, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/sec/android/app/camera/RotateBitmap;

    iget-object v2, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getProperBaseMatrix(Lcom/sec/android/app/camera/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 89
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 91
    :cond_1
    return-void
.end method

.method protected panBy(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 449
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/ImageViewTouchBase;->postTranslate(FF)V

    .line 450
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 451
    return-void
.end method

.method protected postTranslate(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 446
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 125
    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter "bitmap"
    .parameter "resetSupp"

    .prologue
    .line 153
    new-instance v0, Lcom/sec/android/app/camera/RotateBitmap;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2}, Lcom/sec/android/app/camera/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/sec/android/app/camera/RotateBitmap;Z)V

    .line 154
    return-void
.end method

.method public setImageRotateBitmapResetBase(Lcom/sec/android/app/camera/RotateBitmap;Z)V
    .locals 3
    .parameter "bitmap"
    .parameter "resetSupp"

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 160
    .local v0, viewWidth:I
    if-gtz v0, :cond_0

    .line 161
    new-instance v1, Lcom/sec/android/app/camera/ImageViewTouchBase$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/ImageViewTouchBase$1;-><init>(Lcom/sec/android/app/camera/ImageViewTouchBase;Lcom/sec/android/app/camera/RotateBitmap;Z)V

    iput-object v1, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 182
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 170
    iget-object v1, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getProperBaseMatrix(Lcom/sec/android/app/camera/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 171
    invoke-virtual {p1}, Lcom/sec/android/app/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/android/app/camera/RotateBitmap;->getOrientation()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 177
    :goto_1
    if-eqz p2, :cond_1

    .line 178
    iget-object v1, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 181
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->maxZoom()F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mMaxZoom:F

    goto :goto_0

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 174
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public setRecycler(Lcom/sec/android/app/camera/ImageViewTouchBase$Recycler;)V
    .locals 0
    .parameter "r"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mRecycler:Lcom/sec/android/app/camera/ImageViewTouchBase$Recycler;

    .line 72
    return-void
.end method

.method protected zoomIn()V
    .locals 1

    .prologue
    .line 359
    const/high16 v0, 0x3fa0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->zoomIn(F)V

    .line 360
    return-void
.end method

.method protected zoomIn(F)V
    .locals 5
    .parameter "rate"

    .prologue
    const/high16 v4, 0x4000

    .line 367
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getScale()F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/sec/android/app/camera/RotateBitmap;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v4

    .line 375
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v4

    .line 377
    .local v1, cy:F
    iget-object v2, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 378
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method protected zoomIn(FFF)V
    .locals 7
    .parameter "rate"
    .parameter "pointX"
    .parameter "pointY"

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x40a0

    const/high16 v4, 0x4000

    .line 404
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getScale()F

    move-result v2

    iget v3, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/sec/android/app/camera/RotateBitmap;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v4

    .line 412
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v4

    .line 413
    .local v1, cy:F
    sub-float v2, v0, p2

    div-float/2addr v2, v5

    sub-float v3, v1, p3

    div-float/2addr v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/ImageViewTouchBase;->panBy(FF)V

    .line 415
    iget-object v2, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p1, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 416
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 417
    invoke-virtual {p0, v6, v6}, Lcom/sec/android/app/camera/ImageViewTouchBase;->center(ZZ)V

    goto :goto_0
.end method

.method protected zoomOut()V
    .locals 1

    .prologue
    .line 363
    const/high16 v0, 0x3fa0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->zoomOut(F)V

    .line 364
    return-void
.end method

.method protected zoomOut(F)V
    .locals 7
    .parameter "rate"

    .prologue
    const/4 v6, 0x1

    const/high16 v4, 0x4000

    const/high16 v5, 0x3f80

    .line 382
    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/sec/android/app/camera/RotateBitmap;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 400
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v4

    .line 387
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    .line 390
    .local v1, cy:F
    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 391
    .local v2, tmp:Landroid/graphics/Matrix;
    div-float v3, v5, p1

    div-float v4, v5, p1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 393
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 394
    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5, v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 398
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 399
    invoke-virtual {p0, v6, v6}, Lcom/sec/android/app/camera/ImageViewTouchBase;->center(ZZ)V

    goto :goto_0

    .line 396
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    div-float v4, v5, p1

    div-float/2addr v5, p1

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_1
.end method

.method protected zoomOut(FFF)V
    .locals 8
    .parameter "rate"
    .parameter "pointX"
    .parameter "pointY"

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x40a0

    const/high16 v4, 0x4000

    const/high16 v5, 0x3f80

    .line 421
    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mBitmapDisplayed:Lcom/sec/android/app/camera/RotateBitmap;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 440
    :goto_0
    return-void

    .line 425
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v4

    .line 426
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    .line 427
    .local v1, cy:F
    sub-float v3, v0, p2

    div-float/2addr v3, v6

    sub-float v4, v1, p3

    div-float/2addr v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/camera/ImageViewTouchBase;->panBy(FF)V

    .line 430
    new-instance v2, Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-direct {v2, v3}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 431
    .local v2, tmp:Landroid/graphics/Matrix;
    div-float v3, v5, p1

    div-float v4, v5, p1

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 433
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v3

    cmpg-float v3, v3, v5

    if-gez v3, :cond_1

    .line 434
    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v5, v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 438
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 439
    invoke-virtual {p0, v7, v7}, Lcom/sec/android/app/camera/ImageViewTouchBase;->center(ZZ)V

    goto :goto_0

    .line 436
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    div-float v4, v5, p1

    div-float/2addr v5, p1

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_1
.end method

.method protected zoomTo(F)V
    .locals 4
    .parameter "scale"

    .prologue
    const/high16 v3, 0x4000

    .line 344
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 345
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 347
    .local v1, cy:F
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/camera/ImageViewTouchBase;->zoomTo(FFF)V

    .line 348
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v3, 0x1

    .line 311
    iget v2, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 312
    iget p1, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mMaxZoom:F

    .line 315
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 316
    .local v1, oldScale:F
    div-float v0, p1, v1

    .line 318
    .local v0, deltaScale:F
    iget-object v2, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 319
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 320
    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/camera/ImageViewTouchBase;->center(ZZ)V

    .line 321
    return-void
.end method

.method protected zoomTo(FFFF)V
    .locals 10
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "durationMs"

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, p4

    .line 326
    .local v6, incrementPerMs:F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getScale()F

    move-result v5

    .line 327
    .local v5, oldScale:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 329
    .local v3, startTime:J
    iget-object v9, p0, Lcom/sec/android/app/camera/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/app/camera/ImageViewTouchBase$2;

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/app/camera/ImageViewTouchBase$2;-><init>(Lcom/sec/android/app/camera/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    return-void
.end method

.method protected zoomToPoint(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "pointX"
    .parameter "pointY"

    .prologue
    const/high16 v3, 0x4000

    .line 351
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 352
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 354
    .local v1, cy:F
    sub-float v2, v0, p2

    sub-float v3, v1, p3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/ImageViewTouchBase;->panBy(FF)V

    .line 355
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/camera/ImageViewTouchBase;->zoomTo(FFF)V

    .line 356
    return-void
.end method
