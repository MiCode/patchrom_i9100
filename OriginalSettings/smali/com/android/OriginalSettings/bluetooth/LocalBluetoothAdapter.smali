.class public final Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;
.super Ljava/lang/Object;
.source "LocalBluetoothAdapter.java"


# static fields
.field private static sInstance:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mLastScan:J

.field private mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

.field private mState:I


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 1
    .parameter "adapter"

    .prologue
    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mState:I

    .line 54
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 55
    return-void
.end method

.method static declared-synchronized getInstance()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;
    .locals 3

    .prologue
    .line 68
    const-class v2, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    if-nez v1, :cond_0

    .line 69
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 70
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 71
    new-instance v1, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-direct {v1, v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    sput-object v1, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    .line 75
    :cond_0
    sget-object v1, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 68
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method cancelDiscovery()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 82
    return-void
.end method

.method disable()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    return v0
.end method

.method enable()Z
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getBluetoothState()I
    .locals 1

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->syncBluetoothState()Z

    .line 173
    iget v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getBondedDevices()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "profile"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 95
    return-void
.end method

.method getScanMode()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v0

    return v0
.end method

.method getState()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    return v0
.end method

.method getUuids()[Landroid/os/ParcelUuid;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method isDiscovering()Z
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    return v0
.end method

.method isEnabled()Z
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public setBluetoothEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 199
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    .line 203
    .local v0, success:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 204
    if-eqz p1, :cond_1

    const/16 v1, 0xb

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 215
    :goto_2
    return-void

    .line 199
    .end local v0           #success:Z
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    goto :goto_0

    .line 204
    .restart local v0       #success:Z
    :cond_1
    const/16 v1, 0xd

    goto :goto_1

    .line 209
    :cond_2
    const-string v1, "LocalBluetoothAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBluetoothEnabled call, manager didn\'t return success for enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->syncBluetoothState()Z

    goto :goto_2
.end method

.method declared-synchronized setBluetoothStateInt(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mState:I

    .line 179
    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->setBluetoothStateOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :cond_0
    monitor-exit p0

    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setDiscoverableTimeout(I)V
    .locals 1
    .parameter "timeout"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 127
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 131
    return-void
.end method

.method setProfileManager(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    .line 59
    return-void
.end method

.method setScanMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 135
    return-void
.end method

.method setScanMode(II)Z
    .locals 1
    .parameter "mode"
    .parameter "duration"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result v0

    return v0
.end method

.method startScanning(Z)V
    .locals 5
    .parameter "force"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-nez v1, :cond_0

    .line 144
    if-nez p1, :cond_2

    .line 147
    iget-wide v1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mLastScan:J

    const-wide/32 v3, 0x493e0

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/OriginalSettings/bluetooth/A2dpProfile;

    move-result-object v0

    .line 153
    .local v0, a2dp:Lcom/android/OriginalSettings/bluetooth/A2dpProfile;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/A2dpProfile;->isA2dpPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    .end local v0           #a2dp:Lcom/android/OriginalSettings/bluetooth/A2dpProfile;
    :cond_2
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mLastScan:J

    goto :goto_0
.end method

.method stopScanning()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 168
    :cond_0
    return-void
.end method

.method syncBluetoothState()Z
    .locals 2

    .prologue
    .line 190
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 191
    .local v0, currentState:I
    iget v1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mState:I

    if-eq v0, v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 193
    const/4 v1, 0x1

    .line 195
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
