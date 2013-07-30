.class Lcom/android/sec_settings/lockscreenshortcut/DeleteView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DeleteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/lockscreenshortcut/DeleteView;->startTrashCanFillUnfillAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/lockscreenshortcut/DeleteView;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/lockscreenshortcut/DeleteView;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/sec_settings/lockscreenshortcut/DeleteView$2;->this$0:Lcom/android/sec_settings/lockscreenshortcut/DeleteView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/sec_settings/lockscreenshortcut/DeleteView$2;->this$0:Lcom/android/sec_settings/lockscreenshortcut/DeleteView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/lockscreenshortcut/DeleteView;->setAnimating(Z)V

    .line 438
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 430
    iget-object v0, p0, Lcom/android/sec_settings/lockscreenshortcut/DeleteView$2;->this$0:Lcom/android/sec_settings/lockscreenshortcut/DeleteView;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/lockscreenshortcut/DeleteView;->setAnimating(Z)V

    .line 431
    iget-object v0, p0, Lcom/android/sec_settings/lockscreenshortcut/DeleteView$2;->this$0:Lcom/android/sec_settings/lockscreenshortcut/DeleteView;

    #setter for: Lcom/android/sec_settings/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z
    invoke-static {v0, v1}, Lcom/android/sec_settings/lockscreenshortcut/DeleteView;->access$302(Lcom/android/sec_settings/lockscreenshortcut/DeleteView;Z)Z

    .line 432
    iget-object v0, p0, Lcom/android/sec_settings/lockscreenshortcut/DeleteView$2;->this$0:Lcom/android/sec_settings/lockscreenshortcut/DeleteView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/lockscreenshortcut/DeleteView;->setVisibility(I)V

    .line 433
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 442
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/sec_settings/lockscreenshortcut/DeleteView$2;->this$0:Lcom/android/sec_settings/lockscreenshortcut/DeleteView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/lockscreenshortcut/DeleteView;->setAnimating(Z)V

    .line 426
    return-void
.end method
