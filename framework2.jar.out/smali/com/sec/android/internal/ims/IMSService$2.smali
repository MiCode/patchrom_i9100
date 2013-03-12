.class Lcom/sec/android/internal/ims/IMSService$2;
.super Landroid/telephony/PhoneStateListener;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/internal/ims/IMSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/internal/ims/IMSService;


# direct methods
.method constructor <init>(Lcom/sec/android/internal/ims/IMSService;)V
    .locals 0
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService$2;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 5
    .parameter "state"
    .parameter "networkType"

    .prologue
    const/4 v4, 0x1

    .line 406
    const-string v1, "IMS/IMSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataConnectionStateChanged : state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "networkType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$200()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$2;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #calls: Lcom/sec/android/internal/ims/IMSService;->hasService()Z
    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->access$300(Lcom/sec/android/internal/ims/IMSService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 412
    const-string v1, "IMS/IMSService"

    const-string v2, "onDataConnectionStateChanged : No Service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-static {}, Lcom/sec/android/internal/ims/IMSService;->access$100()Z

    move-result v1

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$2;->this$0:Lcom/sec/android/internal/ims/IMSService;

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 415
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$2;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->access$400(Lcom/sec/android/internal/ims/IMSService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 416
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService$2;->this$0:Lcom/sec/android/internal/ims/IMSService;

    #getter for: Lcom/sec/android/internal/ims/IMSService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->access$400(Lcom/sec/android/internal/ims/IMSService;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 441
    .end local v0           #message:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 397
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged :  state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService$2;->this$0:Lcom/sec/android/internal/ims/IMSService;

    iput-object p1, v0, Lcom/sec/android/internal/ims/IMSService;->mServiceState:Landroid/telephony/ServiceState;

    .line 400
    return-void
.end method
