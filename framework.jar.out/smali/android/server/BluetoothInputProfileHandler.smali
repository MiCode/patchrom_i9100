.class final Landroid/server/BluetoothInputProfileHandler;
.super Ljava/lang/Object;
.source "BluetoothInputProfileHandler.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothInputProfileHandler"

.field public static sInstance:Landroid/server/BluetoothInputProfileHandler;


# instance fields
.field private mBluetoothService:Landroid/server/BluetoothService;

.field private mContext:Landroid/content/Context;

.field private final mHidProfileState:Landroid/bluetooth/BluetoothProfileState;

.field private final mInputDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    .locals 3
    .parameter "context"
    .parameter "service"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/server/BluetoothInputProfileHandler;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/server/BluetoothInputProfileHandler;->mInputDevices:Ljava/util/HashMap;

    .line 55
    new-instance v0, Landroid/bluetooth/BluetoothProfileState;

    iget-object v1, p0, Landroid/server/BluetoothInputProfileHandler;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/bluetooth/BluetoothProfileState;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/server/BluetoothInputProfileHandler;->mHidProfileState:Landroid/bluetooth/BluetoothProfileState;

    .line 56
    iget-object v0, p0, Landroid/server/BluetoothInputProfileHandler;->mHidProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothProfileState;->start()V

    .line 57
    return-void
.end method

.method private static debugLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 243
    const-string v0, "BluetoothInputProfileHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method

.method private static errorLog(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 247
    const-string v0, "BluetoothInputProfileHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;Landroid/server/BluetoothService;)Landroid/server/BluetoothInputProfileHandler;
    .locals 2
    .parameter "context"
    .parameter "service"

    .prologue
    .line 61
    const-class v1, Landroid/server/BluetoothInputProfileHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/server/BluetoothInputProfileHandler;->sInstance:Landroid/server/BluetoothInputProfileHandler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/server/BluetoothInputProfileHandler;

    invoke-direct {v0, p0, p1}, Landroid/server/BluetoothInputProfileHandler;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V

    sput-object v0, Landroid/server/BluetoothInputProfileHandler;->sInstance:Landroid/server/BluetoothInputProfileHandler;

    .line 62
    :cond_0
    sget-object v0, Landroid/server/BluetoothInputProfileHandler;->sInstance:Landroid/server/BluetoothInputProfileHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleInputDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 6
    .parameter "device"
    .parameter "state"

    .prologue
    .line 171
    if-nez p1, :cond_1

    .line 172
    const-string v4, "BluetoothInputProfileHandler"

    const-string v5, "device is null in handleInputDeviceStateChange()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v4, p0, Landroid/server/BluetoothInputProfileHandler;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    .line 177
    const/4 v3, 0x0

    .line 181
    .local v3, prevState:I
    :goto_1
    if-eq v3, p2, :cond_0

    .line 183
    iget-object v4, p0, Landroid/server/BluetoothInputProfileHandler;->mInputDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-virtual {p0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    if-eq p2, v4, :cond_3

    :cond_2
    const/4 v4, 0x2

    if-ne p2, v4, :cond_4

    .line 191
    :cond_3
    const/16 v4, 0x3e8

    invoke-virtual {p0, p1, v4}, Landroid/server/BluetoothInputProfileHandler;->setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 194
    :cond_4
    const/4 v2, 0x0

    .line 195
    .local v2, isKeyboard:Z
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 196
    .local v0, btDeviceClass:Landroid/bluetooth/BluetoothClass;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getPeripheralMinorClass()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 204
    const/4 v2, 0x0

    .line 208
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 210
    const-string v4, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    const-string v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    const-string v4, "android.bluetooth.profile.extra.isKeyboard"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 213
    const/high16 v4, 0x800

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 214
    iget-object v4, p0, Landroid/server/BluetoothInputProfileHandler;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.BLUETOOTH"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InputDevice state : device: device State:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/server/BluetoothInputProfileHandler;->debugLog(Ljava/lang/String;)V

    .line 217
    iget-object v4, p0, Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    const/4 v5, 0x4

    invoke-virtual {v4, p1, v5, p2, v3}, Landroid/server/BluetoothService;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    goto :goto_0

    .line 179
    .end local v0           #btDeviceClass:Landroid/bluetooth/BluetoothClass;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #isKeyboard:Z
    .end local v3           #prevState:I
    :cond_5
    iget-object v4, p0, Landroid/server/BluetoothInputProfileHandler;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .restart local v3       #prevState:I
    goto/16 :goto_1

    .line 199
    .restart local v0       #btDeviceClass:Landroid/bluetooth/BluetoothClass;
    .restart local v2       #isKeyboard:Z
    :sswitch_0
    const/4 v2, 0x1

    .line 200
    goto :goto_2

    .line 196
    :sswitch_data_0
    .sparse-switch
        0x540 -> :sswitch_0
        0x5c0 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method connectInputDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDeviceProfileState;)Z
    .locals 5
    .parameter "device"
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v3, p0, Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, objectPath:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-nez v3, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v2

    .line 73
    :cond_1
    if-eqz p2, :cond_0

    .line 74
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 75
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 76
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 77
    iget-object v2, p0, Landroid/server/BluetoothInputProfileHandler;->mHidProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 78
    const/4 v2, 0x1

    goto :goto_0
.end method

.method connectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .parameter "device"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    iget-object v3, p0, Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, objectPath:Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Landroid/server/BluetoothInputProfileHandler;->handleInputDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    .line 86
    iget-object v3, p0, Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v3, v0}, Landroid/server/BluetoothService;->connectInputDeviceNative(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothInputProfileHandler;->handleInputDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    .line 90
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method disconnectInputDevice(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDeviceProfileState;)Z
    .locals 5
    .parameter "device"
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v3, p0, Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, objectPath:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-nez v3, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v2

    .line 100
    :cond_1
    if-eqz p2, :cond_0

    .line 101
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 102
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0x36

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 103
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 104
    iget-object v2, p0, Landroid/server/BluetoothInputProfileHandler;->mHidProfileState:Landroid/bluetooth/BluetoothProfileState;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothProfileState;->sendMessage(Landroid/os/Message;)V

    .line 105
    const/4 v2, 0x1

    goto :goto_0
.end method

.method disconnectInputDeviceInternal(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .parameter "device"

    .prologue
    .line 111
    iget-object v1, p0, Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/server/BluetoothService;->getObjectPathFromAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, objectPath:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothInputProfileHandler;->handleInputDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    .line 113
    iget-object v1, p0, Landroid/server/BluetoothInputProfileHandler;->mBluetoothService:Landroid/server/BluetoothService;

    invoke-virtual {v1, v0}, Landroid/server/BluetoothService;->disconnectInputDeviceNative(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    const/4 v1, 0x2

    invoke-direct {p0, p1, v1}, Landroid/server/BluetoothInputProfileHandler;->handleInputDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    .line 115
    const/4 v1, 0x0

    .line 117
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method getConnectedInputDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    invoke-virtual {p0, v1}, Landroid/server/BluetoothInputProfileHandler;->lookupInputDevicesMatchingStates([I)Ljava/util/List;

    move-result-object v0

    .line 130
    .local v0, devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    return-object v0
.end method

.method getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 121
    iget-object v0, p0, Landroid/server/BluetoothInputProfileHandler;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothInputProfileHandler;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    .line 139
    iget-object v0, p0, Landroid/server/BluetoothInputProfileHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getBluetoothInputDevicePriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getInputDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 1
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Landroid/server/BluetoothInputProfileHandler;->lookupInputDevicesMatchingStates([I)Ljava/util/List;

    move-result-object v0

    .line 135
    .local v0, devices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    return-object v0
.end method

.method handleInputDevicePropertyChange(Ljava/lang/String;Z)V
    .locals 3
    .parameter "address"
    .parameter "connected"

    .prologue
    .line 222
    if-eqz p2, :cond_0

    const/4 v2, 0x2

    .line 224
    .local v2, state:I
    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 225
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 226
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-direct {p0, v1, v2}, Landroid/server/BluetoothInputProfileHandler;->handleInputDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    .line 227
    return-void

    .line 222
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #state:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method lookupInputDevicesMatchingStates([I)Ljava/util/List;
    .locals 9
    .parameter "states"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v5, inputDevices:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v8, p0, Landroid/server/BluetoothInputProfileHandler;->mInputDevices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 157
    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v1}, Landroid/server/BluetoothInputProfileHandler;->getInputDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 158
    .local v4, inputDeviceState:I
    move-object v0, p1

    .local v0, arr$:[I
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v6, :cond_0

    aget v7, v0, v3

    .line 159
    .local v7, state:I
    if-ne v7, v4, :cond_1

    .line 160
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 158
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 165
    .end local v0           #arr$:[I
    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #i$:I
    .end local v4           #inputDeviceState:I
    .end local v6           #len$:I
    .end local v7           #state:I
    :cond_2
    return-object v5
.end method

.method setInitialInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .parameter "device"
    .parameter "state"

    .prologue
    const/4 v1, -0x1

    .line 230
    packed-switch p2, :pswitch_data_0

    .line 240
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 232
    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/server/BluetoothInputProfileHandler;->getInputDevicePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 233
    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0}, Landroid/server/BluetoothInputProfileHandler;->setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 237
    :pswitch_2
    invoke-virtual {p0, p1, v1}, Landroid/server/BluetoothInputProfileHandler;->setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setInputDevicePriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2
    .parameter "device"
    .parameter "priority"

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/server/BluetoothInputProfileHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getBluetoothInputDevicePriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method
