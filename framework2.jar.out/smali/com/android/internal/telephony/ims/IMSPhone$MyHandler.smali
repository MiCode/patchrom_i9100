.class Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;
.super Landroid/os/Handler;
.source "IMSPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/IMSPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ims/IMSPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/IMSPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/ims/IMSPhone;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1026
    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/ims/IMSPhone;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "l"

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/ims/IMSPhone;

    .line 1029
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1030
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 1037
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1112
    :pswitch_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "unexpected event not handled"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1039
    :pswitch_1
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/ims/IMSPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 1041
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/ims/IMSPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/ims/IMSPhone;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x15

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    .line 1115
    :cond_0
    :goto_0
    return-void

    .line 1046
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1048
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1052
    const-string v3, "IMSPHONE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Baseband version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/ims/IMSPhone;

    const-string v5, "gsm.version.baseband"

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/internal/telephony/ims/IMSPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1060
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1062
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1065
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object v2, v3

    check-cast v2, [Ljava/lang/String;

    .line 1066
    .local v2, respId:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    .line 1067
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/ims/IMSPhone;

    const/4 v4, 0x2

    aget-object v4, v2, v4

    #setter for: Lcom/android/internal/telephony/ims/IMSPhone;->mEsn:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/ims/IMSPhone;->access$002(Lcom/android/internal/telephony/ims/IMSPhone;Ljava/lang/String;)Ljava/lang/String;

    .line 1068
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/ims/IMSPhone;

    const/4 v4, 0x3

    aget-object v4, v2, v4

    #setter for: Lcom/android/internal/telephony/ims/IMSPhone;->mMeid:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/internal/telephony/ims/IMSPhone;->access$102(Lcom/android/internal/telephony/ims/IMSPhone;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1073
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #respId:[Ljava/lang/String;
    :pswitch_4
    const-string v3, "IMSPHONE"

    const-string v4, "Event EVENT_RADIO_OFF_OR_NOT_AVAILABLE Received"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1078
    :pswitch_5
    const-string v3, "IMSPHONE"

    const-string v4, "Event EVENT_RADIO_ON Received"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1083
    :pswitch_6
    const-string v3, "IMSPHONE"

    const-string v4, "Event EVENT_SSN Received"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1088
    :pswitch_7
    const-string v3, "IMSPHONE"

    const-string v4, "Event EVENT_CALL_RING Received"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1093
    :pswitch_8
    const-string v3, "IMSPHONE"

    const-string v4, "Event EVENT_REGISTERED_TO_NETWORK Received"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1098
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1099
    .restart local v0       #ar:Landroid/os/AsyncResult;
    const-class v3, Lcom/android/internal/telephony/IccException;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1100
    iget-object v3, p0, Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/ims/IMSPhone;

    iget-object v4, p0, Lcom/android/internal/telephony/ims/IMSPhone$MyHandler;->this$0:Lcom/android/internal/telephony/ims/IMSPhone;

    #getter for: Lcom/android/internal/telephony/ims/IMSPhone;->mVmNumber:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/ims/IMSPhone;->access$200(Lcom/android/internal/telephony/ims/IMSPhone;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/ims/IMSPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 1101
    const/4 v3, 0x0

    iput-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1103
    :cond_1
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Message;

    .line 1104
    .local v1, onComplete:Landroid/os/Message;
    if-eqz v1, :cond_0

    .line 1105
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1106
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1037
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_3
    .end packed-switch
.end method
