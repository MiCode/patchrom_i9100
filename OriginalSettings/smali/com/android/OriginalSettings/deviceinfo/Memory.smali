.class public Lcom/android/OriginalSettings/deviceinfo/Memory;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "Memory.java"


# instance fields
.field private mClickedMountPoint:Ljava/lang/String;

.field private mInternalStorageVolumePreferenceCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

.field private mLastClickedMountToggle:Landroid/preference/Preference;

.field private final mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mResources:Landroid/content/res/Resources;

.field mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 72
    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 150
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/Memory$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/Memory$1;-><init>(Lcom/android/OriginalSettings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 250
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/Memory$2;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/deviceinfo/Memory$2;-><init>(Lcom/android/OriginalSettings/deviceinfo/Memory;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/deviceinfo/Memory;)[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/deviceinfo/Memory;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->doUnmount()V

    return-void
.end method

.method private doUnmount()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 285
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b0399

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 286
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 288
    .local v1, mountService:Landroid/os/storage/IMountService;
    :try_start_0
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 289
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b039a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 290
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0b039b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 291
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mClickedMountPoint:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/OriginalSettings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 212
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 213
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 214
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;

    .line 219
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMountService:Landroid/os/storage/IMountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 216
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    :try_start_1
    const-string v1, "MemorySettings"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 211
    .end local v0           #service:Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private hasAppsAccessingStorage()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 304
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 305
    .local v0, mountService:Landroid/os/storage/IMountService;
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/os/storage/IMountService;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v1

    .line 306
    .local v1, stUsers:[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 320
    :cond_0
    return v3
.end method

.method private mount()V
    .locals 3

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    .line 342
    .local v0, mountService:Landroid/os/storage/IMountService;
    if-eqz v0, :cond_0

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mClickedMountPoint:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    .line 350
    :goto_0
    return-void

    .line 345
    :cond_0
    const-string v1, "MemorySettings"

    const-string v2, "Mount service is null, can\'t mount"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 347
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showDialogInner(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Memory;->removeDialog(I)V

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/Memory;->showDialog(I)V

    .line 301
    return-void
.end method

.method private unmount()V
    .locals 3

    .prologue
    .line 326
    :try_start_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->hasAppsAccessingStorage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/Memory;->showDialogInner(I)V

    .line 337
    :goto_0
    return-void

    .line 330
    :cond_0
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->doUnmount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    :catch_0
    move-exception v0

    .line 334
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "MemorySettings"

    const-string v2, "Is MountService running?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/Memory;->showDialogInner(I)V

    goto :goto_0
.end method


# virtual methods
.method public getStorageVolumeLengh()I
    .locals 10

    .prologue
    .line 354
    iget-object v7, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 356
    .local v5, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v1, v5

    .line 357
    .local v1, length:I
    const-string v7, "MemorySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "storageVolumes.length :  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    array-length v2, v5

    .line 360
    .local v2, mountVolume:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 361
    aget-object v4, v5, v0

    .line 362
    .local v4, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v6

    .line 363
    .local v6, subsystem:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 364
    .local v3, state:Ljava/lang/String;
    if-eqz v6, :cond_1

    const-string v7, "usb"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "shared"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 365
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 360
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 367
    :cond_1
    const-string v7, "MemorySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "volume["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] is mounted, state : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 370
    .end local v3           #state:Ljava/lang/String;
    .end local v4           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v6           #subsystem:Ljava/lang/String;
    :cond_2
    const-string v7, "MemorySettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mountVolume :  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 82
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 83
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 86
    :cond_0
    const v0, 0x7f05000c

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->addPreferencesFromResource(I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    .line 90
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 93
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/os/storage/StorageVolume;Landroid/os/storage/StorageManager;Z)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 95
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 96
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v9

    .line 101
    .local v9, storageVolumes:[Landroid/os/storage/StorageVolume;
    array-length v0, v9

    if-lez v0, :cond_2

    const/4 v0, 0x0

    aget-object v0, v9, v0

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x1

    .line 103
    .local v8, massStorageEnabled:Z
    :goto_0
    array-length v7, v9

    .line 105
    .local v7, length:I
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getStorageVolumeLengh()I

    move-result v7

    .line 107
    new-array v0, v7, [Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    .line 108
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v7, :cond_4

    .line 109
    aget-object v3, v9, v6

    .line 110
    .local v3, storageVolume:Landroid/os/storage/StorageVolume;
    if-nez v6, :cond_3

    const/4 v5, 0x1

    .line 111
    .local v5, isPrimary:Z
    :goto_2
    iget-object v10, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;-><init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/os/storage/StorageVolume;Landroid/os/storage/StorageManager;Z)V

    aput-object v0, v10, v6

    .line 113
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 114
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->init()V

    .line 108
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 101
    .end local v3           #storageVolume:Landroid/os/storage/StorageVolume;
    .end local v5           #isPrimary:Z
    .end local v6           #i:I
    .end local v7           #length:I
    .end local v8           #massStorageEnabled:Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 110
    .restart local v3       #storageVolume:Landroid/os/storage/StorageVolume;
    .restart local v6       #i:I
    .restart local v7       #length:I
    .restart local v8       #massStorageEnabled:Z
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 118
    .end local v3           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_4
    if-nez v8, :cond_5

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->setHasOptionsMenu(Z)V

    .line 119
    return-void

    .line 118
    :cond_5
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    const v3, 0x7f0b0485

    const/4 v0, 0x0

    .line 262
    packed-switch p1, :pswitch_data_0

    .line 280
    :goto_0
    return-object v0

    .line 264
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0395

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/OriginalSettings/deviceinfo/Memory$3;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/deviceinfo/Memory$3;-><init>(Lcom/android/OriginalSettings/deviceinfo/Memory;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0175

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0396

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 274
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0397

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0398

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 187
    const/4 v0, 0x1

    const v1, 0x7f0b039c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 190
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 182
    :cond_0
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onDestroy()V

    .line 183
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 207
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 196
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lmiui/preference/BasePreferenceActivity;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lmiui/preference/BasePreferenceActivity;

    const-class v1, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b039d

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lmiui/preference/BasePreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 205
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 203
    :cond_0
    const-class v0, Lcom/android/OriginalSettings/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/OriginalSettings/deviceinfo/Memory;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 167
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 168
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 169
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    if-eqz v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v1}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    .line 172
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->onPause()V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    .line 224
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    array-length v6, v6

    if-ge v0, v6, :cond_4

    .line 225
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    aget-object v4, v6, v0

    .line 226
    .local v4, svpc:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    invoke-virtual {v4, p2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->intentForClick(Landroid/preference/Preference;)Landroid/content/Intent;

    move-result-object v1

    .line 227
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/deviceinfo/Memory;->startActivity(Landroid/content/Intent;)V

    .line 247
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #svpc:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    :goto_1
    return v5

    .line 232
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v4       #svpc:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_0
    invoke-virtual {v4, p2}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->mountToggleClicked(Landroid/preference/Preference;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 233
    iput-object p2, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    .line 234
    invoke-virtual {v4}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->getStorageVolume()Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 235
    .local v3, storageVolume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mClickedMountPoint:Ljava/lang/String;

    .line 236
    iget-object v6, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, state:Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "mounted_ro"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 239
    :cond_1
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->unmount()V

    goto :goto_1

    .line 241
    :cond_2
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->mount()V

    goto :goto_1

    .line 224
    .end local v2           #state:Ljava/lang/String;
    .end local v3           #storageVolume:Landroid/os/storage/StorageVolume;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 247
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #svpc:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 123
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 124
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 125
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mMediaScannerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 129
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    if-eqz v4, :cond_0

    .line 130
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mInternalStorageVolumePreferenceCategory:Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v4}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    .line 132
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 133
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mStorageVolumePreferenceCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->onResume()V

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_1
    const-string v4, "enterprise_policy"

    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/deviceinfo/Memory;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 138
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 140
    .local v3, rp:Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isSdCardEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 141
    const-string v4, "MemorySettings"

    const-string v5, "Sd-Card Disabled!!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    if-eqz v4, :cond_2

    .line 143
    iget-object v4, p0, Lcom/android/OriginalSettings/deviceinfo/Memory;->mLastClickedMountToggle:Landroid/preference/Preference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 148
    .end local v3           #rp:Landroid/app/enterprise/RestrictionPolicy;
    :cond_2
    return-void
.end method
