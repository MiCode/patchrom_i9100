.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayPinMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    return-void
.end method

.method public doesFallbackUnlockScreenExist()Z
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public forgotPattern(Z)V
    .locals 3
    .parameter "isForgotten"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableSparePassword:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$702(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 413
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    const/4 v2, 0x0

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 415
    :cond_1
    return-void
.end method

.method public goToLockScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 380
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$702(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 381
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$802(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 385
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    goto :goto_0
.end method

.method public goToUnlockScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 392
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 393
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSwipeLockShowingBeforeTimeout:Z

    if-eqz v1, :cond_3

    .line 402
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 403
    sput-boolean v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSwipeLockShowingBeforeTimeout:Z

    goto :goto_0

    .line 406
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isSecure()Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public isShowingAndNotHidden()Z
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->isShowingAndNotHidden()Z

    move-result v0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public keyguardDone(Z)V
    .locals 2
    .parameter "authenticated"

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 523
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1802(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/os/Parcelable;)Landroid/os/Parcelable;

    .line 524
    return-void
.end method

.method public keyguardDoneDrawing()V
    .locals 0

    .prologue
    .line 528
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 515
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock(I)V

    .line 519
    return-void
.end method

.method public recreateMe(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 426
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "recreateMe()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 428
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->post(Ljava/lang/Runnable;)Z

    .line 429
    return-void
.end method

.method public reportDeviceWipe(I)V
    .locals 1
    .parameter "attempts"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showWipeDialog(I)V
    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;I)V

    .line 532
    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 535
    iget-object v9, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v9}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt()V

    .line 536
    iget-object v9, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v9}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportFailedAttempt()V

    .line 537
    iget-object v9, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v9}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v1

    .line 538
    .local v1, failedAttempts:I
    const-string v9, "LockPatternKeyguardView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reportFailedPatternAttempt: #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " (enableFallback="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v11}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v9, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v9}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v9

    const/high16 v10, 0x1

    if-ne v9, v10, :cond_1

    move v6, v7

    .line 544
    .local v6, usingPattern:Z
    :goto_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v9}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v2

    .line 547
    .local v2, failedAttemptsBeforeWipe:I
    const/16 v0, 0xf

    .line 550
    .local v0, failedAttemptWarning:I
    if-lez v2, :cond_2

    sub-int v4, v2, v1

    .line 554
    .local v4, remainingBeforeWipe:I
    :goto_1
    const/4 v9, 0x5

    if-ge v4, v9, :cond_5

    .line 559
    if-lez v4, :cond_3

    .line 560
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showAlmostAtWipeDialog(II)V
    invoke-static {v7, v1, v4}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;II)V

    .line 597
    :cond_0
    :goto_2
    return-void

    .end local v0           #failedAttemptWarning:I
    .end local v2           #failedAttemptsBeforeWipe:I
    .end local v4           #remainingBeforeWipe:I
    .end local v6           #usingPattern:Z
    :cond_1
    move v6, v8

    .line 541
    goto :goto_0

    .line 550
    .restart local v0       #failedAttemptWarning:I
    .restart local v2       #failedAttemptsBeforeWipe:I
    .restart local v6       #usingPattern:Z
    :cond_2
    const v4, 0x7fffffff

    goto :goto_1

    .line 562
    .restart local v4       #remainingBeforeWipe:I
    :cond_3
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/admin/DevicePolicyManager;->getPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v8

    if-ne v7, v8, :cond_4

    .line 563
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v7}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/admin/DevicePolicyManager;->recoverPassword()V

    .line 564
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showRecovery()V
    invoke-static {v7}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    goto :goto_2

    .line 567
    :cond_4
    const-string v7, "LockPatternKeyguardView"

    const-string v8, "Too many unlock attempts; device will be wiped!"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showWipeDialog(I)V
    invoke-static {v7, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;I)V

    goto :goto_2

    .line 572
    :cond_5
    rem-int/lit8 v9, v1, 0x5

    if-nez v9, :cond_8

    move v5, v7

    .line 574
    .local v5, showTimeout:Z
    :goto_3
    if-eqz v6, :cond_7

    iget-object v9, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z
    invoke-static {v9}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v9

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableSparePassword:Z
    invoke-static {v9}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 575
    :cond_6
    const/16 v9, 0xf

    if-ne v1, v9, :cond_9

    .line 576
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showAlmostAtAccountLoginDialog()V
    invoke-static {v7}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 577
    const/4 v5, 0x0

    .line 585
    :cond_7
    :goto_4
    if-eqz v5, :cond_0

    .line 589
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->isDeviceDisabledForMaxFailedAttempt()Z
    invoke-static {v7}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v3

    .line 590
    .local v3, lDeviceDisableForMaxFailedAttempt:Z
    if-nez v3, :cond_0

    .line 591
    const-string v7, "LockPatternKeyguardView"

    const-string v8, "showing timeout dialog"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->showTimeoutDialog()V
    invoke-static {v7}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    goto :goto_2

    .end local v3           #lDeviceDisableForMaxFailedAttempt:Z
    .end local v5           #showTimeout:Z
    :cond_8
    move v5, v8

    .line 572
    goto :goto_3

    .line 578
    .restart local v5       #showTimeout:Z
    :cond_9
    const/16 v9, 0x14

    if-lt v1, v9, :cond_7

    .line 579
    iget-object v9, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v9}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 580
    iget-object v7, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v9, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    invoke-static {v9}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v9

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V
    invoke-static {v7, v9, v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 582
    const/4 v5, 0x0

    goto :goto_4
.end method

.method public reportSuccessfulUnlockAttempt()V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt()V

    .line 605
    return-void
.end method

.method public setLockScreenReady()V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mLockScreenIsReady:Z

    .line 625
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "!!! callback setLockScreenReady"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 4

    .prologue
    .line 432
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1502(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 434
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->show(J)V

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->stop()Z

    .line 444
    :cond_1
    const/16 v1, 0x2710

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->pokeWakelock(I)V

    .line 445
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 447
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 456
    :goto_0
    return-void

    .line 448
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->VoIPIsInUse()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 449
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeVoIPCall()V

    goto :goto_0

    .line 451
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 452
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 454
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public takeEmergencyCallDial()V
    .locals 4

    .prologue
    .line 486
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1502(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 488
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 489
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->show(J)V

    .line 495
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->stop()Z

    .line 498
    :cond_1
    const/16 v1, 0x2710

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->pokeWakelock(I)V

    .line 499
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 501
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 511
    :goto_0
    return-void

    .line 502
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->VoIPIsInUse()Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 503
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeVoIPCall()V

    goto :goto_0

    .line 505
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 506
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.action.SHOW_EMERGENCY_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 507
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 509
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public takeEmergencyCallList()V
    .locals 4

    .prologue
    .line 460
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    const/4 v2, 0x1

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1502(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 462
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 463
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->show(J)V

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->stop()Z

    .line 472
    :cond_1
    const/16 v1, 0x2710

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->pokeWakelock(I)V

    .line 473
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 475
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 482
    :goto_0
    return-void

    .line 477
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 478
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 480
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
