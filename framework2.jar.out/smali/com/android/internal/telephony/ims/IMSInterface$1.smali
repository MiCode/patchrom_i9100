.class Lcom/android/internal/telephony/ims/IMSInterface$1;
.super Lcom/sec/android/ims/IMSEventListener;
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
    .line 133
    iput-object p1, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    invoke-direct {p0}, Lcom/sec/android/ims/IMSEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public handleEvent(IIII[BLcom/sec/android/internal/ims/IIMSParams;)V
    .locals 9
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "mData"
    .parameter "params"

    .prologue
    .line 137
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 138
    .local v3, msg:Landroid/os/Message;
    const/4 v0, 0x0

    .line 139
    .local v0, data:Ljava/lang/String;
    iput p2, v3, Landroid/os/Message;->what:I

    .line 140
    const-string v5, "IMSPhone/IMSInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  IMSPhone Event callback, eventType: ankit"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v5, "IMSPhone/IMSInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "appType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v5, "IMSPhone/IMSInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "arg1: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v5, "IMSPhone/IMSInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "arg2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    if-eqz p5, :cond_0

    .line 147
    new-instance v0, Ljava/lang/String;

    .end local v0           #data:Ljava/lang/String;
    invoke-direct {v0, p5}, Ljava/lang/String;-><init>([B)V

    .line 150
    .restart local v0       #data:Ljava/lang/String;
    :cond_0
    const-string v5, "eng"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 151
    const-string v5, "IMSPhone/IMSInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "obj: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_1
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 155
    .local v2, message:Landroid/os/Message;
    sparse-switch p2, :sswitch_data_0

    .line 301
    const-string v5, "IMSPhone/IMSInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mImsEventListener: Received Event:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_2
    :goto_0
    return-void

    .line 158
    :sswitch_0
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v5}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/IMSService;->stopHiPriNetwork()I

    .line 159
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v5}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    goto :goto_0

    .line 163
    :sswitch_1
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v5}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/IMSService;->addVTNotification()V

    goto :goto_0

    .line 170
    :sswitch_2
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v5}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    goto :goto_0

    .line 174
    :sswitch_3
    const-string v5, "IMSPhone/IMSInterface"

    const-string v6, "IMS_NOT_SUBSCRIBED "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v5}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v5

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/sec/android/internal/ims/IMSService;->isImsForbidden:Z

    .line 176
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v5}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    goto :goto_0

    .line 180
    :sswitch_4
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->callid:I
    invoke-static {v6}, Lcom/android/internal/telephony/ims/IMSInterface;->access$100(Lcom/android/internal/telephony/ims/IMSInterface;)I

    move-result v6

    #calls: Lcom/android/internal/telephony/ims/IMSInterface;->updateCallsList(II)Z
    invoke-static {v5, p2, v6}, Lcom/android/internal/telephony/ims/IMSInterface;->access$200(Lcom/android/internal/telephony/ims/IMSInterface;II)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 183
    const/4 v5, 0x4

    iput v5, v2, Landroid/os/Message;->what:I

    .line 184
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v5, v5, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 188
    :sswitch_5
    const-string v5, "IMSPhone/IMSInterface"

    const-string v6, "Starting DIALING timer"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v5, v5, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 190
    const-string v5, "IMSPhone/IMSInterface"

    const-string v6, "DIALING timer  removed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v5, v5, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 193
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v5, v5, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    const-wide/32 v7, 0xea60

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 198
    :sswitch_6
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v5, v5, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 199
    const-string v5, "IMSPhone/IMSInterface"

    const-string v6, "DIALING timer  removed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v5, v5, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    :cond_4
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 203
    .local v4, nmsg:Landroid/os/Message;
    invoke-static {}, Lcom/android/internal/telephony/ims/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v5, p2, p3, p4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 204
    const-string v5, "IMSPhone/IMSInterface"

    const-string v6, "inside case IMS_CALL_ESTABLISHED.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {}, Lcom/android/internal/telephony/ims/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 206
    invoke-static {}, Lcom/android/internal/telephony/ims/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 212
    .end local v4           #nmsg:Landroid/os/Message;
    :goto_1
    :sswitch_7
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->callid:I
    invoke-static {v6}, Lcom/android/internal/telephony/ims/IMSInterface;->access$100(Lcom/android/internal/telephony/ims/IMSInterface;)I

    move-result v6

    #calls: Lcom/android/internal/telephony/ims/IMSInterface;->updateCallsList(II)Z
    invoke-static {v5, p2, v6}, Lcom/android/internal/telephony/ims/IMSInterface;->access$200(Lcom/android/internal/telephony/ims/IMSInterface;II)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 214
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/ims/IMSInterface;->notifyIMSCallChanged(Landroid/os/Message;)V

    .line 215
    const/4 v5, 0x4

    iput v5, v2, Landroid/os/Message;->what:I

    .line 216
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v5, v5, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 218
    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v5, v5, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 219
    const-string v5, "IMSPhone/IMSInterface"

    const-string v6, "DIALING timer  removed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v5, v5, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 208
    .restart local v4       #nmsg:Landroid/os/Message;
    :cond_6
    const-string v5, "IMSPhone/IMSInterface"

    const-string v6, "mVTHandler is null rapid home key press check"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 254
    .end local v4           #nmsg:Landroid/os/Message;
    :sswitch_8
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #setter for: Lcom/android/internal/telephony/ims/IMSInterface;->callid:I
    invoke-static {v5, p3}, Lcom/android/internal/telephony/ims/IMSInterface;->access$102(Lcom/android/internal/telephony/ims/IMSInterface;I)I

    .line 255
    const-string v5, "IMSPhone/IMSInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " deleteFromCallsList    callID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->callid:I
    invoke-static {v7}, Lcom/android/internal/telephony/ims/IMSInterface;->access$100(Lcom/android/internal/telephony/ims/IMSInterface;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->callid:I
    invoke-static {v6}, Lcom/android/internal/telephony/ims/IMSInterface;->access$100(Lcom/android/internal/telephony/ims/IMSInterface;)I

    move-result v6

    #calls: Lcom/android/internal/telephony/ims/IMSInterface;->deleteFromCallsList(I)Z
    invoke-static {v5, v6}, Lcom/android/internal/telephony/ims/IMSInterface;->access$400(Lcom/android/internal/telephony/ims/IMSInterface;I)Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 259
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/ims/IMSInterface;->notifyIMSCallChanged(Landroid/os/Message;)V

    .line 260
    const/4 v5, 0x4

    iput v5, v2, Landroid/os/Message;->what:I

    .line 261
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v5, v5, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 263
    :cond_7
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v6}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v6

    iget-boolean v6, v6, Lcom/sec/android/internal/ims/IMSService;->isWifiEnabled:Z

    if-ne v5, v6, :cond_8

    .line 265
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v5, v5, Lcom/android/internal/telephony/ims/IMSInterface;->mContext:Landroid/content/Context;

    const-string v6, "wifi"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 266
    .local v1, mWifiManager:Landroid/net/wifi/WifiManager;
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v5}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v5

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sec/android/internal/ims/IMSService;->isWifiEnabled:Z

    .line 267
    const-string v5, "IMSPhone/IMSInterface"

    const-string v6, "WIFI is enabled before making/incoming VT. So enable it now"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 271
    .end local v1           #mWifiManager:Landroid/net/wifi/WifiManager;
    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v5, v5, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 272
    const-string v5, "IMSPhone/IMSInterface"

    const-string v6, "DIALING timer  removed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    iget-object v5, v5, Lcom/android/internal/telephony/ims/IMSInterface;->mIMSCTHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_0

    .line 278
    :sswitch_9
    const-string v5, "IMSPhone/IMSInterface"

    const-string v6, "New Incoming Call "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->mImsManager:Lcom/sec/android/internal/ims/IMSService;
    invoke-static {v5}, Lcom/android/internal/telephony/ims/IMSInterface;->access$000(Lcom/android/internal/telephony/ims/IMSInterface;)Lcom/sec/android/internal/ims/IMSService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/IMSService;->DisableWifi()V

    .line 280
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x4

    const/4 v8, 0x1

    #calls: Lcom/android/internal/telephony/ims/IMSInterface;->addToCallsList(Ljava/lang/String;IZI)V
    invoke-static {v5, v6, v7, v8, p3}, Lcom/android/internal/telephony/ims/IMSInterface;->access$500(Lcom/android/internal/telephony/ims/IMSInterface;Ljava/lang/String;IZI)V

    .line 281
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #setter for: Lcom/android/internal/telephony/ims/IMSInterface;->callid:I
    invoke-static {v5, p3}, Lcom/android/internal/telephony/ims/IMSInterface;->access$102(Lcom/android/internal/telephony/ims/IMSInterface;I)I

    .line 282
    iget-object v6, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    const/4 v5, 0x1

    if-ne p4, v5, :cond_9

    const/4 v5, 0x1

    :goto_2
    #setter for: Lcom/android/internal/telephony/ims/IMSInterface;->isVideoCall:Z
    invoke-static {v6, v5}, Lcom/android/internal/telephony/ims/IMSInterface;->access$602(Lcom/android/internal/telephony/ims/IMSInterface;Z)Z

    .line 283
    const-string v5, "IMSPhone/IMSInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callid set: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    #getter for: Lcom/android/internal/telephony/ims/IMSInterface;->callid:I
    invoke-static {v7}, Lcom/android/internal/telephony/ims/IMSInterface;->access$100(Lcom/android/internal/telephony/ims/IMSInterface;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v5, p0, Lcom/android/internal/telephony/ims/IMSInterface$1;->this$0:Lcom/android/internal/telephony/ims/IMSInterface;

    invoke-virtual {v5, v3}, Lcom/android/internal/telephony/ims/IMSInterface;->notifyIMSCallChanged(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 282
    :cond_9
    const/4 v5, 0x0

    goto :goto_2

    .line 295
    :sswitch_a
    invoke-static {}, Lcom/android/internal/telephony/ims/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v5

    invoke-static {v5, p2, p3, p4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 296
    invoke-static {}, Lcom/android/internal/telephony/ims/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 297
    invoke-static {}, Lcom/android/internal/telephony/ims/IMSInterface;->access$300()Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x19

    invoke-virtual {v5, v3, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 155
    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_1
        0x68 -> :sswitch_2
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x6d -> :sswitch_2
        0x6e -> :sswitch_2
        0x70 -> :sswitch_2
        0x71 -> :sswitch_3
        0xca -> :sswitch_9
        0xcb -> :sswitch_4
        0xcc -> :sswitch_5
        0xcd -> :sswitch_7
        0xcf -> :sswitch_8
        0xd0 -> :sswitch_6
        0xd1 -> :sswitch_8
        0xd2 -> :sswitch_8
        0xd4 -> :sswitch_8
        0xd5 -> :sswitch_8
        0xd6 -> :sswitch_8
        0xd7 -> :sswitch_8
        0xd8 -> :sswitch_8
        0xd9 -> :sswitch_8
        0xda -> :sswitch_8
        0xdb -> :sswitch_8
        0xde -> :sswitch_8
        0xe1 -> :sswitch_8
        0xe4 -> :sswitch_8
        0xe5 -> :sswitch_8
        0xe6 -> :sswitch_8
        0xe7 -> :sswitch_8
        0xea -> :sswitch_8
        0xeb -> :sswitch_8
        0xed -> :sswitch_8
        0xee -> :sswitch_8
        0x12a -> :sswitch_a
        0x12b -> :sswitch_a
        0x12c -> :sswitch_a
        0x12d -> :sswitch_a
        0x12e -> :sswitch_a
        0x12f -> :sswitch_8
        0x130 -> :sswitch_8
        0x131 -> :sswitch_8
        0x132 -> :sswitch_8
        0x133 -> :sswitch_8
        0x134 -> :sswitch_8
        0x135 -> :sswitch_8
        0x136 -> :sswitch_8
        0x137 -> :sswitch_8
        0x138 -> :sswitch_a
        0x139 -> :sswitch_a
    .end sparse-switch
.end method

.method public notifyEvent(IIII[I[Ljava/lang/String;)V
    .locals 2
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "participantList"
    .parameter "uriList"

    .prologue
    .line 316
    const-string v0, "IIMSEventListener"

    const-string v1, "Inside notifyEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    return-void
.end method
