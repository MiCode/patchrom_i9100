.class final Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;
.super Ljava/lang/Object;
.source "HeadsetProfile.java"

# interfaces
.implements Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/bluetooth/HeadsetProfile$1;,
        Lcom/android/OriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;
    }
.end annotation


# static fields
.field static final UUIDS:[Landroid/os/ParcelUuid;


# instance fields
.field private final mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

.field private final mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

.field private mProfileReady:Z

.field private mService:Landroid/bluetooth/BluetoothHeadset;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;)V
    .locals 3
    .parameter "context"
    .parameter "adapter"
    .parameter "deviceManager"
    .parameter "profileManager"

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    .line 96
    iput-object p3, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    .line 97
    iput-object p4, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    .line 98
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    new-instance v1, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile$HeadsetServiceListener;-><init>(Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;Lcom/android/OriginalSettings/bluetooth/HeadsetProfile$1;)V

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mProfileReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    .line 111
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    .line 112
    .local v2, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v2, :cond_0

    .line 113
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 114
    .local v1, sink:Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v1}, Landroid/bluetooth/BluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 117
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #sink:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    return v3
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    .line 121
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 122
    .local v0, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-le v1, v3, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, p1, v3}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 129
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    if-nez v1, :cond_0

    .line 138
    :goto_0
    return v2

    .line 136
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 138
    .local v0, deviceList:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .parameter "btClass"

    .prologue
    .line 192
    const v0, 0x7f020052

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 174
    const v0, 0x7f0b0213

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .parameter "device"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .parameter "device"

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 179
    .local v0, state:I
    packed-switch v0, :pswitch_data_0

    .line 187
    :pswitch_0
    invoke-static {v0}, Lcom/android/OriginalSettings/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    :goto_0
    return v1

    .line 181
    :pswitch_1
    const v1, 0x7f0b022b

    goto :goto_0

    .line 184
    :pswitch_2
    const v1, 0x7f0b0224

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isAutoConnectable()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .parameter "device"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isProfileReady()Z
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mProfileReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2
    .parameter "device"
    .parameter "preferred"

    .prologue
    const/16 v1, 0x64

    .line 152
    if-eqz p2, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;->mService:Landroid/bluetooth/BluetoothHeadset;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHeadset;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string v0, "HEADSET"

    return-object v0
.end method
