.class Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;
.super Lcom/android/internal/util/State;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutgoingHandsfree"
.end annotation


# instance fields
.field private mCommand:I

.field private mStatus:Z

.field final synthetic this$0:Landroid/bluetooth/BluetoothDeviceProfileState;


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V
    .locals 1
    .parameter

    .prologue
    .line 515
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mStatus:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 515
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 521
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering OutgoingHandsfree state with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5400(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5500(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v0

    iget v0, v0, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    .line 523
    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    const/16 v1, 0x32

    if-eq v0, v1, :cond_0

    .line 525
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: OutgoingHandsfree state with command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mStatus:Z

    .line 528
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mStatus:Z

    if-nez v0, :cond_1

    .line 529
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 530
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mService:Landroid/server/BluetoothService;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$4300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/server/BluetoothService;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/server/BluetoothService;->sendProfileStateMessage(II)V

    .line 533
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v2, 0x1

    .line 537
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutgoingHandsfree State -> Processing Message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2500(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    .line 538
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 539
    .local v1, deferMsg:Landroid/os/Message;
    iget v0, p1, Landroid/os/Message;->what:I

    .line 540
    .local v0, command:I
    sparse-switch v0, :sswitch_data_0

    .line 624
    const/4 v2, 0x0

    .line 626
    :cond_0
    :goto_0
    return v2

    .line 542
    :sswitch_0
    iget v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    if-eq v0, v3, :cond_0

    .line 544
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5600(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_0

    .line 548
    :sswitch_1
    iget v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    if-ne v3, v2, :cond_1

    .line 550
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->cancelCommand(I)V

    .line 551
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;
    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;

    move-result-object v4

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5700(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 555
    :cond_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_0

    .line 560
    :sswitch_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;
    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;

    move-result-object v4

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5900(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    .line 562
    iget-boolean v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mStatus:Z

    if-eqz v3, :cond_0

    .line 563
    iget v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    iput v3, v1, Landroid/os/Message;->what:I

    .line 564
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6000(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_0

    .line 568
    :sswitch_3
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6100(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_0

    .line 571
    :sswitch_4
    iget v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    if-ne v3, v2, :cond_0

    .line 573
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->cancelCommand(I)V

    .line 574
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    goto :goto_0

    .line 582
    :sswitch_5
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->cancelCommand(I)V

    goto :goto_0

    .line 585
    :sswitch_6
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6200(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_0

    .line 590
    :sswitch_7
    iget-boolean v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mStatus:Z

    if-eqz v3, :cond_0

    .line 591
    iget v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    iput v3, v1, Landroid/os/Message;->what:I

    .line 592
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6300(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_0

    .line 597
    :sswitch_8
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_0

    .line 600
    :sswitch_9
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHid:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;
    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;

    move-result-object v4

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6500(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    .line 601
    iget-boolean v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mStatus:Z

    if-eqz v3, :cond_0

    .line 602
    iget v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    iput v3, v1, Landroid/os/Message;->what:I

    .line 603
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6600(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 607
    :sswitch_a
    iget-boolean v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mStatus:Z

    if-eqz v3, :cond_0

    .line 608
    iget v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->mCommand:I

    iput v3, v1, Landroid/os/Message;->what:I

    .line 609
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6700(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 618
    :sswitch_b
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v3, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6800(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 621
    :sswitch_c
    iget-object v3, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v4, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHandsfree;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;
    invoke-static {v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    move-result-object v4

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$6900(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 540
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_8
        0x6 -> :sswitch_9
        0x32 -> :sswitch_4
        0x33 -> :sswitch_5
        0x34 -> :sswitch_6
        0x35 -> :sswitch_7
        0x36 -> :sswitch_8
        0x37 -> :sswitch_a
        0x38 -> :sswitch_b
        0x39 -> :sswitch_b
        0x3a -> :sswitch_b
        0x64 -> :sswitch_b
        0x65 -> :sswitch_b
        0x66 -> :sswitch_c
        0x67 -> :sswitch_b
    .end sparse-switch
.end method
