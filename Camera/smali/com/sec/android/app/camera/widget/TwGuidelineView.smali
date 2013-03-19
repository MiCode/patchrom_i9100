.class public Lcom/sec/android/app/camera/widget/TwGuidelineView;
.super Landroid/view/View;
.source "TwGuidelineView.java"


# static fields
.field private static final NUM_OF_GUIDELINES:I = 0x3


# instance fields
.field private mLinePaint:Landroid/graphics/Paint;

.field private mSurfaceView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mLinePaint:Landroid/graphics/Paint;

    .line 33
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mSurfaceView:Landroid/view/View;

    .line 37
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mLinePaint:Landroid/graphics/Paint;

    .line 33
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mSurfaceView:Landroid/view/View;

    .line 42
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->init()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mLinePaint:Landroid/graphics/Paint;

    .line 33
    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mSurfaceView:Landroid/view/View;

    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->init()V

    .line 48
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mLinePaint:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    return-void
.end method


# virtual methods
.method public handleGuidelineSettingsChanged(I)V
    .locals 1
    .parameter "guideLine"

    .prologue
    .line 104
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->showGuidelines()V

    .line 109
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->hideGuidelines()V

    goto :goto_0
.end method

.method public hideGuidelines()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->setVisibility(I)V

    .line 101
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15
    .parameter "canvas"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mSurfaceView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mSurfaceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 62
    .local v9, origin_x:I
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mSurfaceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v10

    .line 64
    .local v10, origin_y:I
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mSurfaceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v12

    .line 65
    .local v12, parent_width:I
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mSurfaceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 67
    .local v11, parent_height:I
    div-int/lit8 v7, v12, 0x3

    .line 68
    .local v7, guideline_width:I
    div-int/lit8 v6, v11, 0x3

    .line 73
    .local v6, guideline_height:I
    add-int v13, v9, v7

    .line 74
    .local v13, x:I
    move v14, v10

    .line 76
    .local v14, y:I
    const/4 v8, 0x1

    .local v8, ix:I
    :goto_0
    const/4 v0, 0x3

    if-ge v8, v0, :cond_0

    .line 77
    int-to-float v1, v13

    int-to-float v2, v14

    int-to-float v3, v13

    add-int v0, v14, v11

    int-to-float v4, v0

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 78
    add-int/2addr v13, v7

    .line 76
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 84
    :cond_0
    move v13, v9

    .line 85
    add-int/2addr v14, v6

    .line 86
    const/4 v8, 0x1

    :goto_1
    const/4 v0, 0x3

    if-ge v8, v0, :cond_1

    .line 87
    int-to-float v1, v13

    int-to-float v2, v14

    add-int v0, v13, v12

    int-to-float v3, v0

    int-to-float v4, v14

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 88
    add-int/2addr v14, v6

    .line 86
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 91
    .end local v6           #guideline_height:I
    .end local v7           #guideline_width:I
    .end local v8           #ix:I
    .end local v9           #origin_x:I
    .end local v10           #origin_y:I
    .end local v11           #parent_height:I
    .end local v12           #parent_width:I
    .end local v13           #x:I
    .end local v14           #y:I
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 92
    return-void
.end method

.method public setSurfaceView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwGuidelineView;->mSurfaceView:Landroid/view/View;

    .line 113
    return-void
.end method

.method public showGuidelines()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->setVisibility(I)V

    .line 96
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->invalidate()V

    .line 97
    return-void
.end method
