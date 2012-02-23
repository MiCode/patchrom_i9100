.class Lcom/android/internal/policy/impl/CircleUnlockView$1;
.super Ljava/lang/Object;
.source "CircleUnlockView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/CircleUnlockView;->setAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/CircleUnlockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/CircleUnlockView;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 252
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1_1:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$800(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim1:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$700(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2_1:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$1000(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim2:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$900(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 246
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3_1:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$1200(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/CircleUnlockView;->arrowRepeatAlphaAnim3:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$1100(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 247
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleOut:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$000(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$200(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim1:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$100(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow2:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$400(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim2:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$300(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow3:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$600(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/CircleUnlockView;->arrowStartAnim3:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$500(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 240
    return-void
.end method
