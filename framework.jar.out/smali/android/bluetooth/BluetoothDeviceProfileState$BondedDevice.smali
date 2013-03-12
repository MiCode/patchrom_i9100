.class Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;
.super Lcom/android/internal/util/State;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BondedDevice"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .locals 0
    .parameter

    .prologue
    .line 363
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 363
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 366
    const-string v1, "BluetoothDeviceProfileState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entering ACL Connected state with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2200(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v3

    iget v3, v3, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 368
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 369
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    .line 370
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .parameter "message"

    .prologue
    const/4 v0, 0x0

    const/16 v7, 0x3e8

    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 373
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACL Connected State -> Processing Message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2500(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    .line 374
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 511
    :goto_0
    return v0

    .line 377
    :sswitch_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2700(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    :cond_0
    :goto_1
    :sswitch_1
    move v0, v1

    .line 511
    goto :goto_0

    .line 380
    :sswitch_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2900(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 383
    :sswitch_3
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3000(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 387
    :sswitch_4
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3100(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3200(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 391
    :sswitch_5
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3400(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 395
    :sswitch_6
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingHid:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3500(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3600(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 399
    :sswitch_7
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHid:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3800(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 402
    :sswitch_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingSap:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingSap;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4000(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 405
    :sswitch_9
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v2, 0x38

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    goto :goto_1

    .line 408
    :sswitch_a
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v2, 0x39

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    goto :goto_1

    .line 411
    :sswitch_b
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    goto :goto_1

    .line 414
    :sswitch_c
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetState:I
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1100(Landroid/bluetooth/BluetoothDeviceProfileState;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v2, 0x32

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 416
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4100(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 418
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpState:I
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1000(Landroid/bluetooth/BluetoothDeviceProfileState;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v2, 0x34

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 420
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4200(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 422
    :cond_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothService;

    move-result-object v0

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/server/BluetoothService;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 424
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v2, 0x36

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 425
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 428
    :cond_3
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    goto/16 :goto_1

    .line 431
    :sswitch_d
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4500(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1400(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    if-nez v0, :cond_6

    .line 436
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mAutoConnectionPending:Z
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1502(Landroid/bluetooth/BluetoothDeviceProfileState;Z)Z

    .line 445
    :cond_4
    :goto_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;

    move-result-object v0

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v7, :cond_5

    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;

    move-result-object v0

    new-array v2, v6, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2}, Landroid/server/BluetoothA2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 452
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;

    move-result-object v0

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/server/BluetoothA2dpService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 454
    :cond_5
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothService;

    move-result-object v0

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/server/BluetoothService;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 456
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothService;

    move-result-object v0

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/server/BluetoothService;->connectInputDevice(Landroid/bluetooth/BluetoothDevice;)Z

    goto/16 :goto_1

    .line 437
    :cond_6
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1400(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1400(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    new-array v2, v6, [I

    fill-array-data v2, :array_1

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 443
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1400(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto/16 :goto_2

    .line 461
    :sswitch_e
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->isPhoneDocked(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4500(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v6, :cond_7

    .line 465
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;

    move-result-object v0

    invoke-virtual {v0}, Landroid/server/BluetoothA2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 467
    const-string v0, "BluetoothDeviceProfileState"

    const-string v2, "A2dp:Connect Other Profiles"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mA2dpService:Landroid/server/BluetoothA2dpService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothA2dpService;

    move-result-object v0

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/server/BluetoothA2dpService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto/16 :goto_1

    .line 470
    :cond_7
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_0

    .line 471
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1400(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    if-nez v0, :cond_8

    .line 472
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4700(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 474
    :cond_8
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1400(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 475
    const-string v0, "BluetoothDeviceProfileState"

    const-string v2, "Headset:Connect Other Profiles"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1400(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto/16 :goto_1

    .line 485
    :sswitch_f
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 486
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4802(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 487
    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mHeadsetService:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1400(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 488
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-static {v1, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5002(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothProfile$ServiceListener;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 489
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;
    invoke-static {v1, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2602(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;)Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;

    .line 490
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mPbap:Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;
    invoke-static {v1, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5102(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;)Landroid/bluetooth/BluetoothDeviceProfileState$PbapServiceListener;

    .line 491
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mPbapService:Landroid/bluetooth/BluetoothPbap;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothPbap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPbap;->close()V

    .line 492
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mPbapService:Landroid/bluetooth/BluetoothPbap;
    invoke-static {v1, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1702(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap;

    .line 493
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mMap:Landroid/bluetooth/BluetoothDeviceProfileState$MapServiceListener;
    invoke-static {v1, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5202(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$MapServiceListener;)Landroid/bluetooth/BluetoothDeviceProfileState$MapServiceListener;

    .line 494
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mMapService:Landroid/bluetooth/BluetoothMap;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2000(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothMap;->close()V

    .line 495
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mMapService:Landroid/bluetooth/BluetoothMap;
    invoke-static {v1, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2002(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothMap;

    .line 496
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4900(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/16 v2, 0x8

    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mSapService:Landroid/bluetooth/BluetoothSap;
    invoke-static {v3}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$1600(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothSap;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 497
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHid:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;
    invoke-static {v1, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3702(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;

    .line 498
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingHid:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;
    invoke-static {v1, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3502(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;)Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;

    .line 499
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;
    invoke-static {v1, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2802(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;

    .line 500
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;
    invoke-static {v1, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2602(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;)Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;

    .line 501
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;
    invoke-static {v1, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3302(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;

    .line 502
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mOutgoingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;
    invoke-static {v1, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3102(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;)Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingA2dp;

    .line 503
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #setter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;
    invoke-static {v1, v5}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5302(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;)Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    goto/16 :goto_0

    .line 374
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_f
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x32 -> :sswitch_0
        0x33 -> :sswitch_3
        0x34 -> :sswitch_4
        0x35 -> :sswitch_5
        0x36 -> :sswitch_6
        0x37 -> :sswitch_7
        0x38 -> :sswitch_9
        0x39 -> :sswitch_a
        0x3a -> :sswitch_b
        0x64 -> :sswitch_c
        0x65 -> :sswitch_d
        0x66 -> :sswitch_1
        0x67 -> :sswitch_e
    .end sparse-switch

    .line 445
    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 437
    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method
