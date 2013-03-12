.class Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;
.super Lcom/android/internal/util/State;
.source "BluetoothDeviceProfileState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothDeviceProfileState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutgoingHid"
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
    .line 941
    iput-object p1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 942
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->mStatus:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/bluetooth/BluetoothDeviceProfileState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 941
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;-><init>(Landroid/bluetooth/BluetoothDeviceProfileState;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 947
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering OutgoingHid state with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$10700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2500(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    .line 948
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$10800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/os/Message;

    move-result-object v0

    iget v0, v0, Landroid/os/Message;->what:I

    iput v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->mCommand:I

    .line 949
    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->mCommand:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->mCommand:I

    const/16 v1, 0x36

    if-eq v0, v1, :cond_0

    .line 951
    const-string v0, "BluetoothDeviceProfileState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: OutgoingHid state with command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->mCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->mCommand:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->processCommand(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->mStatus:Z

    .line 954
    iget-boolean v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->mStatus:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDeviceProfileState;->sendMessage(I)V

    .line 955
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .parameter "message"

    .prologue
    .line 959
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutgoingHid State->Processing Message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2500(Landroid/bluetooth/BluetoothDeviceProfileState;Ljava/lang/String;)V

    .line 960
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 961
    .local v0, deferMsg:Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1018
    const/4 v1, 0x0

    .line 1020
    :goto_0
    return v1

    .line 969
    :sswitch_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$10900(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    .line 1020
    :cond_0
    :goto_1
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 973
    :sswitch_2
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHandsfree:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$2800(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHandsfree;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$11000(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 976
    :sswitch_3
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingA2dp:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingA2dp;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$11100(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    .line 983
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->mStatus:Z

    if-eqz v1, :cond_0

    .line 984
    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->mCommand:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 985
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$11200(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    .line 990
    :sswitch_4
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mIncomingHid:Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$3700(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$IncomingHid;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$11300(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 999
    :sswitch_5
    iget-boolean v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->mStatus:Z

    if-eqz v1, :cond_0

    .line 1000
    iget v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->mCommand:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1001
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$11400(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    .line 1012
    :sswitch_6
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$11500(Landroid/bluetooth/BluetoothDeviceProfileState;Landroid/os/Message;)V

    goto :goto_1

    .line 1015
    :sswitch_7
    iget-object v1, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    iget-object v2, p0, Landroid/bluetooth/BluetoothDeviceProfileState$OutgoingHid;->this$0:Landroid/bluetooth/BluetoothDeviceProfileState;

    #getter for: Landroid/bluetooth/BluetoothDeviceProfileState;->mBondedDevice:Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;
    invoke-static {v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$5300(Landroid/bluetooth/BluetoothDeviceProfileState;)Landroid/bluetooth/BluetoothDeviceProfileState$BondedDevice;

    move-result-object v2

    #calls: Landroid/bluetooth/BluetoothDeviceProfileState;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/bluetooth/BluetoothDeviceProfileState;->access$11600(Landroid/bluetooth/BluetoothDeviceProfileState;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 961
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_0
        0x4 -> :sswitch_3
        0x5 -> :sswitch_0
        0x6 -> :sswitch_4
        0x32 -> :sswitch_0
        0x33 -> :sswitch_5
        0x34 -> :sswitch_0
        0x35 -> :sswitch_5
        0x36 -> :sswitch_0
        0x37 -> :sswitch_1
        0x38 -> :sswitch_6
        0x39 -> :sswitch_6
        0x3a -> :sswitch_6
        0x64 -> :sswitch_6
        0x65 -> :sswitch_6
        0x66 -> :sswitch_7
    .end sparse-switch
.end method
