.class public Lcom/android/internal/os/storage/UsbStorageUnmountter;
.super Landroid/app/Service;
.source "UsbStorageUnmountter.java"


# static fields
.field public static final COMPONENT_NAME:Landroid/content/ComponentName; = null

.field static final TAG:Ljava/lang/String; = "UsbStorageUnmountter"

.field public static final USB_STORAGE_UNMOUNT:Ljava/lang/String; = "com.android.internal.os.storage.USB_STORAGE_UNMOUNT"


# instance fields
.field private mMountService:Landroid/os/storage/IMountService;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStorageVolumes:[Landroid/os/storage/StorageVolume;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/internal/os/storage/UsbStorageUnmountter;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/os/storage/UsbStorageUnmountter;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/android/internal/os/storage/UsbStorageUnmountter;->mMountService:Landroid/os/storage/IMountService;

    .line 33
    iput-object v0, p0, Lcom/android/internal/os/storage/UsbStorageUnmountter;->mStorageManager:Landroid/os/storage/StorageManager;

    return-void
.end method

.method private isSDCard(Ljava/lang/String;)Z
    .locals 4
    .parameter "path"

    .prologue
    .line 113
    iget-object v2, p0, Lcom/android/internal/os/storage/UsbStorageUnmountter;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v1, v2

    .line 114
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 115
    iget-object v2, p0, Lcom/android/internal/os/storage/UsbStorageUnmountter;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/storage/UsbStorageUnmountter;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/storage/UsbStorageUnmountter;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sd"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    const/4 v2, 0x1

    .line 121
    :goto_1
    return v2

    .line 114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private unmountUsbStorages()V
    .locals 8

    .prologue
    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/os/storage/UsbStorageUnmountter;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    .line 44
    .local v3, mountService:Landroid/os/storage/IMountService;
    iget-object v5, p0, Lcom/android/internal/os/storage/UsbStorageUnmountter;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v2, v5

    .line 45
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 46
    iget-object v5, p0, Lcom/android/internal/os/storage/UsbStorageUnmountter;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v5

    const-string v6, "usb"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 47
    iget-object v5, p0, Lcom/android/internal/os/storage/UsbStorageUnmountter;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v6, p0, Lcom/android/internal/os/storage/UsbStorageUnmountter;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, status:Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "mounted_ro"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 51
    :cond_0
    iget-object v5, p0, Lcom/android/internal/os/storage/UsbStorageUnmountter;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v3, v5, v6, v7}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v4           #status:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #mountService:Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "UsbStorageUnmountter"

    const-string v6, "Failed to unmount"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    return-void
.end method


# virtual methods
.method getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 101
    iget-object v1, p0, Lcom/android/internal/os/storage/UsbStorageUnmountter;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 102
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 103
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 104
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/storage/UsbStorageUnmountter;->mMountService:Landroid/os/storage/IMountService;

    .line 109
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/storage/UsbStorageUnmountter;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 106
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    const-string v1, "UsbStorageUnmountter"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 65
    const-string v0, "UsbStorageUnmountter"

    const-string v1, "onCreate!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/internal/os/storage/UsbStorageUnmountter;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 68
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/UsbStorageUnmountter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/internal/os/storage/UsbStorageUnmountter;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 69
    iget-object v0, p0, Lcom/android/internal/os/storage/UsbStorageUnmountter;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/UsbStorageUnmountter;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 72
    :cond_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/internal/os/storage/UsbStorageUnmountter;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "UsbStorageUnmountter"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/storage/UsbStorageUnmountter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 74
    iget-object v0, p0, Lcom/android/internal/os/storage/UsbStorageUnmountter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 75
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 90
    const-string v0, "UsbStorageUnmountter"

    const-string v1, "onDestroy!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/internal/os/storage/UsbStorageUnmountter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 92
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 93
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 79
    if-eqz p1, :cond_0

    .line 80
    const-string v0, "UsbStorageUnmountter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand :: intent is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/os/storage/UsbStorageUnmountter;->unmountUsbStorages()V

    .line 85
    const/4 v0, 0x3

    return v0

    .line 82
    :cond_0
    const-string v0, "UsbStorageUnmountter"

    const-string v1, "onStartCommand :: intent have null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
