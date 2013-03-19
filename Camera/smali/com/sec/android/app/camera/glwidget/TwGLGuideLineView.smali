.class public Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLGuideLineView.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final GUIDELINE_BOTTOM_INTERVAL:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final GUIDELINE_WIDTH:I = 0x0

.field private static final NUM_OF_GUIDELINES:I = 0x3

.field protected static final TAG:Ljava/lang/String; = "TwGLGuideLine"


# instance fields
.field private mHeight:I

.field private mLine_x1:Lcom/sec/android/glview/TwGLLineTexture;

.field private mLine_x2:Lcom/sec/android/glview/TwGLLineTexture;

.field private mLine_y1:Lcom/sec/android/glview/TwGLLineTexture;

.field private mLine_y2:Lcom/sec/android/glview/TwGLLineTexture;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f08000e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_WIDTH:I

    .line 38
    const v0, 0x7f080012

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_BOTTOM_INTERVAL:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/View;)V
    .locals 9
    .parameter "activityContext"
    .parameter "parent_width"
    .parameter "parent_height"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    const/16 v8, 0xff

    .line 50
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    int-to-float v4, p2

    int-to-float v5, p3

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 52
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    .line 53
    iput p3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    .line 55
    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    int-to-float v5, v3

    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_WIDTH:I

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x1:Lcom/sec/android/glview/TwGLLineTexture;

    .line 56
    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    int-to-float v5, v3

    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_WIDTH:I

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x2:Lcom/sec/android/glview/TwGLLineTexture;

    .line 58
    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    int-to-float v4, v3

    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_WIDTH:I

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y1:Lcom/sec/android/glview/TwGLLineTexture;

    .line 59
    new-instance v0, Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    int-to-float v4, v3

    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_WIDTH:I

    move v3, v2

    move v5, v2

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLLineTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y2:Lcom/sec/android/glview/TwGLLineTexture;

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x1:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x2:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y1:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y2:Lcom/sec/android/glview/TwGLLineTexture;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 67
    invoke-virtual {p0, p4}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->setGuideLineSize(Landroid/view/View;)V

    .line 68
    return-void
.end method


# virtual methods
.method public declared-synchronized contains(FF)Z
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 119
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized findViewByCoordinate(FF)Lcom/sec/android/glview/TwGLView;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 124
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public handleGuidelineSettingsChanged(I)V
    .locals 1
    .parameter "guideLine"

    .prologue
    .line 110
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->setVisibility(I)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setGuideLineSize(Landroid/view/View;)V
    .locals 10
    .parameter "view"

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, guideline_x:I
    const/4 v1, 0x0

    .line 74
    .local v1, guideline_y:I
    const/4 v2, 0x0

    .line 75
    .local v2, origin_x:I
    const/4 v3, 0x0

    .line 77
    .local v3, origin_y:I
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    .line 92
    :cond_0
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    div-int/lit8 v1, v4, 0x3

    .line 93
    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    div-int/lit8 v0, v4, 0x3

    .line 95
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x1:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v4, :cond_1

    .line 96
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x1:Lcom/sec/android/glview/TwGLLineTexture;

    add-int v5, v2, v0

    int-to-float v5, v5

    int-to-float v6, v3

    add-int v7, v2, v0

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    add-int/2addr v8, v3

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_BOTTOM_INTERVAL:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    .line 98
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x2:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v4, :cond_2

    .line 99
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_x2:Lcom/sec/android/glview/TwGLLineTexture;

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    int-to-float v6, v3

    mul-int/lit8 v7, v0, 0x2

    add-int/2addr v7, v2

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mHeight:I

    add-int/2addr v8, v3

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_BOTTOM_INTERVAL:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    .line 101
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y1:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v4, :cond_3

    .line 102
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y1:Lcom/sec/android/glview/TwGLLineTexture;

    int-to-float v5, v2

    add-int v6, v3, v1

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    add-int/2addr v7, v2

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_WIDTH:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    add-int v8, v3, v1

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    .line 104
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y2:Lcom/sec/android/glview/TwGLLineTexture;

    if-eqz v4, :cond_4

    .line 105
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mLine_y2:Lcom/sec/android/glview/TwGLLineTexture;

    int-to-float v5, v2

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v3

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->mWidth:I

    add-int/2addr v7, v2

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLGuideLineView;->GUIDELINE_WIDTH:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-int/lit8 v8, v1, 0x2

    add-int/2addr v8, v3

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/glview/TwGLLineTexture;->setLine(FFFF)V

    .line 107
    :cond_4
    return-void
.end method
