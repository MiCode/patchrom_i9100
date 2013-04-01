.class public Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;
.super Landroid/view/animation/Animation;
.source "FrequencyDialer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/ui/FrequencyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DialAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/ui/FrequencyDialer;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/fm/ui/FrequencyDialer;)V
    .locals 0
    .parameter

    .prologue
    .line 563
    iput-object p1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 564
    invoke-virtual {p0, p0}, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 565
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interpolatedTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->log(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    #getter for: Lcom/sec/android/app/fm/ui/FrequencyDialer;->mPreviousFrequencyPosition:J
    invoke-static {v1}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->access$100(Lcom/sec/android/app/fm/ui/FrequencyDialer;)J

    move-result-wide v1

    long-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    #getter for: Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCurrentFrequencyPosition:J
    invoke-static {v2}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->access$200(Lcom/sec/android/app/fm/ui/FrequencyDialer;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    #getter for: Lcom/sec/android/app/fm/ui/FrequencyDialer;->mPreviousFrequencyPosition:J
    invoke-static {v4}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->access$100(Lcom/sec/android/app/fm/ui/FrequencyDialer;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-long v1, v1

    #setter for: Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->access$002(Lcom/sec/android/app/fm/ui/FrequencyDialer;J)J

    .line 573
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    #getter for: Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J
    invoke-static {v1}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->access$000(Lcom/sec/android/app/fm/ui/FrequencyDialer;)J

    move-result-wide v1

    #calls: Lcom/sec/android/app/fm/ui/FrequencyDialer;->calculatePositionFreqOfDialerPoint(J)F
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->access$300(Lcom/sec/android/app/fm/ui/FrequencyDialer;J)F

    .line 574
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->invalidate()V

    .line 575
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    #getter for: Lcom/sec/android/app/fm/ui/FrequencyDialer;->mOnDegreeChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;
    invoke-static {v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->access$400(Lcom/sec/android/app/fm/ui/FrequencyDialer;)Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    #getter for: Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J
    invoke-static {v1}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->access$000(Lcom/sec/android/app/fm/ui/FrequencyDialer;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;->onFreqChanged(J)V

    .line 576
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 577
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    const-string v1, "onAnimationEnd"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->log(Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    #getter for: Lcom/sec/android/app/fm/ui/FrequencyDialer;->mCurrentFrequencyPosition:J
    invoke-static {v1}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->access$200(Lcom/sec/android/app/fm/ui/FrequencyDialer;)J

    move-result-wide v1

    #setter for: Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->access$002(Lcom/sec/android/app/fm/ui/FrequencyDialer;J)J

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    #getter for: Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J
    invoke-static {v1}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->access$000(Lcom/sec/android/app/fm/ui/FrequencyDialer;)J

    move-result-wide v1

    #calls: Lcom/sec/android/app/fm/ui/FrequencyDialer;->calculatePositionFreqOfDialerPoint(J)F
    invoke-static {v0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->access$300(Lcom/sec/android/app/fm/ui/FrequencyDialer;J)F

    .line 585
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    invoke-virtual {v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->invalidate()V

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    #getter for: Lcom/sec/android/app/fm/ui/FrequencyDialer;->mOnDegreeChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;
    invoke-static {v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->access$400(Lcom/sec/android/app/fm/ui/FrequencyDialer;)Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    #getter for: Lcom/sec/android/app/fm/ui/FrequencyDialer;->mFrequency:J
    invoke-static {v1}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->access$000(Lcom/sec/android/app/fm/ui/FrequencyDialer;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;->onFreqChanged(J)V

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    #getter for: Lcom/sec/android/app/fm/ui/FrequencyDialer;->isStart:Z
    invoke-static {v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->access$500(Lcom/sec/android/app/fm/ui/FrequencyDialer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    #getter for: Lcom/sec/android/app/fm/ui/FrequencyDialer;->mOnDegreeChangeListener:Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;
    invoke-static {v0}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->access$400(Lcom/sec/android/app/fm/ui/FrequencyDialer;)Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDialer$OnDegreeChangeListener;->onTouchDial(I)V

    .line 590
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 596
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/sec/android/app/fm/ui/FrequencyDialer$DialAnimation;->this$0:Lcom/sec/android/app/fm/ui/FrequencyDialer;

    const-string v1, "onAnimationStart"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/fm/ui/FrequencyDialer;->log(Ljava/lang/String;)V

    .line 602
    return-void
.end method
