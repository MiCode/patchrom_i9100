.class Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WfdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wfd/WfdService$WfdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;


# direct methods
.method constructor <init>(Lcom/samsung/wfd/WfdService$WfdStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 1276
    iput-object p1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "message"

    .prologue
    const/4 v7, 0x0

    const v6, 0x22066

    const v5, 0x22069

    const/4 v4, 0x2

    .line 1279
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v1, v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1280
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1351
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v1, v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdService;->loge(Ljava/lang/String;)V

    .line 1352
    const/4 v1, 0x0

    .line 1354
    :goto_0
    return v1

    .line 1282
    :sswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_0

    .line 1283
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v1, v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v2, "Full connection with WifiStateMachine established"

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdService;->logd(Ljava/lang/String;)V

    .line 1284
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v2, v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/AsyncChannel;

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2, v1}, Lcom/samsung/wfd/WfdService;->access$3702(Lcom/samsung/wfd/WfdService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 1354
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 1286
    :cond_0
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v1, v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Full connection failure, error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdService;->loge(Ljava/lang/String;)V

    .line 1287
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v1, v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1, v7}, Lcom/samsung/wfd/WfdService;->access$3702(Lcom/samsung/wfd/WfdService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_1

    .line 1292
    :sswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_1

    .line 1293
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v1, v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    const-string v2, "Send failed, client connection lost"

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdService;->loge(Ljava/lang/String;)V

    .line 1297
    :goto_2
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v1, v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #setter for: Lcom/samsung/wfd/WfdService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v1, v7}, Lcom/samsung/wfd/WfdService;->access$3702(Lcom/samsung/wfd/WfdService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_1

    .line 1295
    :cond_1
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v1, v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Client connection lost with reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/wfd/WfdService;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 1301
    :sswitch_2
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 1302
    .local v0, ac:Lcom/android/internal/util/AsyncChannel;
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    iget-object v1, v1, Lcom/samsung/wfd/WfdService$WfdStateMachine;->this$0:Lcom/samsung/wfd/WfdService;

    #getter for: Lcom/samsung/wfd/WfdService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/wfd/WfdService;->access$3800(Lcom/samsung/wfd/WfdService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_1

    .line 1306
    .end local v0           #ac:Lcom/android/internal/util/AsyncChannel;
    :sswitch_3
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v6, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3900(Lcom/samsung/wfd/WfdService$WfdStateMachine;Landroid/os/Message;II)V

    goto :goto_1

    .line 1311
    :sswitch_4
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v6, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3900(Lcom/samsung/wfd/WfdService$WfdStateMachine;Landroid/os/Message;II)V

    goto :goto_1

    .line 1316
    :sswitch_5
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v6, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3900(Lcom/samsung/wfd/WfdService$WfdStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1321
    :sswitch_6
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v5, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3900(Lcom/samsung/wfd/WfdService$WfdStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1326
    :sswitch_7
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v5, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3900(Lcom/samsung/wfd/WfdService$WfdStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1331
    :sswitch_8
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v5, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3900(Lcom/samsung/wfd/WfdService$WfdStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1336
    :sswitch_9
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v5, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3900(Lcom/samsung/wfd/WfdService$WfdStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1341
    :sswitch_a
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v5, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3900(Lcom/samsung/wfd/WfdService$WfdStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1346
    :sswitch_b
    iget-object v1, p0, Lcom/samsung/wfd/WfdService$WfdStateMachine$DefaultState;->this$1:Lcom/samsung/wfd/WfdService$WfdStateMachine;

    #calls: Lcom/samsung/wfd/WfdService$WfdStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v1, p1, v5, v4}, Lcom/samsung/wfd/WfdService$WfdStateMachine;->access$3900(Lcom/samsung/wfd/WfdService$WfdStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    .line 1280
    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11001 -> :sswitch_2
        0x11004 -> :sswitch_1
        0x22065 -> :sswitch_3
        0x22068 -> :sswitch_6
        0x2206b -> :sswitch_7
        0x2206c -> :sswitch_8
        0x2206d -> :sswitch_9
        0x2206e -> :sswitch_a
        0x2206f -> :sswitch_4
        0x2207a -> :sswitch_5
        0x22080 -> :sswitch_b
    .end sparse-switch
.end method
