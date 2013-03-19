.class Lcom/sec/android/app/camera/Camera$1;
.super Landroid/os/Handler;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camera;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 621
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 622
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 623
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    #setter for: Lcom/sec/android/app/camera/Camera;->mActiveIp:Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/sec/android/app/camera/Camera;->access$1002(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;)Ljava/lang/String;

    .line 624
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 683
    :cond_1
    :goto_0
    return-void

    .line 626
    :pswitch_0
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/sec/android/app/camera/Camera$1$1;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/Camera$1$1;-><init>(Lcom/sec/android/app/camera/Camera$1;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 642
    :pswitch_1
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/sec/android/app/camera/Camera$1$2;

    invoke-direct {v4, p0}, Lcom/sec/android/app/camera/Camera$1$2;-><init>(Lcom/sec/android/app/camera/Camera$1;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 659
    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->refreshDeviceList()V

    goto :goto_0

    .line 662
    :pswitch_3
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mActiveIp:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/Camera$UserWrapper;->searchUser(Ljava/lang/String;)Lcom/samsung/shareshot/User;

    move-result-object v2

    .line 663
    .local v2, user:Lcom/samsung/shareshot/User;
    if-eqz v2, :cond_1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v3

    if-nez v3, :cond_1

    .line 666
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v3, :cond_3

    .line 667
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mActiveIp:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/shareshot/IShareShotService;->cancelActivateUser(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :cond_3
    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v3

    if-nez v3, :cond_1

    .line 673
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->refreshDeviceList()V

    goto :goto_0

    .line 668
    :catch_0
    move-exception v1

    .line 670
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 677
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #user:Lcom/samsung/shareshot/User;
    :pswitch_4
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v3, v3, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuResourceDepot:Lcom/sec/android/app/camera/MenuResourceDepot;

    iget-object v3, v3, Lcom/sec/android/app/camera/MenuResourceDepot;->mMenus:Ljava/util/HashMap;

    const/16 v4, 0x35

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;

    .line 678
    .local v0, ShareShot:Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLShootAndShareMenu;->showDisplayCount()V

    goto :goto_0

    .line 624
    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
