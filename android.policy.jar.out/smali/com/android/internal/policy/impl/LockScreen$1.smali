.class Lcom/android/internal/policy/impl/LockScreen$1;
.super Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;
.source "LockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallbackImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public onDevicePolicyManagerStateChanged()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->updateTargets()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)V

    .line 103
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 93
    const/4 v1, 0x2

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    .line 94
    .local v0, silent:Z
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$000(Lcom/android/internal/policy/impl/LockScreen;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #setter for: Lcom/android/internal/policy/impl/LockScreen;->mSilentMode:Z
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/LockScreen;->access$002(Lcom/android/internal/policy/impl/LockScreen;Z)Z

    .line 96
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockScreen$1;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mUnlockWidgetMethods:Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;
    invoke-static {v1}, Lcom/android/internal/policy/impl/LockScreen;->access$100(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;->updateResources()V

    .line 98
    :cond_0
    return-void

    .line 93
    .end local v0           #silent:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
