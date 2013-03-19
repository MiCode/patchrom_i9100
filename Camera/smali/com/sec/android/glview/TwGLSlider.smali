.class public Lcom/sec/android/glview/TwGLSlider;
.super Lcom/sec/android/glview/TwGLView;
.source "TwGLSlider.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;
    }
.end annotation


# static fields
.field private static final ORDER_ASCENDING:I = 0xa

.field private static final ORDER_DESCENDING:I = 0xb

.field private static final ORIENTATION_HORIZONTAL:I = 0x1

.field private static final ORIENTATION_VERTICAL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TwGLSlider"


# instance fields
.field private mCurrentStep:I

.field private mGauge:Lcom/sec/android/glview/TwGLImage;

.field private mGaugePos:Landroid/graphics/PointF;

.field private mIndicatorResId:I

.field private mIndicatorVisibility:Z

.field private mNumOfStep:I

.field protected mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

.field private mOrder:I

.field private mOrientation:I

.field private mSliderBar:Lcom/sec/android/glview/TwGLImage;

.field private mStepPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V
    .locals 4
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "numOfStep"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 74
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    .line 45
    iput v3, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    .line 48
    iput-boolean v1, p0, Lcom/sec/android/glview/TwGLSlider;->mIndicatorVisibility:Z

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    .line 52
    iput v1, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    .line 54
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    .line 76
    if-lez p6, :cond_0

    .line 77
    iput p6, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    .line 78
    :cond_0
    cmpl-float v0, p4, p5

    if-ltz v0, :cond_1

    .line 79
    iput v1, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    .line 80
    const/16 v0, 0xa

    iput v0, p0, Lcom/sec/android/glview/TwGLSlider;->mOrder:I

    .line 86
    :goto_0
    invoke-virtual {p0, v3}, Lcom/sec/android/glview/TwGLSlider;->setDraggable(Z)V

    .line 87
    return-void

    .line 82
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    .line 83
    const/16 v0, 0xb

    iput v0, p0, Lcom/sec/android/glview/TwGLSlider;->mOrder:I

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFI)V
    .locals 3
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "numOfStep"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/glview/TwGLView;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    .line 48
    iput-boolean v2, p0, Lcom/sec/android/glview/TwGLSlider;->mIndicatorVisibility:Z

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    .line 52
    iput v2, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    .line 54
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    .line 69
    if-lez p4, :cond_0

    .line 70
    iput p4, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    .line 71
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/glview/TwGLSlider;)Landroid/graphics/PointF;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/glview/TwGLSlider;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/glview/TwGLSlider;)Lcom/sec/android/glview/TwGLImage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/glview/TwGLSlider;FF)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sec/android/glview/TwGLSlider;->findNearestStepId(FF)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/glview/TwGLSlider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/glview/TwGLSlider;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLSlider;->translateStepByOrdering(I)I

    move-result v0

    return v0
.end method

.method private findNearestStepId(FF)I
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v6, 0x4000

    const/4 v4, 0x0

    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, interval:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getHeight()F

    move-result v3

    iget-object v5, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    sub-float v2, v3, v5

    .line 303
    .local v2, slideBarHeight:F
    iget v3, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    .line 304
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getWidth()F

    move-result v3

    iget v5, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float v1, v3, v5

    .line 305
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 306
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_2

    .line 307
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    div-float v4, v1, v6

    add-float/2addr v3, v4

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_1

    .line 336
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v0

    .line 310
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 305
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_3
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v3, p1, v3

    if-gez v3, :cond_4

    move v0, v4

    .line 315
    goto :goto_1

    .line 316
    :cond_4
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v3, p1, v3

    if-lez v3, :cond_9

    .line 317
    iget v3, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    add-int/lit8 v0, v3, -0x1

    goto :goto_1

    .line 319
    .end local v0           #i:I
    :cond_5
    iget v3, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_9

    .line 320
    iget v3, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 321
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget v3, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_7

    .line 322
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    add-int/lit8 v5, v0, 0x1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_6

    .line 323
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    div-float v4, v1, v6

    add-float/2addr v3, v4

    cmpg-float v3, p2, v3

    if-lez v3, :cond_0

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 321
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 330
    :cond_7
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, p2, v3

    if-gez v3, :cond_8

    move v0, v4

    .line 331
    goto/16 :goto_1

    .line 332
    :cond_8
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v3, p2, v3

    if-lez v3, :cond_9

    .line 333
    iget v3, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    add-int/lit8 v0, v3, -0x1

    goto/16 :goto_1

    .line 336
    .end local v0           #i:I
    :cond_9
    const/4 v0, -0x1

    goto/16 :goto_1
.end method

.method private setStepIndicatorPosition()V
    .locals 7

    .prologue
    const/high16 v6, 0x4000

    .line 199
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getHeight()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .line 201
    .local v1, slideBarHeight:I
    iget v2, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 202
    iget-object v2, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    if-ge v0, v2, :cond_3

    .line 204
    iget-object v2, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getWidth()F

    move-result v4

    iget v5, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    add-int/lit8 v5, v5, -0x1

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v5, v0

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getHeight()F

    move-result v5

    div-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    .end local v0           #i:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget v2, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    if-ge v0, v2, :cond_3

    .line 208
    iget-object v2, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getWidth()F

    move-result v3

    iget v4, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v0

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getHeight()F

    move-result v4

    div-float/2addr v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    .end local v0           #i:I
    :cond_1
    iget v2, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 212
    iget-object v2, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 213
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget v2, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    if-ge v0, v2, :cond_3

    .line 214
    iget-object v2, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getWidth()F

    move-result v4

    div-float/2addr v4, v6

    iget v5, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    add-int/lit8 v5, v5, -0x1

    div-int v5, v1, v5

    mul-int/2addr v5, v0

    int-to-float v5, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 217
    .end local v0           #i:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    iget v2, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    if-ge v0, v2, :cond_3

    .line 218
    iget-object v2, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getWidth()F

    move-result v3

    div-float/2addr v3, v6

    iget v4, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    add-int/lit8 v4, v4, -0x1

    div-int v4, v1, v4

    mul-int/2addr v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 222
    .end local v0           #i:I
    :cond_3
    return-void
.end method

.method private translateStepByOrdering(I)I
    .locals 2
    .parameter "step"

    .prologue
    .line 169
    iget v0, p0, Lcom/sec/android/glview/TwGLSlider;->mOrder:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 172
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget v0, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 230
    iput-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 234
    iput-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    .line 236
    :cond_1
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->clear()V

    .line 237
    return-void
.end method

.method public getCurrentStep()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    invoke-direct {p0, v0}, Lcom/sec/android/glview/TwGLSlider;->translateStepByOrdering(I)I

    move-result v0

    return v0
.end method

.method public getLoaded(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 2
    .parameter "gl"

    .prologue
    .line 251
    const/4 v0, 0x1

    .line 253
    .local v0, ret:Z
    iget-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLImage;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_1

    .line 259
    iget-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLImage;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 260
    const/4 v0, 0x0

    .line 262
    :cond_1
    return v0
.end method

.method public getNumOfStep()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    return v0
.end method

.method public initSize()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method public moveStep(I)Z
    .locals 12
    .parameter "to"

    .prologue
    const-wide/16 v10, 0x96

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 123
    if-ltz p1, :cond_3

    iget v3, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    if-ge p1, v3, :cond_3

    .line 124
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLSlider;->translateStepByOrdering(I)I

    move-result v1

    .line 125
    .local v1, newStep:I
    iget v3, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    if-ne v3, v1, :cond_0

    move v3, v4

    .line 155
    .end local v1           #newStep:I
    :goto_0
    return v3

    .line 128
    .restart local v1       #newStep:I
    :cond_0
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 129
    .local v2, oldPos:Landroid/graphics/PointF;
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    iget v6, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v6, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    iget v7, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v6, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 131
    iput v1, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    .line 132
    iget-object v6, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    iget v7, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    iget v8, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 133
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    if-eqz v3, :cond_1

    .line 135
    iget v3, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    if-ne v3, v4, :cond_2

    .line 136
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    iget-object v6, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    invoke-virtual {v3, v6, v9, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FFZ)V

    .line 137
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v5

    sub-float/2addr v3, v5

    iget-object v5, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-direct {v0, v3, v5, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 138
    .local v0, moveAnim:Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    float-to-int v3, v3

    iget-object v5, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getWidth()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getHeight()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v0, v3, v5, v6, v7}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 139
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 140
    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 141
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 142
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .end local v0           #moveAnim:Landroid/view/animation/Animation;
    :cond_1
    :goto_1
    move v3, v4

    .line 153
    goto/16 :goto_0

    .line 143
    :cond_2
    iget v3, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    .line 144
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    iget-object v6, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v9, v6, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FFZ)V

    .line 145
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v6

    sub-float/2addr v3, v6

    iget-object v6, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v7}, Lcom/sec/android/glview/TwGLImage;->getTranslateY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-direct {v0, v9, v9, v3, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 146
    .restart local v0       #moveAnim:Landroid/view/animation/Animation;
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v3

    float-to-int v3, v3

    iget-object v6, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getWidth()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getHeight()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 147
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 148
    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 149
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3, v0}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 150
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    goto :goto_1

    .end local v0           #moveAnim:Landroid/view/animation/Animation;
    .end local v1           #newStep:I
    .end local v2           #oldPos:Landroid/graphics/PointF;
    :cond_3
    move v3, v5

    .line 155
    goto/16 :goto_0
.end method

.method public onAlphaUpdated()V
    .locals 1

    .prologue
    .line 290
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onAlphaUpdated()V

    .line 291
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->onAlphaUpdated()V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->onAlphaUpdated()V

    .line 297
    :cond_1
    return-void
.end method

.method protected onDraw(Ljavax/microedition/khronos/opengles/GL11;)V
    .locals 3
    .parameter "gl"

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/sec/android/glview/TwGLSlider;->mIndicatorVisibility:Z

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLImage;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getMatrix()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/android/glview/TwGLImage;->draw(Ljavax/microedition/khronos/opengles/GL10;[FLandroid/graphics/Rect;)V

    .line 275
    :cond_1
    return-void
.end method

.method public onLayoutUpdated()V
    .locals 1

    .prologue
    .line 279
    invoke-super {p0}, Lcom/sec/android/glview/TwGLView;->onLayoutUpdated()V

    .line 280
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->onLayoutUpdated()V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->onLayoutUpdated()V

    .line 286
    :cond_1
    return-void
.end method

.method protected onLoad(Ljavax/microedition/khronos/opengles/GL11;)Z
    .locals 1
    .parameter "gl"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLImage;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLImage;->load(Ljavax/microedition/khronos/opengles/GL11;)Z

    .line 247
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onReset()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    if-eqz v0, :cond_1

    .line 506
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->reset()V

    .line 508
    :cond_1
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 340
    invoke-virtual {p0, p2}, Lcom/sec/android/glview/TwGLSlider;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    .line 344
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 345
    .local v0, et:Landroid/view/MotionEvent;
    iget-object v8, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual {p0, v8, v9, v10}, Lcom/sec/android/glview/TwGLSlider;->mapPointReverse([FFF)V

    .line 346
    iget-object v8, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    iget-object v9, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 347
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    if-nez v8, :cond_0

    .line 348
    const/4 v8, 0x1

    .line 496
    :goto_0
    return v8

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getTop()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v9

    float-to-int v9, v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    add-float v5, v8, v9

    .line 350
    .local v5, slideBarTop:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getHeight()F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v9

    float-to-int v9, v9

    int-to-float v9, v9

    sub-float v4, v8, v9

    .line 352
    .local v4, slideBarHeight:F
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_7

    .line 353
    iget v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 354
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getLeft()F

    move-result v9

    sub-float/2addr v8, v9

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_1

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getLeft()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getWidth()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 355
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 357
    :cond_2
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getLeft()F

    move-result v10

    sub-float/2addr v9, v10

    iput v9, v8, Landroid/graphics/PointF;->x:F

    .line 358
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    iget-object v9, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 369
    :cond_3
    :goto_1
    const/4 v8, 0x1

    goto :goto_0

    .line 360
    :cond_4
    iget v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_3

    .line 361
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v8, v5

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_5

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v8, v5

    cmpl-float v8, v8, v4

    if-lez v8, :cond_6

    .line 362
    :cond_5
    const/4 v8, 0x0

    goto :goto_0

    .line 364
    :cond_6
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float/2addr v9, v5

    iput v9, v8, Landroid/graphics/PointF;->y:F

    .line 366
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    goto :goto_1

    .line 370
    :cond_7
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_12

    .line 372
    iget v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    .line 373
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Framework_DisableCompensationTouchAreaInScrollBar"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 375
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getTop()F

    move-result v9

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_8

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getBottom()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_9

    .line 376
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 380
    :cond_9
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getLeft()F

    move-result v9

    sub-float/2addr v8, v9

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_b

    .line 381
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    const/4 v9, 0x0

    iput v9, v8, Landroid/graphics/PointF;->x:F

    .line 387
    :goto_2
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    iget-object v9, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget v9, v9, Landroid/graphics/PointF;->x:F

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 388
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    if-eqz v8, :cond_a

    .line 389
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getLeft()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getTop()F

    move-result v10

    sub-float/2addr v9, v10

    invoke-direct {p0, v8, v9}, Lcom/sec/android/glview/TwGLSlider;->findNearestStepId(FF)I

    move-result v7

    .line 390
    .local v7, tempStep:I
    iget v8, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    if-eq v7, v8, :cond_a

    .line 391
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    invoke-direct {p0, v7}, Lcom/sec/android/glview/TwGLSlider;->translateStepByOrdering(I)I

    move-result v9

    invoke-interface {v8, v9}, Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;->onStepChanged(I)V

    .line 392
    iput v7, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    .line 420
    .end local v7           #tempStep:I
    :cond_a
    :goto_3
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 382
    :cond_b
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getLeft()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getWidth()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_c

    .line 383
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getWidth()F

    move-result v9

    iput v9, v8, Landroid/graphics/PointF;->x:F

    goto :goto_2

    .line 385
    :cond_c
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getLeft()F

    move-result v10

    sub-float/2addr v9, v10

    iput v9, v8, Landroid/graphics/PointF;->x:F

    goto :goto_2

    .line 395
    :cond_d
    iget v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_a

    .line 396
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Framework_DisableCompensationTouchAreaInScrollBar"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 398
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getLeft()F

    move-result v9

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_e

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getRight()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_f

    .line 399
    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 403
    :cond_f
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v8, v5

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_10

    .line 404
    iget-object v9, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iput v8, v9, Landroid/graphics/PointF;->y:F

    .line 411
    :goto_4
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 412
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    if-eqz v8, :cond_a

    .line 413
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getLeft()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float/2addr v9, v5

    invoke-direct {p0, v8, v9}, Lcom/sec/android/glview/TwGLSlider;->findNearestStepId(FF)I

    move-result v7

    .line 414
    .restart local v7       #tempStep:I
    iget v8, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    if-eq v7, v8, :cond_a

    .line 415
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    invoke-direct {p0, v7}, Lcom/sec/android/glview/TwGLSlider;->translateStepByOrdering(I)I

    move-result v9

    invoke-interface {v8, v9}, Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;->onStepChanged(I)V

    .line 416
    iput v7, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    goto/16 :goto_3

    .line 405
    .end local v7           #tempStep:I
    :cond_10
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    sub-float/2addr v8, v5

    cmpl-float v8, v8, v4

    if-lez v8, :cond_11

    .line 406
    iget-object v9, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    iget v10, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iput v8, v9, Landroid/graphics/PointF;->y:F

    goto :goto_4

    .line 408
    :cond_11
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float/2addr v9, v5

    iput v9, v8, Landroid/graphics/PointF;->y:F

    goto :goto_4

    .line 421
    :cond_12
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_13

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1b

    .line 423
    :cond_13
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 424
    .local v2, posX:F
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 425
    .local v3, posY:F
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getLeft()F

    move-result v8

    sub-float v8, v2, v8

    sub-float v9, v3, v5

    invoke-direct {p0, v8, v9}, Lcom/sec/android/glview/TwGLSlider;->findNearestStepId(FF)I

    move-result v1

    .line 427
    .local v1, nearestId:I
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_Framework_DisableCompensationTouchAreaInScrollBar"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 429
    iget v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_15

    .line 430
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getTop()F

    move-result v9

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_14

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getBottom()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_17

    .line 431
    :cond_14
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/sec/android/glview/TwGLSlider;->setDraggable(Z)V

    .line 432
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 434
    :cond_15
    iget v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_17

    .line 435
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getLeft()F

    move-result v9

    cmpg-float v8, v8, v9

    if-ltz v8, :cond_16

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getRight()F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_17

    .line 436
    :cond_16
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/sec/android/glview/TwGLSlider;->setDraggable(Z)V

    .line 437
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 442
    :cond_17
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    if-eqz v8, :cond_18

    .line 443
    iget v8, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    if-eq v1, v8, :cond_18

    .line 444
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    invoke-direct {p0, v1}, Lcom/sec/android/glview/TwGLSlider;->translateStepByOrdering(I)I

    move-result v9

    invoke-interface {v8, v9}, Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;->onStepChanged(I)V

    .line 447
    :cond_18
    iput v1, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    .line 450
    iget v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1c

    .line 451
    new-instance v6, Ljava/lang/Thread;

    new-instance v8, Lcom/sec/android/glview/TwGLSlider$1;

    invoke-direct {v8, p0, v1, v2, v3}, Lcom/sec/android/glview/TwGLSlider$1;-><init>(Lcom/sec/android/glview/TwGLSlider;IFF)V

    invoke-direct {v6, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 467
    .local v6, t:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 488
    .end local v6           #t:Ljava/lang/Thread;
    :cond_19
    :goto_5
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    if-eqz v8, :cond_1a

    .line 489
    iget v8, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    if-eq v1, v8, :cond_1a

    .line 490
    iget-object v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    invoke-direct {p0, v1}, Lcom/sec/android/glview/TwGLSlider;->translateStepByOrdering(I)I

    move-result v9

    invoke-interface {v8, v9}, Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;->onStepChanged(I)V

    .line 493
    :cond_1a
    iput v1, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    .line 494
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/sec/android/glview/TwGLSlider;->setDraggable(Z)V

    .line 496
    .end local v1           #nearestId:I
    .end local v2           #posX:F
    .end local v3           #posY:F
    :cond_1b
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 468
    .restart local v1       #nearestId:I
    .restart local v2       #posX:F
    .restart local v3       #posY:F
    :cond_1c
    iget v8, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_19

    .line 469
    new-instance v6, Ljava/lang/Thread;

    new-instance v8, Lcom/sec/android/glview/TwGLSlider$2;

    invoke-direct {v8, p0, v1}, Lcom/sec/android/glview/TwGLSlider$2;-><init>(Lcom/sec/android/glview/TwGLSlider;I)V

    invoke-direct {v6, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 485
    .restart local v6       #t:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_5
.end method

.method public setCurrentStep(I)Z
    .locals 7
    .parameter "step"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 100
    if-ltz p1, :cond_3

    iget v1, p0, Lcom/sec/android/glview/TwGLSlider;->mNumOfStep:I

    if-ge p1, v1, :cond_3

    .line 101
    invoke-direct {p0, p1}, Lcom/sec/android/glview/TwGLSlider;->translateStepByOrdering(I)I

    move-result v0

    .line 102
    .local v0, newStep:I
    const-string v1, "TwGLSlider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCurrentStep="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", currentStep="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget v1, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    if-ne v1, v0, :cond_0

    move v1, v2

    .line 117
    .end local v0           #newStep:I
    :goto_0
    return v1

    .line 106
    .restart local v0       #newStep:I
    :cond_0
    iput v0, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    .line 107
    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    iget v4, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    iget v5, p0, Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 108
    iget-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_1

    .line 109
    iget v1, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    if-ne v1, v2, :cond_2

    .line 110
    iget-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v3, v6}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    :cond_1
    :goto_1
    move v1, v2

    .line 115
    goto :goto_0

    .line 111
    :cond_2
    iget v1, p0, Lcom/sec/android/glview/TwGLSlider;->mOrientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 112
    iget-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    iget-object v3, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v6, v3}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    goto :goto_1

    .line 117
    .end local v0           #newStep:I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setGauge(IFF)V
    .locals 8
    .parameter "resId"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 177
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    move v3, v2

    move v4, p2

    move v5, p3

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    .line 178
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 180
    invoke-direct {p0}, Lcom/sec/android/glview/TwGLSlider;->setStepIndicatorPosition()V

    .line 182
    iget-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iput v0, v1, Landroid/graphics/PointF;->x:F

    .line 183
    iget-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iput v0, v1, Landroid/graphics/PointF;->y:F

    .line 184
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLImage;->moveLayout(FF)V

    .line 185
    return-void
.end method

.method public setIndicatorVisibility(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/sec/android/glview/TwGLSlider;->mIndicatorVisibility:Z

    .line 196
    return-void
.end method

.method public setOnSliderChangeListener(Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/sec/android/glview/TwGLSlider;->mOnSliderChangeListener:Lcom/sec/android/glview/TwGLSlider$OnSliderChangeListener;

    .line 64
    return-void
.end method

.method public setOrder(I)Z
    .locals 1
    .parameter "option"

    .prologue
    .line 160
    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 161
    :cond_0
    iput p1, p0, Lcom/sec/android/glview/TwGLSlider;->mOrder:I

    .line 162
    const/4 v0, 0x1

    .line 164
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSliderBar(IFF)V
    .locals 3
    .parameter "resId"
    .parameter "left"
    .parameter "top"

    .prologue
    .line 188
    iput p1, p0, Lcom/sec/android/glview/TwGLSlider;->mIndicatorResId:I

    .line 190
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLSlider;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/glview/TwGLSlider;->mIndicatorResId:I

    invoke-direct {v0, v1, p2, p3, v2}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    .line 191
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider;->mSliderBar:Lcom/sec/android/glview/TwGLImage;

    iput-object p0, v0, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 192
    return-void
.end method
