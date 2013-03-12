.class Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;
.super Ljava/lang/Object;
.source "PatternUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PatternUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockPatternListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;Lcom/android/internal/policy/impl/PatternUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;-><init>(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    const/16 v1, 0x1b58

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    const/16 v1, 0x7d0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    goto :goto_0
.end method

.method public onPatternCleared()V
    .locals 0

    .prologue
    .line 398
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v7, 0x1

    .line 412
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$400(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 413
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v4

    sget-object v5, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 415
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$500(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 416
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$500(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateStatusLines(Z)V

    .line 417
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 418
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 419
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/security/KeyStore;->password(Ljava/lang/String;)Z

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    const/4 v3, 0x0

    .line 422
    .local v3, reportFailedAttempt:Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    .line 423
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    const/16 v5, 0x1b58

    invoke-interface {v4, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 425
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v4

    sget-object v5, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 426
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_3

    .line 427
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$608(Lcom/android/internal/policy/impl/PatternUnlockScreen;)I

    .line 428
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$708(Lcom/android/internal/policy/impl/PatternUnlockScreen;)I

    .line 429
    const/4 v3, 0x1

    .line 432
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/PatternUnlockScreen;->isDeviceDisabledForMaxFailedAttempt()Z
    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$800(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Z

    move-result v2

    .line 433
    .local v2, lDeviceDisableForMaxFailedAttempt:Z
    if-nez v2, :cond_5

    .line 435
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mFailedPatternAttemptsSinceLastTimeout:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$700(Lcom/android/internal/policy/impl/PatternUnlockScreen;)I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_4

    .line 437
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$400(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 438
    .local v0, deadline:J
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/PatternUnlockScreen;->handleAttemptLockout(J)V
    invoke-static {v4, v0, v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$900(Lcom/android/internal/policy/impl/PatternUnlockScreen;J)V

    .line 457
    .end local v0           #deadline:J
    :goto_1
    if-eqz v3, :cond_0

    .line 458
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$100(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportFailedUnlockAttempt()V

    goto :goto_0

    .line 441
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$500(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10403e7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 443
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$500(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->updateStatusLines(Z)V

    .line 444
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$300(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 451
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #calls: Lcom/android/internal/policy/impl/PatternUnlockScreen;->disableDevicePermanently()V
    invoke-static {v4}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$1000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)V

    goto :goto_1
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PatternUnlockScreen$UnlockPatternListener;->this$0:Lcom/android/internal/policy/impl/PatternUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PatternUnlockScreen;->mCancelPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PatternUnlockScreen;->access$300(Lcom/android/internal/policy/impl/PatternUnlockScreen;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 395
    return-void
.end method
