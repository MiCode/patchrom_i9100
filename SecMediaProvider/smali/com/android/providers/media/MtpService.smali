.class public Lcom/android/providers/media/MtpService;
.super Landroid/app/Service;
.source "MtpService.java"


# static fields
.field private static final PTP_DIRECTORIES:[Ljava/lang/String;


# instance fields
.field private final mBinder:Lcom/android/providers/media/IMtpService$Stub;

.field private mDatabase:Landroid/mtp/MtpDatabase;

.field private mMtpDisabled:Z

.field private mPtpMode:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServer:Landroid/mtp/MtpServer;

.field private final mStorageEventListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mVolumeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private mVolumes:[Landroid/os/storage/StorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/media/MtpService;->PTP_DIRECTORIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 66
    new-instance v0, Lcom/android/providers/media/MtpService$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MtpService$1;-><init>(Lcom/android/providers/media/MtpService;)V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    new-instance v0, Lcom/android/providers/media/MtpService$2;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MtpService$2;-><init>(Lcom/android/providers/media/MtpService;)V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mVolumeMap:Ljava/util/HashMap;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;

    .line 179
    new-instance v0, Lcom/android/providers/media/MtpService$3;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MtpService$3;-><init>(Lcom/android/providers/media/MtpService;)V

    iput-object v0, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/providers/media/MtpService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/providers/media/MtpService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/providers/media/MtpService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/providers/media/MtpService;->addStorageDevicesLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/providers/media/MtpService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/providers/media/MtpService;->volumeMountedLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/providers/media/MtpService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mVolumeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/providers/media/MtpService;Landroid/os/storage/StorageVolume;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/providers/media/MtpService;->removeStorageLocked(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/providers/media/MtpService;)Landroid/mtp/MtpServer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    return-object v0
.end method

.method private addStorageDevicesLocked()V
    .locals 5

    .prologue
    .line 56
    iget-boolean v2, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    if-eqz v2, :cond_1

    .line 58
    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mVolumeMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageVolume;

    invoke-direct {p0, v2}, Lcom/android/providers/media/MtpService;->addStorageLocked(Landroid/os/storage/StorageVolume;)V

    .line 64
    :cond_0
    return-void

    .line 60
    :cond_1
    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    .line 61
    .local v1, volume:Landroid/os/storage/StorageVolume;
    invoke-direct {p0, v1}, Lcom/android/providers/media/MtpService;->addStorageLocked(Landroid/os/storage/StorageVolume;)V

    goto :goto_0
.end method

.method private addStorageLocked(Landroid/os/storage/StorageVolume;)V
    .locals 5
    .parameter "volume"

    .prologue
    .line 221
    new-instance v1, Landroid/mtp/MtpStorage;

    invoke-virtual {p0}, Lcom/android/providers/media/MtpService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/mtp/MtpStorage;-><init>(Landroid/os/storage/StorageVolume;Landroid/content/Context;)V

    .line 222
    .local v1, storage:Landroid/mtp/MtpStorage;
    invoke-virtual {v1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, path:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v2, "MtpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStorageLocked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    if-eqz v2, :cond_0

    .line 227
    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-virtual {v2, v1}, Landroid/mtp/MtpDatabase;->addStorage(Landroid/mtp/MtpStorage;)V

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    if-eqz v2, :cond_1

    .line 230
    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v2, v1}, Landroid/mtp/MtpServer;->addStorage(Landroid/mtp/MtpStorage;)V

    .line 232
    :cond_1
    return-void
.end method

.method private removeStorageLocked(Landroid/os/storage/StorageVolume;)V
    .locals 4
    .parameter "volume"

    .prologue
    .line 235
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorage;

    .line 236
    .local v0, storage:Landroid/mtp/MtpStorage;
    if-nez v0, :cond_1

    .line 237
    const-string v1, "MtpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no MtpStorage for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    const-string v1, "MtpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeStorageLocked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    if-eqz v1, :cond_2

    .line 243
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpDatabase;->removeStorage(Landroid/mtp/MtpStorage;)V

    .line 245
    :cond_2
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v1, v0}, Landroid/mtp/MtpServer;->removeStorage(Landroid/mtp/MtpStorage;)V

    goto :goto_0
.end method

.method private volumeMountedLocked(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 205
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 206
    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v1, v2, v0

    .line 207
    .local v1, volume:Landroid/os/storage/StorageVolume;
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 208
    iget-object v2, p0, Lcom/android/providers/media/MtpService;->mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-boolean v2, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    if-nez v2, :cond_1

    .line 211
    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    if-nez v2, :cond_1

    .line 212
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/providers/media/MtpService;->addStorageLocked(Landroid/os/storage/StorageVolume;)V

    .line 218
    .end local v1           #volume:Landroid/os/storage/StorageVolume;
    :cond_1
    return-void

    .line 205
    .restart local v1       #volume:Landroid/os/storage/StorageVolume;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    .line 110
    const-string v5, "keyguard"

    invoke-virtual {p0, v5}, Lcom/android/providers/media/MtpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 112
    .local v1, keyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    .line 113
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.USER_PRESENT"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Lcom/android/providers/media/MtpService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    const-string v5, "storage"

    invoke-virtual {p0, v5}, Lcom/android/providers/media/MtpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    iput-object v5, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 116
    iget-object v6, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    monitor-enter v6

    .line 117
    :try_start_0
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v7, p0, Lcom/android/providers/media/MtpService;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v5, v7}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 118
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 119
    .local v4, volumes:[Landroid/os/storage/StorageVolume;
    iput-object v4, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    .line 120
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 121
    aget-object v5, v4, v0

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, path:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v5, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, state:Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 124
    invoke-direct {p0, v2}, Lcom/android/providers/media/MtpService;->volumeMountedLocked(Ljava/lang/String;)V

    .line 120
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 112
    .end local v0           #i:I
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #state:Ljava/lang/String;
    .end local v4           #volumes:[Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 127
    .restart local v0       #i:I
    .restart local v4       #volumes:[Landroid/os/storage/StorageVolume;
    :cond_2
    monitor-exit v6

    .line 128
    return-void

    .line 127
    .end local v0           #i:I
    .end local v4           #volumes:[Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/providers/media/MtpService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    iget-object v0, p0, Lcom/android/providers/media/MtpService;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/providers/media/MtpService;->mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 177
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 12
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    .line 133
    const/4 v4, 0x0

    .line 134
    .local v4, restrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;
    const-string v7, "enterprise_policy"

    invoke-virtual {p0, v7}, Lcom/android/providers/media/MtpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 135
    .local v1, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    .line 138
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4, v11}, Landroid/app/enterprise/RestrictionPolicy;->isUsbMediaPlayerAvailable(Z)Z

    move-result v7

    if-nez v7, :cond_1

    .line 169
    :goto_0
    return v11

    .line 142
    :cond_1
    iget-object v7, p0, Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;

    monitor-enter v7

    .line 143
    :try_start_0
    iget-object v8, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    if-nez v8, :cond_6

    .line 144
    if-nez p1, :cond_2

    :goto_1
    iput-boolean v6, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    .line 146
    const-string v8, "MtpService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "starting MTP server in "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v6, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    if-eqz v6, :cond_3

    const-string v6, "PTP mode"

    :goto_2
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v5, 0x0

    .line 148
    .local v5, subdirs:[Ljava/lang/String;
    iget-boolean v6, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    if-eqz v6, :cond_4

    .line 149
    sget-object v6, Lcom/android/providers/media/MtpService;->PTP_DIRECTORIES:[Ljava/lang/String;

    array-length v0, v6

    .line 150
    .local v0, count:I
    new-array v5, v0, [Ljava/lang/String;

    .line 151
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    if-ge v3, v0, :cond_4

    .line 152
    sget-object v6, Lcom/android/providers/media/MtpService;->PTP_DIRECTORIES:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-static {v6}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 155
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 156
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 144
    .end local v0           #count:I
    .end local v2           #file:Ljava/io/File;
    .end local v3           #i:I
    .end local v5           #subdirs:[Ljava/lang/String;
    :cond_2
    const-string v6, "ptp"

    const/4 v8, 0x0

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    goto :goto_1

    .line 146
    :cond_3
    const-string v6, "MTP mode"

    goto :goto_2

    .line 159
    .restart local v5       #subdirs:[Ljava/lang/String;
    :cond_4
    new-instance v6, Landroid/mtp/MtpDatabase;

    const-string v8, "external"

    iget-object v9, p0, Lcom/android/providers/media/MtpService;->mVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, p0, v8, v9, v5}, Landroid/mtp/MtpDatabase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    .line 161
    new-instance v6, Landroid/mtp/MtpServer;

    iget-object v8, p0, Lcom/android/providers/media/MtpService;->mDatabase:Landroid/mtp/MtpDatabase;

    iget-boolean v9, p0, Lcom/android/providers/media/MtpService;->mPtpMode:Z

    invoke-direct {v6, v8, v9}, Landroid/mtp/MtpServer;-><init>(Landroid/mtp/MtpDatabase;Z)V

    iput-object v6, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    .line 162
    iget-boolean v6, p0, Lcom/android/providers/media/MtpService;->mMtpDisabled:Z

    if-nez v6, :cond_5

    .line 163
    invoke-direct {p0}, Lcom/android/providers/media/MtpService;->addStorageDevicesLocked()V

    .line 165
    :cond_5
    iget-object v6, p0, Lcom/android/providers/media/MtpService;->mServer:Landroid/mtp/MtpServer;

    invoke-virtual {v6}, Landroid/mtp/MtpServer;->start()V

    .line 167
    .end local v5           #subdirs:[Ljava/lang/String;
    :cond_6
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method
