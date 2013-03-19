.class public Lcom/sec/android/app/camera/widget/TwScaleZoomRect;
.super Landroid/view/View;
.source "TwScaleZoomRect.java"


# static fields
.field public static final MAX_ZOOM_LEVEL:I

.field public static final MAX_ZOOM_RATIO:I

.field public static final MIN_ZOOM_RATIO:I

.field public static final ZOOM_STEP:F


# instance fields
.field protected mGLContext:Lcom/sec/android/glview/TwGLContext;

.field private mLastOrientation:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mRect:Landroid/graphics/RectF;

.field private zoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const v0, 0x7f070251

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_RATIO:I

    .line 38
    const v0, 0x7f070252

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MIN_ZOOM_RATIO:I

    .line 39
    const v0, 0x7f070253

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    .line 40
    sget v0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_RATIO:I

    sget v1, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MIN_ZOOM_RATIO:I

    sub-int/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->MAX_ZOOM_LEVEL:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->ZOOM_STEP:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I

    .line 49
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->init()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/glview/TwGLContext;)V
    .locals 1
    .parameter "context"
    .parameter "glcontext"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I

    .line 54
    iput-object p2, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    .line 55
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->init()V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/TwScaleZoomRect;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->roundOrientation(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/TwScaleZoomRect;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/app/camera/widget/TwScaleZoomRect;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I

    return p1
.end method

.method private roundOrientation(I)I
    .locals 3
    .parameter "orientationInput"

    .prologue
    .line 160
    move v0, p1

    .line 161
    .local v0, orientation:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 162
    const/4 v0, 0x0

    .line 164
    :cond_0
    rem-int/lit16 v0, v0, 0x168

    .line 166
    const/16 v2, 0x2d

    if-ge v0, v2, :cond_1

    .line 167
    const/4 v1, 0x0

    .line 177
    .local v1, retVal:I
    :goto_0
    return v1

    .line 168
    .end local v1           #retVal:I
    :cond_1
    const/16 v2, 0x87

    if-ge v0, v2, :cond_2

    .line 169
    const/16 v1, 0x5a

    .restart local v1       #retVal:I
    goto :goto_0

    .line 170
    .end local v1           #retVal:I
    :cond_2
    const/16 v2, 0xe1

    if-ge v0, v2, :cond_3

    .line 171
    const/16 v1, 0xb4

    .restart local v1       #retVal:I
    goto :goto_0

    .line 172
    .end local v1           #retVal:I
    :cond_3
    const/16 v2, 0x13b

    if-ge v0, v2, :cond_4

    .line 173
    const/16 v1, 0x10e

    .restart local v1       #retVal:I
    goto :goto_0

    .line 175
    .end local v1           #retVal:I
    :cond_4
    const/4 v1, 0x0

    .restart local v1       #retVal:I
    goto :goto_0
.end method

.method private setOrientationListener()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect$1;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect$1;-><init>(Lcom/sec/android/app/camera/widget/TwScaleZoomRect;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 157
    return-void
.end method


# virtual methods
.method init()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    const v1, 0x7f07024d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    const v1, 0x7f07024e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 65
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setOrientationListener()V

    .line 66
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .parameter "canvas"

    .prologue
    const/high16 v12, 0x4000

    const/high16 v13, 0x3f80

    .line 77
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 79
    const/4 v5, 0x0

    .line 80
    .local v5, tempWidth:F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v1, v9

    .line 81
    .local v1, hcenter:F
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v8, v9

    .line 82
    .local v8, wcenter:F
    const v9, 0x7f07024d

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    div-int/lit8 v3, v9, 0x2

    .line 83
    .local v3, offset:I
    const v9, 0x7f070254

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    .line 84
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    if-eqz v9, :cond_0

    .line 85
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mGLContext:Lcom/sec/android/glview/TwGLContext;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLContext;->getScreenWScale()F

    move-result v9

    mul-float/2addr v5, v9

    .line 88
    :cond_0
    const v9, 0x7f07024f

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    .line 90
    .local v6, textUpperMargin:F
    iget v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v9, v10

    add-float/2addr v9, v13

    mul-float/2addr v9, v5

    sub-float v2, v8, v9

    .line 91
    .local v2, left:F
    iget v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v9, v10

    add-float/2addr v9, v13

    mul-float/2addr v9, v5

    sub-float v7, v1, v9

    .line 92
    .local v7, top:F
    iget v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v9, v10

    add-float/2addr v9, v13

    mul-float/2addr v9, v5

    add-float v4, v8, v9

    .line 93
    .local v4, right:F
    iget v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v9, v9

    sget v10, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v9, v10

    add-float/2addr v9, v13

    mul-float/2addr v9, v5

    add-float v0, v1, v9

    .line 95
    .local v0, bottom:F
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v2, v7, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mRect:Landroid/graphics/RectF;

    .line 97
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mRect:Landroid/graphics/RectF;

    int-to-float v10, v3

    int-to-float v11, v3

    invoke-virtual {v9, v10, v11}, Landroid/graphics/RectF;->inset(FF)V

    .line 99
    iget v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I

    rsub-int v9, v9, 0x168

    int-to-float v9, v9

    add-float v10, v2, v4

    div-float/2addr v10, v12

    add-float v11, v7, v0

    div-float/2addr v11, v12

    invoke-virtual {p1, v9, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 101
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mRect:Landroid/graphics/RectF;

    iget-object v10, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 108
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object v9, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 112
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v10, v10

    sget v11, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v10, v11

    add-float/2addr v10, v13

    invoke-static {v10}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    add-float v10, v1, v6

    iget v11, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    int-to-float v11, v11

    sget v12, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->ZOOM_STEP:F

    div-float/2addr v11, v12

    add-float/2addr v11, v13

    mul-float/2addr v11, v5

    add-float/2addr v10, v11

    iget-object v11, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v4, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 115
    return-void
.end method

.method public setLastOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->roundOrientation(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5a

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->mLastOrientation:I

    .line 74
    return-void
.end method

.method public setZoomValue(I)V
    .locals 0
    .parameter "currentzoomValue"

    .prologue
    .line 118
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->zoomValue:I

    .line 119
    return-void
.end method
