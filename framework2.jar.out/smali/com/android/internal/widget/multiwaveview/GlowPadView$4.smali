.class Lcom/android/internal/widget/multiwaveview/GlowPadView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/multiwaveview/GlowPadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/multiwaveview/GlowPadView;)V
    .locals 0
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animator"

    .prologue
    const/4 v2, 0x0

    .line 181
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources:I
    invoke-static {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->access$500(Lcom/android/internal/widget/multiwaveview/GlowPadView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iget-object v1, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    #getter for: Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources:I
    invoke-static {v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->access$500(Lcom/android/internal/widget/multiwaveview/GlowPadView;)I

    move-result v1

    #calls: Lcom/android/internal/widget/multiwaveview/GlowPadView;->internalSetTargetResources(I)V
    invoke-static {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->access$600(Lcom/android/internal/widget/multiwaveview/GlowPadView;I)V

    .line 183
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    #setter for: Lcom/android/internal/widget/multiwaveview/GlowPadView;->mNewTargetResources:I
    invoke-static {v0, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->access$502(Lcom/android/internal/widget/multiwaveview/GlowPadView;I)I

    .line 184
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    #calls: Lcom/android/internal/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V
    invoke-static {v0, v2, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->access$700(Lcom/android/internal/widget/multiwaveview/GlowPadView;ZZ)V

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/multiwaveview/GlowPadView$4;->this$0:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    #setter for: Lcom/android/internal/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z
    invoke-static {v0, v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->access$802(Lcom/android/internal/widget/multiwaveview/GlowPadView;Z)Z

    .line 187
    return-void
.end method
