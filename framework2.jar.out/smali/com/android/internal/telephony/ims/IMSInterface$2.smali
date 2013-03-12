.class Lcom/android/internal/telephony/ims/IMSInterface$2;
.super Landroid/os/Handler;
.source "IMSInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/IMSInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ims/IMSInterface;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/IMSInterface;)V
    .locals 0
    .parameter

    .prologue
    .line 990
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSInterface$2;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 993
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/IMSInterface$2;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    .line 994
    .local v8, message:Landroid/os/Message;
    new-instance v7, Landroid/os/AsyncResult;

    invoke-direct {v7, v5, v5, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 995
    .local v7, ar:Landroid/os/AsyncResult;
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1015
    :goto_0
    return-void

    .line 997
    :sswitch_0
    const-string v0, "IMSPhone/IMSInterface"

    const-string v1, "  IMS_GET_CURRENT_CALLS"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-virtual {v8, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 999
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface$2;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSInterface;->ImsCallList:Ljava/util/List;

    iput-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1000
    iput-object v7, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1001
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface$2;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1004
    :sswitch_1
    const-string v0, "IMSPhone/IMSInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Call End Event Being Simulated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface$2;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;
    invoke-static {v0}, Lcom/android/internal/telephony/ims/IMSInterface;->access$700(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/ims/IMSEventListener;

    move-result-object v0

    const/16 v2, 0xcf

    iget v3, p1, Landroid/os/Message;->arg1:I

    move v4, v1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/ims/IMSEventListener;->handleEvent(IIII[BLcom/sec/android/internal/ims/IIMSParams;)V

    goto :goto_0

    .line 1008
    :sswitch_2
    const-string v0, "IMSPhone/IMSInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Call End Event Being Simulated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface$2;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v0}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface$2;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;
    invoke-static {v0}, Lcom/android/internal/telephony/ims/IMSInterface;->access$700(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/ims/IMSEventListener;

    move-result-object v0

    const/16 v2, 0xd4

    iget v3, p1, Landroid/os/Message;->arg1:I

    move v4, v1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/ims/IMSEventListener;->handleEvent(IIII[BLcom/sec/android/internal/ims/IIMSParams;)V

    goto :goto_0

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/IMSInterface$2;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsEventListener:Lcom/sec/android/ims/IMSEventListener;
    invoke-static {v0}, Lcom/android/internal/telephony/ims/IMSInterface;->access$700(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/ims/IMSEventListener;

    move-result-object v0

    const/16 v2, 0xde

    iget v3, p1, Landroid/os/Message;->arg1:I

    move v4, v1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/ims/IMSEventListener;->handleEvent(IIII[BLcom/sec/android/internal/ims/IIMSParams;)V

    goto/16 :goto_0

    .line 995
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
    .end sparse-switch
.end method
