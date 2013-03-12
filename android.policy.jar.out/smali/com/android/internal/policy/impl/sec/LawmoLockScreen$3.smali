.class Lcom/android/internal/policy/impl/sec/LawmoLockScreen$3;
.super Landroid/os/CountDownTimer;
.source "LawmoLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/LawmoLockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/LawmoLockScreen;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/LawmoLockScreen;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/LawmoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->access$100(Lcom/android/internal/policy/impl/sec/LawmoLockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/LawmoLockScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10403e3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/LawmoLockScreen;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mFailedPatternAttemptsSinceLastTimeout:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->access$202(Lcom/android/internal/policy/impl/sec/LawmoLockScreen;I)I

    .line 457
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/LawmoLockScreen;

    sget-object v1, Lcom/android/internal/policy/impl/sec/LawmoLockScreen$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/sec/LawmoLockScreen$FooterMode;

    #calls: Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->updateFooter(Lcom/android/internal/policy/impl/sec/LawmoLockScreen$FooterMode;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->access$300(Lcom/android/internal/policy/impl/sec/LawmoLockScreen;Lcom/android/internal/policy/impl/sec/LawmoLockScreen$FooterMode;)V

    .line 458
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .parameter "millisUntilFinished"

    .prologue
    .line 435
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 436
    .local v0, secondsRemaining:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/LawmoLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->mKeyguardStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->access$100(Lcom/android/internal/policy/impl/sec/LawmoLockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/LawmoLockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/LawmoLockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/LawmoLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040415

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 440
    return-void
.end method
