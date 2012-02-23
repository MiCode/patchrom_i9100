.class Landroid/webkit/WebMagnifier;
.super Landroid/view/View;
.source "WebMagnifier.java"


# static fields
.field private static final BOUNDARY_STOROKE_WIDTH:F = 3.0f

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ZOOM_SCALE:F = 1.2f

.field private static final DISABLE_ENLARGEMENT:Z = false

.field private static final FLEXIBLE_ZOOM_RATE:F = 0.6f

.field private static final LOGTAG:Ljava/lang/String; = "WebMagnifier"

.field private static final MAGNIFIER_PADDING:I = 0x4

.field private static final ROUND_DIAMETER:F = 10.0f

.field private static final STROKE_WIDTH:I = 0x1

.field private static final USE_BITMAP_ENLARGEMENT:Z = true

.field private static mMagnifierHeight:I

.field private static mMagnifierWidth:I

.field private static mRectCurSel:Landroid/graphics/Rect;

.field private static mTailHeight:I

.field private static mTailWidth:I

.field private static mfFlexibleZoomScale:F

.field private static mfWebViewZoomScale:F


# instance fields
.field mAdjustY:I

.field private mBgPath:Landroid/graphics/Path;

.field private mBoundaryPaint:Landroid/graphics/Paint;

.field private final mContext:Landroid/content/Context;

.field private mGarbageBgPath:Landroid/graphics/Path;

.field mHandleHeight:I

.field private mMagnifierPath:Landroid/graphics/Path;

.field private mMagnifierRect:Landroid/graphics/Rect;

.field mMode:I

.field private mPathBgFill:Landroid/graphics/Path;

.field private mShowX:I

.field private mShowY:I

.field private mSrcView:Landroid/view/View;

.field private mSrcX:I

.field private mSrcY:I

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWebView:Landroid/view/View;

.field private mWindowManager:Landroid/view/WindowManager;

.field mbShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    sput v0, Landroid/webkit/WebMagnifier;->mMagnifierWidth:I

    .line 68
    sput v0, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    .line 69
    sput v0, Landroid/webkit/WebMagnifier;->mTailWidth:I

    .line 70
    sput v0, Landroid/webkit/WebMagnifier;->mTailHeight:I

    .line 94
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    .line 95
    const v0, 0x3f99999a

    sput v0, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    .line 96
    const/4 v0, 0x0

    sput v0, Landroid/webkit/WebMagnifier;->mfWebViewZoomScale:F

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 3
    .parameter "webView"

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 89
    iput v2, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    iput v2, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    .line 92
    iput v2, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    iput v2, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    .line 98
    iput v2, p0, Landroid/webkit/WebMagnifier;->mAdjustY:I

    .line 100
    iput v2, p0, Landroid/webkit/WebMagnifier;->mMode:I

    .line 101
    iput v2, p0, Landroid/webkit/WebMagnifier;->mHandleHeight:I

    .line 103
    iput-boolean v2, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    .line 111
    iput-object p1, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/view/View;

    .line 112
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/WebMagnifier;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/webkit/WebMagnifier;->setPadding(IIII)V

    .line 117
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Landroid/webkit/WebMagnifier;->mWindowManager:Landroid/view/WindowManager;

    .line 120
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 121
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x1050053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Landroid/webkit/WebMagnifier;->mMagnifierWidth:I

    .line 122
    const v1, 0x1050054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    .line 123
    const v1, 0x1050055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Landroid/webkit/WebMagnifier;->mTailWidth:I

    .line 124
    const v1, 0x1050056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Landroid/webkit/WebMagnifier;->mTailHeight:I

    .line 127
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    .line 128
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4040

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 130
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mBoundaryPaint:Landroid/graphics/Paint;

    const v2, -0xff0001

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    .line 134
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    .line 135
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    .line 136
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebMagnifier;->mMagnifierRect:Landroid/graphics/Rect;

    .line 137
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/webkit/WebMagnifier;->mPathBgFill:Landroid/graphics/Path;

    .line 138
    return-void
.end method

.method private drawMagnifierContents(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 234
    sget v8, Landroid/webkit/WebMagnifier;->mMagnifierWidth:I

    int-to-float v8, v8

    sget v9, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    div-float/2addr v8, v9

    float-to-int v7, v8

    .line 235
    .local v7, zoomarea_width:I
    sget v8, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    int-to-float v8, v8

    sget v9, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    div-float/2addr v8, v9

    float-to-int v6, v8

    .line 237
    .local v6, zoomarea_height:I
    const/4 v8, 0x2

    new-array v5, v8, [I

    .line 238
    .local v5, winloc:[I
    iget-object v8, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/view/View;

    invoke-virtual {v8, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 240
    new-instance v4, Landroid/graphics/RectF;

    iget v8, p0, Landroid/webkit/WebMagnifier;->mSrcX:I

    aget v9, v5, v11

    add-int/2addr v8, v9

    div-int/lit8 v9, v7, 0x2

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebMagnifier;->mSrcY:I

    aget v10, v5, v12

    add-int/2addr v9, v10

    div-int/lit8 v10, v6, 0x2

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/webkit/WebMagnifier;->mAdjustY:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/WebMagnifier;->mSrcX:I

    aget v11, v5, v11

    add-int/2addr v10, v11

    div-int/lit8 v11, v7, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Landroid/webkit/WebMagnifier;->mSrcY:I

    aget v12, v5, v12

    add-int/2addr v11, v12

    div-int/lit8 v12, v6, 0x2

    add-int/2addr v11, v12

    iget v12, p0, Landroid/webkit/WebMagnifier;->mAdjustY:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    invoke-direct {v4, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 245
    .local v4, srcRect:Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/RectF;

    iget v8, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    sget v11, Landroid/webkit/WebMagnifier;->mMagnifierWidth:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    iget v11, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    sget v12, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    invoke-direct {v2, v8, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 252
    .local v2, destRect:Landroid/graphics/RectF;
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 253
    .local v3, matrix:Landroid/graphics/Matrix;
    sget-object v8, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v3, v4, v2, v8}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 256
    iget v8, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    iget v9, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 257
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 258
    .local v1, bmCanvas:Landroid/graphics/Canvas;
    iget-object v8, p0, Landroid/webkit/WebMagnifier;->mSrcView:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 260
    const/4 v8, 0x0

    invoke-virtual {p1, v0, v3, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 265
    return-void
.end method

.method private setShowXY(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 269
    iput p1, p0, Landroid/webkit/WebMagnifier;->mSrcX:I

    .line 270
    iput p2, p0, Landroid/webkit/WebMagnifier;->mSrcY:I

    .line 273
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 274
    .local v0, winloc:[I
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 276
    const/4 v1, 0x0

    aget v1, v0, v1

    add-int/2addr v1, p1

    sget v2, Landroid/webkit/WebMagnifier;->mMagnifierWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    .line 277
    const/4 v1, 0x1

    aget v1, v0, v1

    add-int/2addr v1, p2

    sget v2, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    sub-int/2addr v1, v2

    sget v2, Landroid/webkit/WebMagnifier;->mTailHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    .line 278
    iget v1, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    iget v2, p0, Landroid/webkit/WebMagnifier;->mHandleHeight:I

    add-int/lit8 v2, v2, 0x1e

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    .line 280
    invoke-direct {p0}, Landroid/webkit/WebMagnifier;->updateDrawingPath()V

    .line 281
    return-void
.end method

.method private updateDrawingPath()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x4120

    .line 195
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 196
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 200
    sget v5, Landroid/webkit/WebMagnifier;->mMagnifierWidth:I

    add-int/lit8 v4, v5, -0x1

    .line 201
    .local v4, w:I
    sget v5, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    add-int/lit8 v0, v5, -0x1

    .line 202
    .local v0, h:I
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/2addr v9, v4

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v10, v0

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v12, v12, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 205
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    sget v8, Landroid/webkit/WebMagnifier;->mTailWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 206
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    sget v8, Landroid/webkit/WebMagnifier;->mTailHeight:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 207
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    sget v8, Landroid/webkit/WebMagnifier;->mTailWidth:I

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 209
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    sget v7, Landroid/webkit/WebMagnifier;->mTailWidth:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 210
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v6, v7

    sget v7, Landroid/webkit/WebMagnifier;->mTailWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/2addr v7, v0

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 212
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 213
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/lit8 v7, v7, 0x4

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/lit8 v8, v8, 0x4

    int-to-float v8, v8

    iget v9, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    sget v10, Landroid/webkit/WebMagnifier;->mMagnifierWidth:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x4

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    sget v11, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x4

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v7, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v12, v12, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 217
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mMagnifierRect:Landroid/graphics/Rect;

    iget v6, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    add-int/lit8 v6, v6, 0x4

    iget v7, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    add-int/lit8 v7, v7, 0x4

    iget v8, p0, Landroid/webkit/WebMagnifier;->mShowX:I

    sget v9, Landroid/webkit/WebMagnifier;->mMagnifierWidth:I

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x4

    iget v9, p0, Landroid/webkit/WebMagnifier;->mShowY:I

    sget v10, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    add-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 221
    new-instance v2, Landroid/graphics/Region;

    iget v5, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    iget v6, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    invoke-direct {v2, v13, v13, v5, v6}, Landroid/graphics/Region;-><init>(IIII)V

    .line 223
    .local v2, regionClip:Landroid/graphics/Region;
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 224
    .local v1, regionBgFill:Landroid/graphics/Region;
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    .line 225
    .local v3, regionMagnifier:Landroid/graphics/Region;
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 226
    iget-object v5, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {v3, v5, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 227
    sget-object v5, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v3, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 228
    invoke-virtual {v1}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object v5

    iput-object v5, p0, Landroid/webkit/WebMagnifier;->mPathBgFill:Landroid/graphics/Path;

    .line 230
    return-void
.end method

.method private updateZoomScale()V
    .locals 3

    .prologue
    .line 287
    sget-object v0, Landroid/webkit/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sget v1, Landroid/webkit/WebMagnifier;->mfWebViewZoomScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 288
    :cond_0
    const v0, 0x3f99999a

    sput v0, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    .line 298
    :goto_0
    return-void

    .line 291
    :cond_1
    sget v0, Landroid/webkit/WebMagnifier;->mMagnifierHeight:I

    int-to-float v0, v0

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    sget-object v1, Landroid/webkit/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sget v2, Landroid/webkit/WebMagnifier;->mfWebViewZoomScale:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    sput v0, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    goto :goto_0
.end method


# virtual methods
.method hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 364
    iget-boolean v0, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-nez v0, :cond_0

    .line 379
    :goto_0
    return-void

    .line 367
    :cond_0
    iput v1, p0, Landroid/webkit/WebMagnifier;->mSrcX:I

    .line 368
    iput v1, p0, Landroid/webkit/WebMagnifier;->mSrcY:I

    .line 369
    iput v1, p0, Landroid/webkit/WebMagnifier;->mAdjustY:I

    .line 370
    iput v1, p0, Landroid/webkit/WebMagnifier;->mMode:I

    .line 371
    iput v1, p0, Landroid/webkit/WebMagnifier;->mHandleHeight:I

    .line 372
    iget-object v0, p0, Landroid/webkit/WebMagnifier;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 375
    const v0, 0x3f99999a

    sput v0, Landroid/webkit/WebMagnifier;->mfFlexibleZoomScale:F

    .line 376
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    .line 378
    iput-boolean v1, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    goto :goto_0
.end method

.method move(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 392
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebMagnifier;->setShowXY(II)V

    .line 393
    invoke-virtual {p0}, Landroid/webkit/WebMagnifier;->invalidate()V

    .line 394
    return-void
.end method

.method move(IILandroid/graphics/Rect;F)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "rtCurSel"
    .parameter "fZoomScale"

    .prologue
    .line 383
    sput-object p3, Landroid/webkit/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    .line 384
    sput p4, Landroid/webkit/WebMagnifier;->mfWebViewZoomScale:F

    .line 385
    invoke-direct {p0}, Landroid/webkit/WebMagnifier;->updateZoomScale()V

    .line 387
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebMagnifier;->move(II)V

    .line 388
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, -0x1

    const/high16 v5, -0x100

    .line 144
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 148
    iget-boolean v4, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-nez v4, :cond_0

    .line 190
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 154
    .local v2, saveCount:I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 155
    .local v1, paint:Landroid/graphics/Paint;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 156
    const/high16 v4, 0x3f80

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 159
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 161
    .local v3, saveDrawCount:I
    iget-object v4, p0, Landroid/webkit/WebMagnifier;->mMagnifierRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 162
    invoke-direct {p0, p1}, Landroid/webkit/WebMagnifier;->drawMagnifierContents(Landroid/graphics/Canvas;)V

    .line 163
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 166
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 167
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    iget-object v4, p0, Landroid/webkit/WebMagnifier;->mPathBgFill:Landroid/graphics/Path;

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 171
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget-object v4, p0, Landroid/webkit/WebMagnifier;->mBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 175
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 178
    .local v0, gPaint:Landroid/graphics/Paint;
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 180
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 181
    const/high16 v4, 0x4000

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 182
    iget-object v4, p0, Landroid/webkit/WebMagnifier;->mGarbageBgPath:Landroid/graphics/Path;

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 185
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    iget-object v4, p0, Landroid/webkit/WebMagnifier;->mMagnifierPath:Landroid/graphics/Path;

    invoke-virtual {p1, v4, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 189
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method show(II)V
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 311
    iget-object v9, p0, Landroid/webkit/WebMagnifier;->mWebView:Landroid/view/View;

    .line 313
    .local v9, srcView:Landroid/view/View;
    :goto_0
    if-eqz v9, :cond_0

    .line 315
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .end local v9           #srcView:Landroid/view/View;
    check-cast v9, Landroid/view/View;

    .restart local v9       #srcView:Landroid/view/View;
    goto :goto_0

    .line 321
    :cond_0
    if-nez v9, :cond_2

    .line 323
    const-string v1, "WebMagnifier"

    const-string/jumbo v2, "show : Cannot find Decor View."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_1
    :goto_1
    return-void

    .line 326
    :cond_2
    iput-object v9, p0, Landroid/webkit/WebMagnifier;->mSrcView:Landroid/view/View;

    .line 332
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    .line 333
    .local v8, display:Landroid/view/Display;
    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    .line 334
    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    .line 336
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebMagnifier;->setShowXY(II)V

    .line 340
    iget-boolean v1, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-eq v1, v10, :cond_1

    .line 343
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Landroid/webkit/WebMagnifier;->mViewWidth:I

    iget v2, p0, Landroid/webkit/WebMagnifier;->mViewHeight:I

    const/16 v5, 0x3e8

    const/16 v6, 0x208

    const/4 v7, -0x3

    move v4, v3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 353
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 354
    iget-object v1, p0, Landroid/webkit/WebMagnifier;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 356
    iput-boolean v10, p0, Landroid/webkit/WebMagnifier;->mbShow:Z

    goto :goto_1
.end method

.method show(IILandroid/graphics/Rect;F)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "rtCurSel"
    .parameter "fZoomScale"

    .prologue
    .line 302
    sput-object p3, Landroid/webkit/WebMagnifier;->mRectCurSel:Landroid/graphics/Rect;

    .line 303
    sput p4, Landroid/webkit/WebMagnifier;->mfWebViewZoomScale:F

    .line 304
    invoke-direct {p0}, Landroid/webkit/WebMagnifier;->updateZoomScale()V

    .line 306
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebMagnifier;->show(II)V

    .line 307
    return-void
.end method
