.class Lcom/sec/android/glview/TwGLSlider$1;
.super Ljava/lang/Object;
.source "TwGLSlider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/glview/TwGLSlider;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/glview/TwGLSlider;

.field final synthetic val$nearestId:I

.field final synthetic val$posX:F

.field final synthetic val$posY:F


# direct methods
.method constructor <init>(Lcom/sec/android/glview/TwGLSlider;IFF)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/sec/android/glview/TwGLSlider$1;->this$0:Lcom/sec/android/glview/TwGLSlider;

    iput p2, p0, Lcom/sec/android/glview/TwGLSlider$1;->val$nearestId:I

    iput p3, p0, Lcom/sec/android/glview/TwGLSlider$1;->val$posX:F

    iput p4, p0, Lcom/sec/android/glview/TwGLSlider$1;->val$posY:F

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const v7, 0x3dcccccd

    const/4 v6, 0x0

    .line 453
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$1;->this$0:Lcom/sec/android/glview/TwGLSlider;

    #getter for: Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLSlider;->access$000(Lcom/sec/android/glview/TwGLSlider;)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$1;->this$0:Lcom/sec/android/glview/TwGLSlider;

    #getter for: Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLSlider;->access$100(Lcom/sec/android/glview/TwGLSlider;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/glview/TwGLSlider$1;->val$nearestId:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    .line 454
    :goto_0
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$1;->this$0:Lcom/sec/android/glview/TwGLSlider;

    #getter for: Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLSlider;->access$000(Lcom/sec/android/glview/TwGLSlider;)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$1;->this$0:Lcom/sec/android/glview/TwGLSlider;

    #getter for: Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLSlider;->access$100(Lcom/sec/android/glview/TwGLSlider;)Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/sec/android/glview/TwGLSlider$1;->val$nearestId:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$1;->this$0:Lcom/sec/android/glview/TwGLSlider;

    #getter for: Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLSlider;->access$000(Lcom/sec/android/glview/TwGLSlider;)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v7

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 456
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$1;->this$0:Lcom/sec/android/glview/TwGLSlider;

    #getter for: Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLSlider;->access$200(Lcom/sec/android/glview/TwGLSlider;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    const v1, -0x42333333

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/glview/TwGLImage;->translate(FF)V

    goto :goto_0

    .line 459
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$1;->this$0:Lcom/sec/android/glview/TwGLSlider;

    #getter for: Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLSlider;->access$000(Lcom/sec/android/glview/TwGLSlider;)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$1;->this$0:Lcom/sec/android/glview/TwGLSlider;

    #getter for: Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLSlider;->access$100(Lcom/sec/android/glview/TwGLSlider;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLSlider$1;->this$0:Lcom/sec/android/glview/TwGLSlider;

    iget v3, p0, Lcom/sec/android/glview/TwGLSlider$1;->val$posX:F

    iget-object v4, p0, Lcom/sec/android/glview/TwGLSlider$1;->this$0:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLSlider;->getLeft()F

    move-result v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/sec/android/glview/TwGLSlider$1;->val$posY:F

    iget-object v5, p0, Lcom/sec/android/glview/TwGLSlider$1;->this$0:Lcom/sec/android/glview/TwGLSlider;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLSlider;->getTop()F

    move-result v5

    sub-float/2addr v4, v5

    #calls: Lcom/sec/android/glview/TwGLSlider;->findNearestStepId(FF)I
    invoke-static {v2, v3, v4}, Lcom/sec/android/glview/TwGLSlider;->access$300(Lcom/sec/android/glview/TwGLSlider;FF)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$1;->this$0:Lcom/sec/android/glview/TwGLSlider;

    #getter for: Lcom/sec/android/glview/TwGLSlider;->mGaugePos:Landroid/graphics/PointF;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLSlider;->access$000(Lcom/sec/android/glview/TwGLSlider;)Landroid/graphics/PointF;

    move-result-object v0

    iget v1, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v7

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 461
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$1;->this$0:Lcom/sec/android/glview/TwGLSlider;

    #getter for: Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLSlider;->access$200(Lcom/sec/android/glview/TwGLSlider;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Lcom/sec/android/glview/TwGLImage;->translate(FF)V

    goto :goto_1

    .line 464
    :cond_1
    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$1;->this$0:Lcom/sec/android/glview/TwGLSlider;

    #getter for: Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLSlider;->access$200(Lcom/sec/android/glview/TwGLSlider;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v1

    iget-object v0, p0, Lcom/sec/android/glview/TwGLSlider$1;->this$0:Lcom/sec/android/glview/TwGLSlider;

    #getter for: Lcom/sec/android/glview/TwGLSlider;->mStepPosition:Ljava/util/List;
    invoke-static {v0}, Lcom/sec/android/glview/TwGLSlider;->access$100(Lcom/sec/android/glview/TwGLSlider;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/glview/TwGLSlider$1;->this$0:Lcom/sec/android/glview/TwGLSlider;

    #getter for: Lcom/sec/android/glview/TwGLSlider;->mCurrentStep:I
    invoke-static {v2}, Lcom/sec/android/glview/TwGLSlider;->access$400(Lcom/sec/android/glview/TwGLSlider;)I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/sec/android/glview/TwGLSlider$1;->this$0:Lcom/sec/android/glview/TwGLSlider;

    #getter for: Lcom/sec/android/glview/TwGLSlider;->mGauge:Lcom/sec/android/glview/TwGLImage;
    invoke-static {v2}, Lcom/sec/android/glview/TwGLSlider;->access$200(Lcom/sec/android/glview/TwGLSlider;)Lcom/sec/android/glview/TwGLImage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getTranslateX()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0, v6}, Lcom/sec/android/glview/TwGLImage;->translate(FF)V

    .line 465
    return-void
.end method
