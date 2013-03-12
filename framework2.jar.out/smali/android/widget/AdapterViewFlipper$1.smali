.class Landroid/widget/AdapterViewFlipper$1;
.super Landroid/content/BroadcastReceiver;
.source "AdapterViewFlipper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AdapterViewFlipper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AdapterViewFlipper;


# direct methods
.method constructor <init>(Landroid/widget/AdapterViewFlipper;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    #setter for: Landroid/widget/AdapterViewFlipper;->mUserPresent:Z
    invoke-static {v1, v4}, Landroid/widget/AdapterViewFlipper;->access$002(Landroid/widget/AdapterViewFlipper;Z)Z

    .line 96
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    #calls: Landroid/widget/AdapterViewFlipper;->updateRunning()V
    invoke-static {v1}, Landroid/widget/AdapterViewFlipper;->access$100(Landroid/widget/AdapterViewFlipper;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    #setter for: Landroid/widget/AdapterViewFlipper;->mUserPresent:Z
    invoke-static {v1, v5}, Landroid/widget/AdapterViewFlipper;->access$002(Landroid/widget/AdapterViewFlipper;Z)Z

    .line 99
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    #calls: Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V
    invoke-static {v1, v4}, Landroid/widget/AdapterViewFlipper;->access$200(Landroid/widget/AdapterViewFlipper;Z)V

    goto :goto_0

    .line 100
    :cond_2
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    #getter for: Landroid/widget/AdapterViewFlipper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Landroid/widget/AdapterViewFlipper;->access$300(Landroid/widget/AdapterViewFlipper;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    if-nez v1, :cond_3

    .line 103
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    #getter for: Landroid/widget/AdapterViewFlipper;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/AdapterViewFlipper;->access$400(Landroid/widget/AdapterViewFlipper;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 104
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    #getter for: Landroid/widget/AdapterViewFlipper;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/widget/AdapterViewFlipper;->access$400(Landroid/widget/AdapterViewFlipper;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    #setter for: Landroid/widget/AdapterViewFlipper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1, v2}, Landroid/widget/AdapterViewFlipper;->access$302(Landroid/widget/AdapterViewFlipper;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/internal/widget/LockPatternUtils;

    .line 107
    :cond_3
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    #getter for: Landroid/widget/AdapterViewFlipper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Landroid/widget/AdapterViewFlipper;->access$300(Landroid/widget/AdapterViewFlipper;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    #getter for: Landroid/widget/AdapterViewFlipper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v1}, Landroid/widget/AdapterViewFlipper;->access$300(Landroid/widget/AdapterViewFlipper;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const-string v1, "ViewFlipper"

    const-string v2, "LockScreen disabled."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    #setter for: Landroid/widget/AdapterViewFlipper;->mUserPresent:Z
    invoke-static {v1, v5}, Landroid/widget/AdapterViewFlipper;->access$002(Landroid/widget/AdapterViewFlipper;Z)Z

    .line 110
    iget-object v1, p0, Landroid/widget/AdapterViewFlipper$1;->this$0:Landroid/widget/AdapterViewFlipper;

    #calls: Landroid/widget/AdapterViewFlipper;->updateRunning(Z)V
    invoke-static {v1, v4}, Landroid/widget/AdapterViewFlipper;->access$200(Landroid/widget/AdapterViewFlipper;Z)V

    goto :goto_0
.end method
