.class Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceConnectionForCaptureEffect"
.end annotation


# instance fields
.field private mShotEvent:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;I)V
    .locals 1
    .parameter
    .parameter "event"

    .prologue
    .line 5609
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5607
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->mShotEvent:I

    .line 5610
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->mShotEvent:I

    .line 5611
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .parameter "name"
    .parameter "service"

    .prologue
    .line 5615
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v5

    .line 5616
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eq v4, p0, :cond_0

    .line 5617
    monitor-exit v5

    .line 5645
    :goto_0
    return-void

    .line 5619
    :cond_0
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 5620
    .local v1, messenger:Landroid/os/Messenger;
    const/4 v4, 0x0

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->mShotEvent:I

    invoke-static {v4, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 5621
    .local v2, msg:Landroid/os/Message;
    move-object v3, p0

    .line 5622
    .local v3, myConn:Landroid/content/ServiceConnection;
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect$1;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, p0, v4, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;Landroid/os/Looper;Landroid/content/ServiceConnection;)V

    .line 5634
    .local v0, h:Landroid/os/Handler;
    new-instance v4, Landroid/os/Messenger;

    invoke-direct {v4, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v4, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 5635
    const/4 v4, 0x0

    iput v4, v2, Landroid/os/Message;->arg2:I

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 5636
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5637
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 5638
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ServiceConnectionForCaptureEffect;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v4, v4, Lcom/android/internal/policy/impl/PhoneWindowManager;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Landroid/view/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5639
    const/4 v4, 0x1

    iput v4, v2, Landroid/os/Message;->arg2:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5641
    :cond_2
    :try_start_1
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5644
    :goto_1
    :try_start_2
    monitor-exit v5

    goto :goto_0

    .end local v0           #h:Landroid/os/Handler;
    .end local v1           #messenger:Landroid/os/Messenger;
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #myConn:Landroid/content/ServiceConnection;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 5642
    .restart local v0       #h:Landroid/os/Handler;
    .restart local v1       #messenger:Landroid/os/Messenger;
    .restart local v2       #msg:Landroid/os/Message;
    .restart local v3       #myConn:Landroid/content/ServiceConnection;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 5647
    return-void
.end method
