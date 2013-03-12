.class Lcom/android/internal/policy/impl/PointerInterceptView$2;
.super Landroid/content/BroadcastReceiver;
.source "PointerInterceptView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PointerInterceptView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PointerInterceptView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PointerInterceptView;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$2;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 237
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    const-string v1, "PointerInterceptView"

    const-string v2, "Receive COLLAPSED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$2;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$500(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$2;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 242
    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$2;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #setter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanded:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$102(Lcom/android/internal/policy/impl/PointerInterceptView;Z)Z

    .line 243
    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$2;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/PointerInterceptView;->sendCallbackFunc(Z)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    const-string v1, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const-string v1, "PointerInterceptView"

    const-string v2, "Receive EXPANDED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$2;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$500(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView$2;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 248
    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$2;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #setter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanded:Z
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$102(Lcom/android/internal/policy/impl/PointerInterceptView;Z)Z

    .line 249
    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$2;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    invoke-virtual {v1, v4}, Lcom/android/internal/policy/impl/PointerInterceptView;->sendCallbackFunc(Z)V

    goto :goto_0
.end method
