.class Landroid/net/wifi/WifiStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 3119
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 10
    .parameter "message"

    .prologue
    const/4 v9, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v3, 0x1

    .line 3122
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$300()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$DefaultState;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3123
    :cond_0
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 3290
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error! unhandled message"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3293
    :goto_0
    :sswitch_0
    return v3

    .line 3125
    :sswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1

    .line 3126
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v4, 0x11001

    invoke-virtual {v2, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    goto :goto_0

    .line 3128
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiP2pService connection failure, error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 3132
    :sswitch_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiP2pService channel lost, message.arg1 ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 3137
    :sswitch_3
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    #setter for: Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z
    invoke-static {v5, v2}, Landroid/net/wifi/WifiStateMachine;->access$1802(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    .line 3146
    :sswitch_4
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v4, p1, Landroid/os/Message;->what:I

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v4, v9}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto :goto_0

    .line 3149
    :sswitch_5
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v5, p1, Landroid/os/Message;->what:I

    check-cast v2, Ljava/util/List;

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    invoke-static {v4, p1, v5, v2}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_0

    .line 3152
    :sswitch_6
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_3

    move v4, v3

    :cond_3
    #setter for: Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$2102(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_0

    .line 3155
    :sswitch_7
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_4

    move v4, v3

    :cond_4
    #setter for: Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$2202(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto :goto_0

    .line 3158
    :sswitch_8
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v3, :cond_5

    move v4, v3

    :cond_5
    #setter for: Landroid/net/wifi/WifiStateMachine;->mHighPerfMode:Z
    invoke-static {v2, v4}, Landroid/net/wifi/WifiStateMachine;->access$2302(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_0

    .line 3212
    :sswitch_9
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$1000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 3219
    :sswitch_a
    const-string v2, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handling WAPI_EVENT, msg ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    const-string v1, "wapi_string"

    .line 3221
    .local v1, wapiEventName:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.supplicant.WAPI_EVENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3223
    .local v0, intent:Landroid/content/Intent;
    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3224
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3229
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #wapiEventName:Ljava/lang/String;
    :sswitch_b
    const-string v2, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handling WAPI_EVENT, msg ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    const-string v1, "wapi_string"

    .line 3231
    .restart local v1       #wapiEventName:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.supplicant.WAPI_EVENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3233
    .restart local v0       #intent:Landroid/content/Intent;
    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3234
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3238
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #wapiEventName:Ljava/lang/String;
    :sswitch_c
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, v5, Landroid/net/wifi/WifiStateMachine;->t_dialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_6

    .line 3239
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, v5, Landroid/net/wifi/WifiStateMachine;->t_dialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 3240
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iput-object v2, v5, Landroid/net/wifi/WifiStateMachine;->t_dialog:Landroid/app/AlertDialog;

    .line 3242
    :cond_6
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 3243
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    goto/16 :goto_0

    .line 3246
    :sswitch_d
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v4, 0x25002

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v4, v8}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3250
    :sswitch_e
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v4, 0x25005

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v4, v8}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3254
    :sswitch_f
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v4, 0x25008

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v4, v8}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3258
    :sswitch_10
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v4, 0x2500c

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v4, v8}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3262
    :sswitch_11
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v4, 0x2500f

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v4, v8}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3266
    :sswitch_12
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v4, 0x25012

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v2, p1, v4, v8}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3270
    :sswitch_13
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v4, 0x21019

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V
    invoke-static {v2, p1, v4}, Landroid/net/wifi/WifiStateMachine;->access$2400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 3280
    :sswitch_14
    const-string v2, "WifiStateMachine"

    const-string v4, "DefaultState::Handling CMD_SEC_API"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3281
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1, v4, v9}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 3285
    :sswitch_15
    const-string v4, "WifiStateMachine"

    const-string v5, "DefaultState::Handling CMD_SEC_STRING_API"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3286
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, p1, v5, v2}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 3123
    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x20001 -> :sswitch_0
        0x20002 -> :sswitch_0
        0x2000b -> :sswitch_0
        0x2000c -> :sswitch_0
        0x2000d -> :sswitch_0
        0x2000e -> :sswitch_0
        0x20011 -> :sswitch_0
        0x20012 -> :sswitch_0
        0x20013 -> :sswitch_0
        0x20015 -> :sswitch_0
        0x20016 -> :sswitch_0
        0x20017 -> :sswitch_0
        0x20018 -> :sswitch_0
        0x20019 -> :sswitch_0
        0x2001a -> :sswitch_0
        0x2001b -> :sswitch_0
        0x2001c -> :sswitch_0
        0x2001d -> :sswitch_0
        0x2001e -> :sswitch_0
        0x2001f -> :sswitch_3
        0x20033 -> :sswitch_4
        0x20034 -> :sswitch_4
        0x20035 -> :sswitch_4
        0x20036 -> :sswitch_4
        0x20037 -> :sswitch_0
        0x20038 -> :sswitch_0
        0x20039 -> :sswitch_0
        0x2003a -> :sswitch_4
        0x2003b -> :sswitch_5
        0x20047 -> :sswitch_0
        0x20048 -> :sswitch_0
        0x20049 -> :sswitch_0
        0x2004a -> :sswitch_0
        0x2004b -> :sswitch_0
        0x2004c -> :sswitch_0
        0x2004d -> :sswitch_8
        0x20050 -> :sswitch_0
        0x20052 -> :sswitch_6
        0x20053 -> :sswitch_0
        0x20056 -> :sswitch_9
        0x20057 -> :sswitch_0
        0x20058 -> :sswitch_0
        0x2005a -> :sswitch_0
        0x2005b -> :sswitch_7
        0x2007d -> :sswitch_0
        0x20097 -> :sswitch_0
        0x2012d -> :sswitch_14
        0x2012e -> :sswitch_15
        0x21015 -> :sswitch_0
        0x21016 -> :sswitch_0
        0x21017 -> :sswitch_13
        0x2300a -> :sswitch_0
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_0
        0x24003 -> :sswitch_0
        0x24004 -> :sswitch_0
        0x24005 -> :sswitch_0
        0x24006 -> :sswitch_0
        0x24007 -> :sswitch_0
        0x2400a -> :sswitch_0
        0x2400c -> :sswitch_c
        0x2400e -> :sswitch_0
        0x2400f -> :sswitch_a
        0x24010 -> :sswitch_b
        0x25001 -> :sswitch_d
        0x25004 -> :sswitch_e
        0x25007 -> :sswitch_f
        0x2500a -> :sswitch_10
        0x2500e -> :sswitch_11
        0x25011 -> :sswitch_12
        0x30004 -> :sswitch_0
        0x30005 -> :sswitch_0
    .end sparse-switch
.end method
