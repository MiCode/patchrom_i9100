.class Lcom/android/internal/policy/impl/sec/TickerWidget$5$1;
.super Ljava/lang/Object;
.source "TickerWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/TickerWidget$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$5;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/TickerWidget$5;)V
    .locals 0
    .parameter

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$5$1;->this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$5;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 400
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$5$1;->this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/TickerWidget$5;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #calls: Lcom/android/internal/policy/impl/sec/TickerWidget;->updateFacebookInstalled()V
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1800(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    .line 402
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$5$1;->this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/TickerWidget$5;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mIsFacebookInstalled:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1900(Lcom/android/internal/policy/impl/sec/TickerWidget;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 403
    const-string v3, "fb://newsfeed"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 404
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 405
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 407
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$5$1;->this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/TickerWidget$5;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1600(Lcom/android/internal/policy/impl/sec/TickerWidget;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 415
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$5$1;->this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/TickerWidget$5;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$1700(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 416
    return-void

    .line 408
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 409
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "TickerWidget"

    const-string v4, "dismissKeyguard remoteException"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 413
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #uri:Landroid/net/Uri;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$5$1;->this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$5;

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/TickerWidget$5;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerWidget;->mVerticalScrollView:Lcom/android/internal/policy/impl/sec/TickerScrollView;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$2000(Lcom/android/internal/policy/impl/sec/TickerWidget;)Lcom/android/internal/policy/impl/sec/TickerScrollView;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/policy/impl/sec/TickerScrollView;->mAccountThread:Lcom/android/internal/policy/impl/sec/TickerScrollView$AccountThread;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/sec/TickerScrollView$AccountThread;->start()V

    goto :goto_1
.end method
