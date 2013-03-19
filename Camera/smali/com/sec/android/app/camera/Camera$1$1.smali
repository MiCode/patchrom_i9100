.class Lcom/sec/android/app/camera/Camera$1$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camera$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/Camera$1;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camera$1;)V
    .locals 0
    .parameter

    .prologue
    .line 626
    iput-object p1, p0, Lcom/sec/android/app/camera/Camera$1$1;->this$1:Lcom/sec/android/app/camera/Camera$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 631
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$1$1;->this$1:Lcom/sec/android/app/camera/Camera$1;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    if-eqz v1, :cond_0

    .line 632
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera$1$1;->this$1:Lcom/sec/android/app/camera/Camera$1;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    iget-object v1, v1, Lcom/sec/android/app/camera/Camera;->iShootShareService:Lcom/samsung/shareshot/IShareShotService;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera$1$1;->this$1:Lcom/sec/android/app/camera/Camera$1;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera$1;->this$0:Lcom/sec/android/app/camera/Camera;

    #getter for: Lcom/sec/android/app/camera/Camera;->mActiveIp:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/camera/Camera;->access$1000(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/shareshot/IShareShotService;->activateUser(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 633
    :catch_0
    move-exception v0

    .line 635
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
