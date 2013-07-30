.class final Lcom/android/sec_settings/bluetooth/BluetoothEventManager;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/bluetooth/BluetoothEventManager$DockEventHandler;,
        Lcom/android/sec_settings/bluetooth/BluetoothEventManager$PairingCancelHandler;,
        Lcom/android/sec_settings/bluetooth/BluetoothEventManager$UuidChangedHandler;,
        Lcom/android/sec_settings/bluetooth/BluetoothEventManager$ClassChangedHandler;,
        Lcom/android/sec_settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;,
        Lcom/android/sec_settings/bluetooth/BluetoothEventManager$NameChangedHandler;,
        Lcom/android/sec_settings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;,
        Lcom/android/sec_settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;,
        Lcom/android/sec_settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;,
        Lcom/android/sec_settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;,
        Lcom/android/sec_settings/bluetooth/BluetoothEventManager$Handler;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private final mAdapterIntentFilter:Landroid/content/IntentFilter;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/sec_settings/bluetooth/BluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/sec_settings/bluetooth/BluetoothEventManager$Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

.field private final mProfileIntentFilter:Landroid/content/IntentFilter;

.field private mProfileManager:Lcom/android/sec_settings/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 43
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->DBG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V
    .locals 4
    .parameter "adapter"
    .parameter "deviceManager"
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 140
    new-instance v0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$1;-><init>(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object p1, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    .line 77
    iput-object p2, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    .line 81
    iput-object p3, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    .line 84
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    new-instance v1, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 87
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    new-instance v1, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;Z)V

    invoke-virtual {p0, v0, v1}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 88
    const-string v0, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    new-instance v1, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;Z)V

    invoke-virtual {p0, v0, v1}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 89
    const-string v0, "android.bluetooth.device.action.FOUND"

    new-instance v1, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 90
    const-string v0, "android.bluetooth.device.action.DISAPPEARED"

    new-instance v1, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;-><init>(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 91
    const-string v0, "android.bluetooth.device.action.NAME_CHANGED"

    new-instance v1, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$NameChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 94
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    new-instance v1, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 95
    const-string v0, "android.bluetooth.device.action.PAIRING_CANCEL"

    new-instance v1, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$PairingCancelHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$PairingCancelHandler;-><init>(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 98
    const-string v0, "android.bluetooth.device.action.CLASS_CHANGED"

    new-instance v1, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$ClassChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$ClassChangedHandler;-><init>(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 99
    const-string v0, "android.bluetooth.device.action.UUID"

    new-instance v1, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$UuidChangedHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$UuidChangedHandler;-><init>(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 102
    const-string v0, "android.intent.action.DOCK_EVENT"

    new-instance v1, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$DockEventHandler;

    invoke-direct {v1, p0, v3}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager$DockEventHandler;-><init>(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$Handler;)V

    .line 103
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    return-void
.end method

.method static synthetic access$1000(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)Ljava/util/Collection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)Lcom/android/sec_settings/bluetooth/LocalBluetoothProfileManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/sec_settings/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->DBG:Z

    return v0
.end method

.method static synthetic access$1600(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-static {p0}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/sec_settings/bluetooth/BluetoothEventManager;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    return-object v0
.end method

.method private dispatchDeviceAdded(Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .parameter "cachedDevice"

    .prologue
    .line 225
    iget-object v3, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 226
    :try_start_0
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/bluetooth/BluetoothCallback;

    .line 227
    .local v0, callback:Lcom/android/sec_settings/bluetooth/BluetoothCallback;
    invoke-interface {v0, p1}, Lcom/android/sec_settings/bluetooth/BluetoothCallback;->onDeviceAdded(Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 229
    .end local v0           #callback:Lcom/android/sec_settings/bluetooth/BluetoothCallback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    return-void
.end method

.method private static getDockedDeviceAddress(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 127
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 128
    .local v1, i:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 129
    const-string v4, "android.intent.extra.DOCK_STATE"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 130
    .local v2, state:I
    if-eqz v2, :cond_0

    .line 131
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 132
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 137
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v2           #state:I
    :cond_0
    return-object v3
.end method


# virtual methods
.method addHandler(Ljava/lang/String;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1
    .parameter "action"
    .parameter "handler"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method addProfileHandler(Ljava/lang/String;Lcom/android/sec_settings/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1
    .parameter "action"
    .parameter "handler"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method onProfileStateChanged(Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;II)V
    .locals 4
    .parameter "profile"
    .parameter "newState"
    .parameter "oldState"

    .prologue
    .line 450
    iget-object v3, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v3

    .line 451
    :try_start_0
    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/bluetooth/BluetoothCallback;

    .line 452
    .local v0, callback:Lcom/android/sec_settings/bluetooth/BluetoothCallback;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/sec_settings/bluetooth/BluetoothCallback;->onProfileStateChanged(Lcom/android/sec_settings/bluetooth/LocalBluetoothProfile;II)V

    goto :goto_0

    .line 454
    .end local v0           #callback:Lcom/android/sec_settings/bluetooth/BluetoothCallback;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    return-void
.end method

.method readPairedDevices()Z
    .locals 8

    .prologue
    .line 427
    iget-object v5, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v5}, Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 428
    .local v0, bondedDevices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v0, :cond_1

    .line 429
    const/4 v3, 0x0

    .line 445
    :cond_0
    return v3

    .line 432
    :cond_1
    const/4 v3, 0x0

    .line 433
    .local v3, deviceAdded:Z
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 434
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v5, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v5, v2}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 435
    .local v1, cachedDevice:Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;
    if-nez v1, :cond_2

    .line 436
    iget-object v5, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;

    iget-object v6, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;

    iget-object v7, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/sec_settings/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v5, v6, v7, v2}, Lcom/android/sec_settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/sec_settings/bluetooth/LocalBluetoothAdapter;Lcom/android/sec_settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 438
    if-eqz v1, :cond_2

    .line 439
    invoke-direct {p0, v1}, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/sec_settings/bluetooth/CachedBluetoothDevice;)V

    .line 440
    const/4 v3, 0x1

    goto :goto_0
.end method

.method registerCallback(Lcom/android/sec_settings/bluetooth/BluetoothCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 112
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 114
    monitor-exit v1

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method registerProfileIntentReceiver()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 108
    return-void
.end method

.method setProfileManager(Lcom/android/sec_settings/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0
    .parameter "manager"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/sec_settings/bluetooth/LocalBluetoothProfileManager;

    .line 72
    return-void
.end method

.method unregisterCallback(Lcom/android/sec_settings/bluetooth/BluetoothCallback;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 119
    iget-object v1, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/android/sec_settings/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 121
    monitor-exit v1

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
