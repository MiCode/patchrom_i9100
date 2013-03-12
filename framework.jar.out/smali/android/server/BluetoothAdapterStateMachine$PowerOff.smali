.class Landroid/server/BluetoothAdapterStateMachine$PowerOff;
.super Lcom/android/internal/util/State;
.source "BluetoothAdapterStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothAdapterStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PowerOff"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothAdapterStateMachine;


# direct methods
.method private constructor <init>(Landroid/server/BluetoothAdapterStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 189
    iput-object p1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/server/BluetoothAdapterStateMachine;Landroid/server/BluetoothAdapterStateMachine$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 189
    invoke-direct {p0, p1}, Landroid/server/BluetoothAdapterStateMachine$PowerOff;-><init>(Landroid/server/BluetoothAdapterStateMachine;)V

    return-void
.end method

.method private prepareBluetooth()Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    .line 273
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v7

    invoke-virtual {v7}, Landroid/server/BluetoothService;->enableNative()I

    move-result v7

    if-eqz v7, :cond_0

    .line 312
    :goto_0
    return v6

    .line 278
    :cond_0
    const/4 v4, 0x2

    .line 279
    .local v4, retryCount:I
    const/4 v1, 0x0

    .local v1, eventLoopStarted:Z
    move v5, v4

    .line 280
    .end local v4           #retryCount:I
    .local v5, retryCount:I
    :goto_1
    add-int/lit8 v4, v5, -0x1

    .end local v5           #retryCount:I
    .restart local v4       #retryCount:I
    if-lez v5, :cond_3

    if-nez v1, :cond_3

    .line 281
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mEventLoop:Landroid/server/BluetoothEventLoop;
    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothEventLoop;

    move-result-object v7

    invoke-virtual {v7}, Landroid/server/BluetoothEventLoop;->start()V

    .line 284
    const/4 v2, 0x5

    .local v2, pollCount:I
    move v3, v2

    .line 285
    .end local v2           #pollCount:I
    .local v3, pollCount:I
    :goto_2
    add-int/lit8 v2, v3, -0x1

    .end local v3           #pollCount:I
    .restart local v2       #pollCount:I
    if-lez v3, :cond_1

    if-nez v1, :cond_1

    .line 286
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mEventLoop:Landroid/server/BluetoothEventLoop;
    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothEventLoop;

    move-result-object v7

    invoke-virtual {v7}, Landroid/server/BluetoothEventLoop;->isEventLoopRunning()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 287
    const/4 v1, 0x1

    :cond_1
    :goto_3
    move v5, v4

    .line 297
    .end local v4           #retryCount:I
    .restart local v5       #retryCount:I
    goto :goto_1

    .line 291
    .end local v5           #retryCount:I
    .restart local v4       #retryCount:I
    :cond_2
    const-wide/16 v7, 0x64

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 295
    .end local v2           #pollCount:I
    .restart local v3       #pollCount:I
    goto :goto_2

    .line 292
    .end local v3           #pollCount:I
    .restart local v2       #pollCount:I
    :catch_0
    move-exception v0

    .line 293
    .local v0, e:Ljava/lang/InterruptedException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "prepareBluetooth sleep interrupted: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Ljava/lang/String;)V

    goto :goto_3

    .line 299
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v2           #pollCount:I
    :cond_3
    if-nez v1, :cond_4

    .line 300
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v7

    invoke-virtual {v7}, Landroid/server/BluetoothService;->disableNative()I

    goto :goto_0

    .line 305
    :cond_4
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v7

    invoke-virtual {v7}, Landroid/server/BluetoothService;->prepareBluetooth()Z

    move-result v7

    if-nez v7, :cond_5

    .line 306
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mEventLoop:Landroid/server/BluetoothEventLoop;
    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothEventLoop;

    move-result-object v7

    invoke-virtual {v7}, Landroid/server/BluetoothEventLoop;->stop()V

    .line 307
    iget-object v7, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v7}, Landroid/server/BluetoothAdapterStateMachine;->access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;

    move-result-object v7

    invoke-virtual {v7}, Landroid/server/BluetoothService;->disableNative()I

    goto :goto_0

    .line 311
    :cond_5
    iget-object v6, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/16 v7, 0x68

    const-wide/16 v8, 0x2710

    invoke-virtual {v6, v7, v8, v9}, Landroid/server/BluetoothAdapterStateMachine;->sendMessageDelayed(IJ)V

    .line 312
    const/4 v6, 0x1

    goto :goto_0
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter PowerOff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$600(Landroid/server/BluetoothAdapterStateMachine;)Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "message"

    .prologue
    const/16 v7, 0x65

    const/16 v6, 0xb

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PowerOff process message: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$700(Ljava/lang/String;)V

    .line 198
    const/4 v0, 0x1

    .line 199
    .local v0, retValue:Z
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    move v0, v2

    .line 262
    .end local v0           #retValue:Z
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 202
    .restart local v0       #retValue:Z
    :sswitch_1
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V
    invoke-static {v1, v6}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 203
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mWarmUp:Landroid/server/BluetoothAdapterStateMachine$WarmUp;
    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$900(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$WarmUp;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1000(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 204
    invoke-direct {p0}, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->prepareBluetooth()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 206
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->persistSwitchSetting(Z)V
    invoke-static {v1, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$1100(Landroid/server/BluetoothAdapterStateMachine;Z)V

    .line 210
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v7}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1200(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 212
    :cond_2
    const-string v1, "BluetoothAdapterStateMachine"

    const-string v2, "failed to prepare bluetooth, abort turning on"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mPowerOff:Landroid/server/BluetoothAdapterStateMachine$PowerOff;
    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1300(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$PowerOff;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1400(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 214
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V
    invoke-static {v1, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;I)V

    goto :goto_0

    .line 218
    :sswitch_2
    invoke-direct {p0}, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->prepareBluetooth()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mWarmUp:Landroid/server/BluetoothAdapterStateMachine$WarmUp;
    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$900(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$WarmUp;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1500(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 223
    :sswitch_3
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->getBluetoothPersistedSetting()Z
    invoke-static {v1}, Landroid/server/BluetoothAdapterStateMachine;->access$1600(Landroid/server/BluetoothAdapterStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->persistSwitchSetting(Z)V
    invoke-static {v1, v4}, Landroid/server/BluetoothAdapterStateMachine;->access$1100(Landroid/server/BluetoothAdapterStateMachine;Z)V

    .line 226
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V
    invoke-static {v1, v6}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;I)V

    .line 227
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mWarmUp:Landroid/server/BluetoothAdapterStateMachine$WarmUp;
    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$900(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$WarmUp;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1700(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 228
    invoke-direct {p0}, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->prepareBluetooth()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 230
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    invoke-virtual {v2, v7}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1800(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    .line 231
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mWarmUp:Landroid/server/BluetoothAdapterStateMachine$WarmUp;
    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$900(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$WarmUp;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1900(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 233
    :cond_3
    const-string v1, "BluetoothAdapterStateMachine"

    const-string v2, "failed to prepare bluetooth, abort turning on"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mPowerOff:Landroid/server/BluetoothAdapterStateMachine$PowerOff;
    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$1300(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$PowerOff;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$2000(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 235
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V
    invoke-static {v1, v5}, Landroid/server/BluetoothAdapterStateMachine;->access$800(Landroid/server/BluetoothAdapterStateMachine;I)V

    goto/16 :goto_0

    .line 247
    :sswitch_4
    invoke-direct {p0}, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->prepareBluetooth()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 248
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    #getter for: Landroid/server/BluetoothAdapterStateMachine;->mWarmUp:Landroid/server/BluetoothAdapterStateMachine$WarmUp;
    invoke-static {v2}, Landroid/server/BluetoothAdapterStateMachine;->access$900(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$WarmUp;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$2100(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V

    .line 250
    :cond_4
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/server/BluetoothAdapterStateMachine;->access$2200(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 253
    :sswitch_5
    iget-object v3, p0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;->this$0:Landroid/server/BluetoothAdapterStateMachine;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothStateChangeCallback;

    #calls: Landroid/server/BluetoothAdapterStateMachine;->perProcessCallback(ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V
    invoke-static {v3, v2, v1}, Landroid/server/BluetoothAdapterStateMachine;->access$2300(Landroid/server/BluetoothAdapterStateMachine;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    goto/16 :goto_0

    .line 256
    :sswitch_6
    const-string v1, "BluetoothAdapterStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PowerOff received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 199
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_6
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_2
        0x37 -> :sswitch_0
        0x38 -> :sswitch_3
    .end sparse-switch
.end method
