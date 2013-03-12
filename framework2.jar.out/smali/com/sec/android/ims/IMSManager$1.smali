.class Lcom/sec/android/ims/IMSManager$1;
.super Ljava/lang/Object;
.source "IMSManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/ims/IMSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/ims/IMSManager;


# direct methods
.method constructor <init>(Lcom/sec/android/ims/IMSManager;)V
    .locals 0
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/sec/android/ims/IMSManager$1;->this$0:Lcom/sec/android/ims/IMSManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .parameter "name"
    .parameter "service"

    .prologue
    .line 270
    :try_start_0
    const-string v0, "onServiceConnected: IIMSService"

    #calls: Lcom/sec/android/ims/IMSManager;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/sec/android/ims/IMSManager;->access$700(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/ims/IMSManager$1;->this$0:Lcom/sec/android/ims/IMSManager;

    invoke-static {p2}, Lcom/sec/android/internal/ims/IIMSService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/internal/ims/IIMSService;

    move-result-object v1

    #setter for: Lcom/sec/android/ims/IMSManager;->mService:Lcom/sec/android/internal/ims/IIMSService;
    invoke-static {v0, v1}, Lcom/sec/android/ims/IMSManager;->access$102(Lcom/sec/android/ims/IMSManager;Lcom/sec/android/internal/ims/IIMSService;)Lcom/sec/android/internal/ims/IIMSService;

    .line 272
    iget-object v0, p0, Lcom/sec/android/ims/IMSManager$1;->this$0:Lcom/sec/android/ims/IMSManager;

    #getter for: Lcom/sec/android/ims/IMSManager;->listener:Lcom/sec/android/ims/IMSEventListener;
    invoke-static {v0}, Lcom/sec/android/ims/IMSManager;->access$500(Lcom/sec/android/ims/IMSManager;)Lcom/sec/android/ims/IMSEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/sec/android/ims/IMSManager$1;->this$0:Lcom/sec/android/ims/IMSManager;

    iget-object v0, v0, Lcom/sec/android/ims/IMSManager;->mHandler:Lcom/sec/android/ims/IMSManager$ManagerHandler;

    iget-object v1, p0, Lcom/sec/android/ims/IMSManager$1;->this$0:Lcom/sec/android/ims/IMSManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/ims/IMSManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/ims/IMSManager$ManagerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 275
    iget-object v0, p0, Lcom/sec/android/ims/IMSManager$1;->this$0:Lcom/sec/android/ims/IMSManager;

    #getter for: Lcom/sec/android/ims/IMSManager;->listener:Lcom/sec/android/ims/IMSEventListener;
    invoke-static {v0}, Lcom/sec/android/ims/IMSManager;->access$500(Lcom/sec/android/ims/IMSManager;)Lcom/sec/android/ims/IMSEventListener;

    move-result-object v0

    const/16 v1, 0x3e9

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/ims/IMSEventListener;->handleEvent(IIII[BLcom/sec/android/internal/ims/IIMSParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 278
    :catch_0
    move-exception v7

    .line 279
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sec/android/ims/IMSManager$1;->this$0:Lcom/sec/android/ims/IMSManager;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/ims/IMSManager;->mService:Lcom/sec/android/internal/ims/IIMSService;
    invoke-static {v0, v1}, Lcom/sec/android/ims/IMSManager;->access$102(Lcom/sec/android/ims/IMSManager;Lcom/sec/android/internal/ims/IIMSService;)Lcom/sec/android/internal/ims/IIMSService;

    .line 284
    return-void
.end method
