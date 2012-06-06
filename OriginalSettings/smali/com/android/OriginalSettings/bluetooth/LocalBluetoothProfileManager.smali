.class final Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;,
        Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;,
        Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    }
.end annotation


# instance fields
.field private mA2dpProfile:Lcom/android/OriginalSettings/bluetooth/A2dpProfile;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

.field private final mEventManager:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

.field private mHeadsetProfile:Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

.field private final mHidProfile:Lcom/android/OriginalSettings/bluetooth/HidProfile;

.field private final mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

.field private mOppProfile:Lcom/android/OriginalSettings/bluetooth/OppProfile;

.field private final mPanProfile:Lcom/android/OriginalSettings/bluetooth/PanProfile;

.field private final mProfileNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;)V
    .locals 4
    .parameter "context"
    .parameter "adapter"
    .parameter "deviceManager"
    .parameter "eventManager"

    .prologue
    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    .line 91
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    .line 93
    iput-object p2, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    .line 94
    iput-object p3, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    .line 95
    iput-object p4, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    .line 97
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1, p0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->setProfileManager(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;)V

    .line 98
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    invoke-virtual {v1, p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->setProfileManager(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;)V

    .line 100
    invoke-virtual {p2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 103
    .local v0, uuids:[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    .line 108
    :cond_0
    new-instance v1, Lcom/android/OriginalSettings/bluetooth/HidProfile;

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-direct {v1, p1, v2}, Lcom/android/OriginalSettings/bluetooth/HidProfile;-><init>(Landroid/content/Context;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/OriginalSettings/bluetooth/HidProfile;

    .line 109
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/OriginalSettings/bluetooth/HidProfile;

    const-string v2, "HID"

    const-string v3, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v1, Lcom/android/OriginalSettings/bluetooth/PanProfile;

    invoke-direct {v1, p1}, Lcom/android/OriginalSettings/bluetooth/PanProfile;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/OriginalSettings/bluetooth/PanProfile;

    .line 113
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/OriginalSettings/bluetooth/PanProfile;

    const-string v2, "PAN"

    const-string v3, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1, v2, v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->addPanProfile(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "LocalBluetoothProfileManager"

    const-string v2, "LocalBluetoothProfileManager construction complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;)Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    return-object v0
.end method

.method private addPanProfile(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "profile"
    .parameter "profileName"
    .parameter "stateChangedAction"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;-><init>(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 182
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    return-void
.end method

.method private addProfile(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "profile"
    .parameter "profileName"
    .parameter "stateChangedAction"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager$Handler;)V

    .line 175
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    return-void
.end method


# virtual methods
.method addServiceListener(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 249
    return-void
.end method

.method callServiceConnectedListeners()V
    .locals 3

    .prologue
    .line 258
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 259
    .local v1, l:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    invoke-interface {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceConnected()V

    goto :goto_0

    .line 261
    .end local v1           #l:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    :cond_0
    return-void
.end method

.method callServiceDisconnectedListeners()V
    .locals 3

    .prologue
    .line 265
    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 266
    .local v1, listener:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    invoke-interface {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceDisconnected()V

    goto :goto_0

    .line 268
    .end local v1           #listener:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    :cond_0
    return-void
.end method

.method getA2dpProfile()Lcom/android/OriginalSettings/bluetooth/A2dpProfile;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/OriginalSettings/bluetooth/A2dpProfile;

    return-object v0
.end method

.method getHeadsetProfile()Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    return-object v0
.end method

.method getProfileByName(Ljava/lang/String;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    .locals 1
    .parameter "name"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;

    return-object v0
.end method

.method public declared-synchronized isManagerReady()Z
    .locals 2

    .prologue
    .line 274
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    .line 275
    .local v0, profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    if-eqz v0, :cond_0

    .line 276
    invoke-interface {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 282
    :goto_0
    monitor-exit p0

    return v1

    .line 278
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/OriginalSettings/bluetooth/A2dpProfile;

    .line 279
    if-eqz v0, :cond_1

    .line 280
    invoke-interface {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;->isProfileReady()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 282
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 274
    .end local v0           #profile:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method removeServiceListener(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method setBluetoothStateOn()V
    .locals 2

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 192
    .local v0, uuids:[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    .line 196
    return-void
.end method

.method updateLocalProfiles([Landroid/os/ParcelUuid;)V
    .locals 4
    .parameter "uuids"

    .prologue
    .line 128
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/OriginalSettings/bluetooth/A2dpProfile;

    if-nez v0, :cond_0

    .line 130
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local A2DP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v0, Lcom/android/OriginalSettings/bluetooth/A2dpProfile;

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/OriginalSettings/bluetooth/A2dpProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/OriginalSettings/bluetooth/A2dpProfile;

    .line 132
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/OriginalSettings/bluetooth/A2dpProfile;

    const-string v1, "A2DP"

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_0
    :goto_0
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    if-nez v0, :cond_2

    .line 143
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local HEADSET profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    new-instance v0, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;-><init>(Landroid/content/Context;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    .line 146
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    const-string v1, "HEADSET"

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_2
    :goto_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 155
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/OriginalSettings/bluetooth/OppProfile;

    if-nez v0, :cond_3

    .line 156
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local OPP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    new-instance v0, Lcom/android/OriginalSettings/bluetooth/OppProfile;

    invoke-direct {v0}, Lcom/android/OriginalSettings/bluetooth/OppProfile;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/OriginalSettings/bluetooth/OppProfile;

    .line 159
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    const-string v1, "OPP"

    iget-object v2, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/OriginalSettings/bluetooth/OppProfile;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->registerProfileIntentReceiver()V

    .line 167
    return-void

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/OriginalSettings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_0

    .line 136
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: A2DP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    :cond_5
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_2

    .line 150
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: HEADSET profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 161
    :cond_6
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/OriginalSettings/bluetooth/OppProfile;

    if-eqz v0, :cond_3

    .line 162
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: OPP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method declared-synchronized updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 1
    .parameter "uuids"
    .parameter "localUuids"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/ParcelUuid;",
            "[",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    .local p3, profiles:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;>;"
    .local p4, removedProfiles:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p4}, Ljava/util/Collection;->clear()V

    .line 307
    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 308
    invoke-interface {p3}, Ljava/util/Collection;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    if-nez p1, :cond_1

    .line 347
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 314
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_4

    .line 315
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 319
    :cond_3
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/OriginalSettings/bluetooth/HeadsetProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 324
    :cond_4
    sget-object v0, Lcom/android/OriginalSettings/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/OriginalSettings/bluetooth/A2dpProfile;

    if-eqz v0, :cond_5

    .line 326
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/OriginalSettings/bluetooth/A2dpProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/OriginalSettings/bluetooth/A2dpProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 330
    :cond_5
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/OriginalSettings/bluetooth/OppProfile;

    if-eqz v0, :cond_6

    .line 332
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/OriginalSettings/bluetooth/OppProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/OriginalSettings/bluetooth/OppProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 336
    :cond_6
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/OriginalSettings/bluetooth/HidProfile;

    if-eqz v0, :cond_7

    .line 338
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/OriginalSettings/bluetooth/HidProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/OriginalSettings/bluetooth/HidProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 342
    :cond_7
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/OriginalSettings/bluetooth/PanProfile;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/OriginalSettings/bluetooth/PanProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/OriginalSettings/bluetooth/PanProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
