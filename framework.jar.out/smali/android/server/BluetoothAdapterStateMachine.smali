.class final Landroid/server/BluetoothAdapterStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "BluetoothAdapterStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/server/BluetoothAdapterStateMachine$1;,
        Landroid/server/BluetoothAdapterStateMachine$PerProcessState;,
        Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;,
        Landroid/server/BluetoothAdapterStateMachine$Switching;,
        Landroid/server/BluetoothAdapterStateMachine$HotOff;,
        Landroid/server/BluetoothAdapterStateMachine$WarmUp;,
        Landroid/server/BluetoothAdapterStateMachine$PowerOff;
    }
.end annotation


# static fields
.field static final AIRPLANE_MODE_OFF:I = 0x38

.field static final AIRPLANE_MODE_ON:I = 0x37

.field static final ALL_DEVICES_DISCONNECTED:I = 0x34

.field private static final DBG:Z = true

.field private static final DEVICES_DISCONNECT_TIMEOUT:I = 0x67

.field private static final DEVICES_DISCONNECT_TIMEOUT_TIME:I = 0xbb8

.field static final FM_POWER_OFF:I = 0x15

.field static final FM_POWER_ON:I = 0x14

.field static final PER_PROCESS_TURN_OFF:I = 0x4

.field static final PER_PROCESS_TURN_ON:I = 0x3

.field private static final POWER_DOWN_TIMEOUT:I = 0x69

.field private static final POWER_DOWN_TIMEOUT_TIME:I = 0x1388

.field private static final POWER_ON_DELAY:I = 0x6a

.field private static final POWER_ON_DELAY_TIME:I = 0x64

.field static final POWER_STATE_CHANGED:I = 0x36

.field private static final PREPARE_BLUETOOTH_TIMEOUT:I = 0x68

.field private static final PREPARE_BLUETOOTH_TIMEOUT_TIME:I = 0x2710

.field static final SCAN_MODE_CHANGED:I = 0x35

.field static final SERVICE_RECORD_LOADED:I = 0x33

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapterStateMachine"

.field private static final TURN_COLD:I = 0x66

.field static final TURN_HOT:I = 0x5

.field private static final TURN_ON_CONTINUE:I = 0x65

.field static final USER_TURN_OFF:I = 0x2

.field static final USER_TURN_ON:I = 0x1


# instance fields
.field private mBluetoothOn:Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;

.field private mBluetoothService:Landroid/server/BluetoothService;

.field private mContext:Landroid/content/Context;

.field private mEventLoop:Landroid/server/BluetoothEventLoop;

.field private mHotOff:Landroid/server/BluetoothAdapterStateMachine$HotOff;

.field private mPerProcessState:Landroid/server/BluetoothAdapterStateMachine$PerProcessState;

.field private mPowerOff:Landroid/server/BluetoothAdapterStateMachine$PowerOff;

.field private mPublicState:I

.field private mSwitching:Landroid/server/BluetoothAdapterStateMachine$Switching;

.field private mWarmUp:Landroid/server/BluetoothAdapterStateMachine$WarmUp;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 2
    .parameter "context"
    .parameter "bluetoothService"
    .parameter "bluetoothAdapter"

    .prologue
    const/4 v1, 0x0

    .line 163
    const-string v0, "BluetoothAdapterStateMachine"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 164
    iput-object p1, p0, Landroid/server/BluetoothAdapterStateMachine;->mContext:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;

    .line 166
    new-instance v0, Landroid/server/BluetoothEventLoop;

    invoke-direct {v0, p1, p3, p2, p0}, Landroid/server/BluetoothEventLoop;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Landroid/server/BluetoothService;Landroid/server/BluetoothAdapterStateMachine;)V

    iput-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mEventLoop:Landroid/server/BluetoothEventLoop;

    .line 168
    new-instance v0, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;

    invoke-direct {v0, p0, v1}, Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;-><init>(Landroid/server/BluetoothAdapterStateMachine;Landroid/server/BluetoothAdapterStateMachine$1;)V

    iput-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mBluetoothOn:Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;

    .line 169
    new-instance v0, Landroid/server/BluetoothAdapterStateMachine$Switching;

    invoke-direct {v0, p0, v1}, Landroid/server/BluetoothAdapterStateMachine$Switching;-><init>(Landroid/server/BluetoothAdapterStateMachine;Landroid/server/BluetoothAdapterStateMachine$1;)V

    iput-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mSwitching:Landroid/server/BluetoothAdapterStateMachine$Switching;

    .line 170
    new-instance v0, Landroid/server/BluetoothAdapterStateMachine$HotOff;

    invoke-direct {v0, p0, v1}, Landroid/server/BluetoothAdapterStateMachine$HotOff;-><init>(Landroid/server/BluetoothAdapterStateMachine;Landroid/server/BluetoothAdapterStateMachine$1;)V

    iput-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mHotOff:Landroid/server/BluetoothAdapterStateMachine$HotOff;

    .line 171
    new-instance v0, Landroid/server/BluetoothAdapterStateMachine$WarmUp;

    invoke-direct {v0, p0, v1}, Landroid/server/BluetoothAdapterStateMachine$WarmUp;-><init>(Landroid/server/BluetoothAdapterStateMachine;Landroid/server/BluetoothAdapterStateMachine$1;)V

    iput-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mWarmUp:Landroid/server/BluetoothAdapterStateMachine$WarmUp;

    .line 172
    new-instance v0, Landroid/server/BluetoothAdapterStateMachine$PowerOff;

    invoke-direct {v0, p0, v1}, Landroid/server/BluetoothAdapterStateMachine$PowerOff;-><init>(Landroid/server/BluetoothAdapterStateMachine;Landroid/server/BluetoothAdapterStateMachine$1;)V

    iput-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mPowerOff:Landroid/server/BluetoothAdapterStateMachine$PowerOff;

    .line 173
    new-instance v0, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;

    invoke-direct {v0, p0, v1}, Landroid/server/BluetoothAdapterStateMachine$PerProcessState;-><init>(Landroid/server/BluetoothAdapterStateMachine;Landroid/server/BluetoothAdapterStateMachine$1;)V

    iput-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mPerProcessState:Landroid/server/BluetoothAdapterStateMachine$PerProcessState;

    .line 175
    iget-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mBluetoothOn:Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;

    invoke-virtual {p0, v0}, Landroid/server/BluetoothAdapterStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 176
    iget-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mSwitching:Landroid/server/BluetoothAdapterStateMachine$Switching;

    invoke-virtual {p0, v0}, Landroid/server/BluetoothAdapterStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 177
    iget-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mHotOff:Landroid/server/BluetoothAdapterStateMachine$HotOff;

    invoke-virtual {p0, v0}, Landroid/server/BluetoothAdapterStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 178
    iget-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mWarmUp:Landroid/server/BluetoothAdapterStateMachine$WarmUp;

    invoke-virtual {p0, v0}, Landroid/server/BluetoothAdapterStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 179
    iget-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mPowerOff:Landroid/server/BluetoothAdapterStateMachine$PowerOff;

    invoke-virtual {p0, v0}, Landroid/server/BluetoothAdapterStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 180
    iget-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mPerProcessState:Landroid/server/BluetoothAdapterStateMachine$PerProcessState;

    invoke-virtual {p0, v0}, Landroid/server/BluetoothAdapterStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 182
    iget-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mPowerOff:Landroid/server/BluetoothAdapterStateMachine$PowerOff;

    invoke-virtual {p0, v0}, Landroid/server/BluetoothAdapterStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 183
    const/16 v0, 0xa

    iput v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mPublicState:I

    .line 184
    return-void
.end method

.method static synthetic access$1000(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/server/BluetoothAdapterStateMachine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->persistSwitchSetting(Z)V

    return-void
.end method

.method static synthetic access$1200(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$PowerOff;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mPowerOff:Landroid/server/BluetoothAdapterStateMachine$PowerOff;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/server/BluetoothAdapterStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/server/BluetoothAdapterStateMachine;->getBluetoothPersistedSetting()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2000(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/server/BluetoothAdapterStateMachine;ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothAdapterStateMachine;->perProcessCallback(ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothEventLoop;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mEventLoop:Landroid/server/BluetoothEventLoop;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/server/BluetoothAdapterStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/server/BluetoothAdapterStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Landroid/server/BluetoothAdapterStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/server/BluetoothAdapterStateMachine;->shutoffBluetooth()V

    return-void
.end method

.method static synthetic access$2800(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/server/BluetoothAdapterStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$3100(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$HotOff;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mHotOff:Landroid/server/BluetoothAdapterStateMachine$HotOff;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3300(Landroid/server/BluetoothAdapterStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/server/BluetoothAdapterStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$Switching;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mSwitching:Landroid/server/BluetoothAdapterStateMachine$Switching;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3600(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3700(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3800(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$PerProcessState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mPerProcessState:Landroid/server/BluetoothAdapterStateMachine$PerProcessState;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4000(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4100(Landroid/server/BluetoothAdapterStateMachine;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Landroid/server/BluetoothAdapterStateMachine;->recoverStateMachine(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$4200(Landroid/server/BluetoothAdapterStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/server/BluetoothAdapterStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Landroid/server/BluetoothAdapterStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mPublicState:I

    return v0
.end method

.method static synthetic access$4400(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mBluetoothOn:Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;

    return-object v0
.end method

.method static synthetic access$4500(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4600(Landroid/server/BluetoothAdapterStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$4700(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4800(Landroid/server/BluetoothAdapterStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/server/BluetoothAdapterStateMachine;->finishSwitchingOff()V

    return-void
.end method

.method static synthetic access$4900(Landroid/server/BluetoothAdapterStateMachine;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5100(Landroid/server/BluetoothAdapterStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5200(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5300(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5400(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5500(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5600(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5700(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5800(Landroid/server/BluetoothAdapterStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$5900(Landroid/server/BluetoothAdapterStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/server/BluetoothAdapterStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/server/BluetoothAdapterStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/server/BluetoothAdapterStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6000(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6100(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6200(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6300(Landroid/server/BluetoothAdapterStateMachine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->allProcessesCallback(Z)V

    return-void
.end method

.method static synthetic access$6400(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6500(Landroid/server/BluetoothAdapterStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/server/BluetoothAdapterStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6600(Landroid/server/BluetoothAdapterStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/server/BluetoothAdapterStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6700(Landroid/server/BluetoothAdapterStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$6800(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6900(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-static {p0}, Landroid/server/BluetoothAdapterStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7000(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7100(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7200(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7300(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7400(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7500(Landroid/server/BluetoothAdapterStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$7600(Landroid/server/BluetoothAdapterStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7700(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7800(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7900(Landroid/server/BluetoothAdapterStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$800(Landroid/server/BluetoothAdapterStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V

    return-void
.end method

.method static synthetic access$900(Landroid/server/BluetoothAdapterStateMachine;)Landroid/server/BluetoothAdapterStateMachine$WarmUp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mWarmUp:Landroid/server/BluetoothAdapterStateMachine$WarmUp;

    return-object v0
.end method

.method private allProcessesCallback(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 770
    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->getApplicationStateChangeCallbacks()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 771
    .local v0, c:Landroid/bluetooth/IBluetoothStateChangeCallback;
    invoke-direct {p0, p1, v0}, Landroid/server/BluetoothAdapterStateMachine;->perProcessCallback(ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V

    goto :goto_0

    .line 773
    .end local v0           #c:Landroid/bluetooth/IBluetoothStateChangeCallback;
    :cond_0
    if-nez p1, :cond_1

    .line 774
    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v2}, Landroid/server/BluetoothService;->clearApplicationStateChangeTracker()V

    .line 776
    :cond_1
    return-void
.end method

.method private broadcastState(I)V
    .locals 4
    .parameter "newState"

    .prologue
    .line 805
    const-string v1, "BluetoothAdapterStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bluetooth state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/server/BluetoothAdapterStateMachine;->mPublicState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    iget v1, p0, Landroid/server/BluetoothAdapterStateMachine;->mPublicState:I

    if-ne v1, p1, :cond_0

    .line 819
    :goto_0
    return-void

    .line 810
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 811
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    iget v2, p0, Landroid/server/BluetoothAdapterStateMachine;->mPublicState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 812
    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 813
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 814
    iput p1, p0, Landroid/server/BluetoothAdapterStateMachine;->mPublicState:I

    .line 816
    const-string v1, "BluetoothAdapterStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "pw"

    .prologue
    .line 833
    invoke-virtual {p0}, Landroid/server/BluetoothAdapterStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    .line 834
    .local v0, currentState:Lcom/android/internal/util/IState;
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine;->mPowerOff:Landroid/server/BluetoothAdapterStateMachine$PowerOff;

    if-ne v0, v1, :cond_0

    .line 835
    const-string v1, "Bluetooth OFF - power down\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 847
    :goto_0
    return-void

    .line 836
    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine;->mWarmUp:Landroid/server/BluetoothAdapterStateMachine$WarmUp;

    if-ne v0, v1, :cond_1

    .line 837
    const-string v1, "Bluetooth OFF - warm up\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 838
    :cond_1
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine;->mHotOff:Landroid/server/BluetoothAdapterStateMachine$HotOff;

    if-ne v0, v1, :cond_2

    .line 839
    const-string v1, "Bluetooth OFF - hot but off\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 840
    :cond_2
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine;->mSwitching:Landroid/server/BluetoothAdapterStateMachine$Switching;

    if-ne v0, v1, :cond_3

    .line 841
    const-string v1, "Bluetooth Switching\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 842
    :cond_3
    iget-object v1, p0, Landroid/server/BluetoothAdapterStateMachine;->mBluetoothOn:Landroid/server/BluetoothAdapterStateMachine$BluetoothOn;

    if-ne v0, v1, :cond_4

    .line 843
    const-string v1, "Bluetooth ON\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 845
    :cond_4
    const-string v1, "ERROR: Bluetooth UNKNOWN STATE "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private finishSwitchingOff()V
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->finishDisable()V

    .line 750
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/server/BluetoothAdapterStateMachine;->broadcastState(I)V

    .line 751
    iget-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->cleanupAfterFinishDisable()V

    .line 752
    return-void
.end method

.method private getBluetoothPersistedSetting()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 798
    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 799
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v2, "bluetooth_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 850
    const-string v0, "BluetoothAdapterStateMachine"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    return-void
.end method

.method private perProcessCallback(ZLandroid/bluetooth/IBluetoothStateChangeCallback;)V
    .locals 1
    .parameter "on"
    .parameter "c"

    .prologue
    .line 761
    if-nez p2, :cond_0

    .line 766
    :goto_0
    return-void

    .line 764
    :cond_0
    :try_start_0
    invoke-interface {p2, p1}, Landroid/bluetooth/IBluetoothStateChangeCallback;->onBluetoothStateChange(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 765
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private persistSwitchSetting(Z)V
    .locals 5
    .parameter "setOn"

    .prologue
    .line 790
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 791
    .local v0, origCallerIdentityToken:J
    iget-object v2, p0, Landroid/server/BluetoothAdapterStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "bluetooth_on"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 794
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 795
    return-void

    .line 791
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private recoverStateMachine(ILjava/lang/Object;)V
    .locals 3
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 826
    const-string v0, "BluetoothAdapterStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get unexpected power on event, reset with: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mHotOff:Landroid/server/BluetoothAdapterStateMachine$HotOff;

    invoke-virtual {p0, v0}, Landroid/server/BluetoothAdapterStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 828
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 829
    invoke-virtual {p0, p1, p2}, Landroid/server/BluetoothAdapterStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/server/BluetoothAdapterStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 830
    return-void
.end method

.method private shutoffBluetooth()V
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->shutoffBluetooth()V

    .line 756
    iget-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mEventLoop:Landroid/server/BluetoothEventLoop;

    invoke-virtual {v0}, Landroid/server/BluetoothEventLoop;->stop()V

    .line 757
    iget-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v0}, Landroid/server/BluetoothService;->cleanNativeAfterShutoffBluetooth()V

    .line 758
    return-void
.end method


# virtual methods
.method getBluetoothAdapterState()I
    .locals 1

    .prologue
    .line 782
    iget v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mPublicState:I

    return v0
.end method

.method getBluetoothEventLoop()Landroid/server/BluetoothEventLoop;
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Landroid/server/BluetoothAdapterStateMachine;->mEventLoop:Landroid/server/BluetoothEventLoop;

    return-object v0
.end method
