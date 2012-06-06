.class public abstract Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "DeviceListPreferenceFragment.java"

# interfaces
.implements Lcom/android/OriginalSettings/bluetooth/BluetoothCallback;


# static fields
.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private mDeviceListGroup:Landroid/preference/PreferenceGroup;

.field final mDevicePreferenceMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;",
            "Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

.field mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

.field mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field mSelectedDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 72
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    .line 76
    sget-object v0, Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter;->ALL_FILTER:Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 77
    return-void
.end method

.method private onMotionScan()V
    .locals 1

    .prologue
    .line 156
    const-string v0, "motion_recognition"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 157
    new-instance v0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment$1;-><init>(Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 167
    return-void
.end method

.method private updateProgressUi(Z)V
    .locals 1
    .parameter "start"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    instance-of v0, v0, Lcom/android/OriginalSettings/ProgressCategory;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    check-cast v0, Lcom/android/OriginalSettings/ProgressCategory;

    invoke-virtual {v0, p1}, Lcom/android/OriginalSettings/ProgressCategory;->setProgress(Z)V

    .line 238
    :cond_0
    return-void
.end method


# virtual methods
.method addCachedDevices()V
    .locals 4

    .prologue
    .line 147
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDeviceManager;->getCachedDevicesCopy()Ljava/util/Collection;

    move-result-object v1

    .line 149
    .local v1, cachedDevices:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    .line 150
    .local v0, cachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onDeviceAdded(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0

    .line 152
    .end local v0           #cachedDevice:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    :cond_0
    return-void
.end method

.method abstract addPreferencesForActivity()V
.end method

.method createDevicePreference(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter "cachedDevice"

    .prologue
    .line 207
    new-instance v0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;-><init>(Landroid/content/Context;Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;)V

    .line 210
    .local v0, preference:Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->initDevicePreference(Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;)V

    .line 211
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 212
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    return-void
.end method

.method initDevicePreference(Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .parameter "preference"

    .prologue
    .line 221
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 1
    .parameter "bluetoothState"

    .prologue
    .line 241
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 242
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    .line 244
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    .line 92
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 93
    const-string v0, "DeviceListPreferenceFragment"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    .line 98
    invoke-direct {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onMotionScan()V

    .line 100
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->addPreferencesForActivity()V

    .line 102
    const-string v0, "bt_device_list"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    goto :goto_0
.end method

.method public onDeviceAdded(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter "cachedDevice"

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

    invoke-virtual {p1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;->matches(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->createDevicePreference(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;)V

    goto :goto_0
.end method

.method public onDeviceDeleted(Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;)V
    .locals 2
    .parameter "cachedDevice"

    .prologue
    .line 224
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;

    .line 225
    .local v0, preference:Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;
    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    :cond_0
    return-void
.end method

.method onDevicePreferenceClick(Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;)V
    .locals 0
    .parameter "btPreference"

    .prologue
    .line 190
    invoke-virtual {p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->onClicked()V

    .line 191
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 130
    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->removeAllDevices()V

    .line 131
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 132
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/OriginalSettings/bluetooth/BluetoothCallback;)V

    .line 135
    sget-object v0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 138
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 173
    const-string v3, "bt_scan"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    iget-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3, v2}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->startScanning(Z)V

    .line 186
    :goto_0
    return v2

    .line 178
    :cond_0
    instance-of v3, p2, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;

    if-eqz v3, :cond_1

    move-object v0, p2

    .line 179
    check-cast v0, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;

    .line 180
    .local v0, btPreference:Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;
    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;->getCachedDevice()Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 181
    .local v1, device:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    invoke-virtual {v1}, Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iput-object v3, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 182
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->onDevicePreferenceClick(Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;)V

    goto :goto_0

    .line 186
    .end local v0           #btPreference:Lcom/android/OriginalSettings/bluetooth/BluetoothDevicePreference;
    .end local v1           #device:Lcom/android/OriginalSettings/bluetooth/CachedBluetoothDevice;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method

.method public onProfileStateChanged(Lcom/android/OriginalSettings/bluetooth/LocalBluetoothProfile;II)V
    .locals 0
    .parameter "profile"
    .parameter "newState"
    .parameter "oldState"

    .prologue
    .line 248
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 114
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 116
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 117
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalManager:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/OriginalSettings/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/OriginalSettings/bluetooth/BluetoothCallback;)V

    .line 120
    sget-object v0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;I)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    .line 125
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0
    .parameter "started"

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->updateProgressUi(Z)V

    .line 232
    return-void
.end method

.method removeAllDevices()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mLocalAdapter:Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/bluetooth/LocalBluetoothAdapter;->stopScanning()V

    .line 142
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mDevicePreferenceMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 143
    iget-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 144
    return-void
.end method

.method setDeviceListGroup(Landroid/preference/PreferenceGroup;)V
    .locals 0
    .parameter "preferenceGroup"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mDeviceListGroup:Landroid/preference/PreferenceGroup;

    .line 107
    return-void
.end method

.method final setFilter(I)V
    .locals 1
    .parameter "filterType"

    .prologue
    .line 84
    invoke-static {p1}, Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter;->getFilter(I)Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 85
    return-void
.end method

.method final setFilter(Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;)V
    .locals 0
    .parameter "filter"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/OriginalSettings/bluetooth/DeviceListPreferenceFragment;->mFilter:Lcom/android/OriginalSettings/bluetooth/BluetoothDeviceFilter$Filter;

    .line 81
    return-void
.end method
