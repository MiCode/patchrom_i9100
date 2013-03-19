.class Lcom/sec/android/glview/ToggleAnimation;
.super Landroid/view/animation/Animation;
.source "TwGLUtil.java"


# instance fields
.field cx:F

.field cy:F


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 709
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 725
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    .line 726
    .local v0, cam:Landroid/graphics/Camera;
    const/high16 v2, 0x4334

    mul-float/2addr v2, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Camera;->rotateY(F)V

    .line 727
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 728
    .local v1, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 730
    iget v2, p0, Lcom/sec/android/glview/ToggleAnimation;->cx:F

    neg-float v2, v2

    iget v3, p0, Lcom/sec/android/glview/ToggleAnimation;->cy:F

    neg-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 731
    iget v2, p0, Lcom/sec/android/glview/ToggleAnimation;->cx:F

    iget v3, p0, Lcom/sec/android/glview/ToggleAnimation;->cy:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 732
    return-void
.end method

.method public initialize(IIII)V
    .locals 2
    .parameter "width"
    .parameter "height"
    .parameter "parentWidth"
    .parameter "parentHeight"

    .prologue
    const/high16 v1, 0x4000

    .line 716
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 717
    int-to-float v0, p1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/ToggleAnimation;->cx:F

    .line 718
    int-to-float v0, p2

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/glview/ToggleAnimation;->cy:F

    .line 719
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/android/glview/ToggleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 721
    return-void
.end method
