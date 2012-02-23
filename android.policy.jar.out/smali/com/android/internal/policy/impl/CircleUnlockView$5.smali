.class Lcom/android/internal/policy/impl/CircleUnlockView$5;
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
    .line 350
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleUnlockView$5;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView$5;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1_1:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$800(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 365
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 360
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleUnlockView$5;->this$0:Lcom/android/internal/policy/impl/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/CircleUnlockView;->mCircleArrow1_1:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/CircleUnlockView;->access$800(Lcom/android/internal/policy/impl/CircleUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 355
    return-void
.end method
