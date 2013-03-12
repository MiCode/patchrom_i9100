.class Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$6;
.super Landroid/os/CountDownTimer;
.source "RecoveryUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$6;->this$0:Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 309
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$6;->this$0:Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mPasswordEntry:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->access$500(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$6;->this$0:Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mKeyboardView:Lcom/android/internal/widget/PasswordEntryKeyboardView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->access$600(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)Lcom/android/internal/widget/PasswordEntryKeyboardView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardView;->setEnabled(Z)V

    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$6;->this$0:Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->access$400(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->resetStatusInfo()V

    .line 312
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .parameter "millisUntilFinished"

    .prologue
    .line 300
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v1, v2

    .line 301
    .local v1, secondsRemaining:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$6;->this$0:Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040415

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 304
    .local v0, instructions:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen$6;->this$0:Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->mStatusViewManager:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;->access$400(Lcom/android/internal/policy/impl/sec/RecoveryUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager;->setInstructionText(Ljava/lang/String;)V

    .line 305
    return-void
.end method
