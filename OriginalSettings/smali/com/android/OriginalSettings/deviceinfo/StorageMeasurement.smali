.class public Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$1;,
        Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$FileInfo;,
        Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;,
        Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    }
.end annotation


# static fields
.field private static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field static final LOGV:Z

.field private static sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/storage/StorageVolume;",
            "Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static sInternalInstance:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;


# instance fields
.field private mAppsSize:J

.field private mAvailSize:J

.field private mDownloadsSize:J

.field mFileInfoForMisc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;

.field private final mIsInternal:Z

.field private final mIsPrimary:Z

.field private mMediaSizes:[J

.field private mMiscSize:J

.field private volatile mReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mTotalSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const-string v0, "StorageMeasurement"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->LOGV:Z

    .line 85
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 90
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V
    .locals 4
    .parameter "context"
    .parameter "storageVolume"
    .parameter "isPrimary"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 114
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    sget-object v1, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mMediaSizes:[J

    .line 115
    iput-object p2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 116
    if-nez p2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mIsInternal:Z

    .line 117
    iget-boolean v1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mIsInternal:Z

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    .line 120
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MemoryMeasurement"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 122
    new-instance v1, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;-><init>(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    .line 123
    return-void

    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    :cond_0
    move v1, v3

    .line 116
    goto :goto_0

    :cond_1
    move v2, v3

    .line 117
    goto :goto_1
.end method

.method static synthetic access$1002(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mAvailSize:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->sendInternalApproximateUpdate()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mMediaSizes:[J

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mDownloadsSize:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mMiscSize:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->measureSizesOfMisc(Lcom/android/internal/app/IMediaContainerService;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->sendExactUpdate()V

    return-void
.end method

.method static synthetic access$300()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mIsInternal:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mAppsSize:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mTotalSize:J

    return-wide p1
.end method

.method private getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J
    .locals 4
    .parameter "imcs"
    .parameter "dir"

    .prologue
    .line 494
    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 497
    :goto_0
    return-wide v1

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "StorageMeasurement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not read memory from default container service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;
    .locals 3
    .parameter "context"
    .parameter "storageVolume"
    .parameter "isPrimary"

    .prologue
    .line 133
    if-nez p1, :cond_1

    .line 134
    sget-object v1, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->sInternalInstance:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;

    if-nez v1, :cond_0

    .line 135
    new-instance v1, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V

    sput-object v1, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->sInternalInstance:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;

    .line 138
    :cond_0
    sget-object v1, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->sInternalInstance:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;

    .line 146
    :goto_0
    return-object v1

    .line 140
    :cond_1
    sget-object v1, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    sget-object v1, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;

    goto :goto_0

    .line 143
    :cond_2
    new-instance v0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V

    .line 145
    .local v0, storageMeasurement:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;
    sget-object v1, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 146
    goto :goto_0
.end method

.method private measureSizesOfMisc(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 20
    .parameter "imcs"

    .prologue
    .line 506
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 507
    .local v19, top:Ljava/io/File;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    .line 508
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v16

    .line 509
    .local v16, files:[Ljava/io/File;
    if-nez v16, :cond_0

    .line 532
    :goto_0
    return-void

    .line 510
    :cond_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v18, v0

    .line 512
    .local v18, len:I
    const-wide/16 v6, 0x0

    .line 513
    .local v6, counter:J
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 514
    aget-object v2, v16, v17

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 515
    .local v3, path:Ljava/lang/String;
    sget-object v2, Lcom/android/OriginalSettings/deviceinfo/StorageVolumePreferenceCategory;->sPathsExcludedForMisc:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 513
    :cond_1
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 518
    :cond_2
    aget-object v2, v16, v17

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 519
    aget-object v2, v16, v17

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 520
    .local v4, fileSize:J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    new-instance v2, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$FileInfo;

    const-wide/16 v12, 0x1

    add-long v14, v6, v12

    .end local v6           #counter:J
    .local v14, counter:J
    invoke-direct/range {v2 .. v7}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mMiscSize:J

    add-long/2addr v8, v4

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mMiscSize:J

    move-wide v6, v14

    .line 522
    .end local v14           #counter:J
    .restart local v6       #counter:J
    goto :goto_2

    .end local v4           #fileSize:J
    :cond_3
    aget-object v2, v16, v17

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 523
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v10

    .line 524
    .local v10, dirSize:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    new-instance v8, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$FileInfo;

    const-wide/16 v12, 0x1

    add-long v14, v6, v12

    .end local v6           #counter:J
    .restart local v14       #counter:J
    move-object v9, v3

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mMiscSize:J

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mMiscSize:J

    move-wide v6, v14

    .end local v14           #counter:J
    .restart local v6       #counter:J
    goto :goto_2

    .line 531
    .end local v3           #path:Ljava/lang/String;
    .end local v10           #dirSize:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method private sendExactUpdate()V
    .locals 5

    .prologue
    .line 186
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v1, v2

    .line 187
    .local v1, receiver:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :goto_0
    if-nez v1, :cond_2

    .line 188
    sget-boolean v2, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->LOGV:Z

    if-eqz v2, :cond_0

    .line 189
    const-string v2, "StorageMeasurement"

    const-string v3, "measurements dropped because receiver is null! wasted effort"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    :goto_1
    return-void

    .line 186
    .end local v1           #receiver:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 194
    .restart local v1       #receiver:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 195
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "total_size"

    iget-wide v3, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mTotalSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 196
    const-string v2, "avail_size"

    iget-wide v3, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mAvailSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 197
    const-string v2, "apps_used"

    iget-wide v3, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mAppsSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 198
    const-string v2, "downloads_size"

    iget-wide v3, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mDownloadsSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 199
    const-string v2, "misc_size"

    iget-wide v3, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mMiscSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 200
    const-string v2, "media_sizes"

    iget-object v3, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mMediaSizes:[J

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 202
    invoke-interface {v1, v0}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateExact(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private sendInternalApproximateUpdate()V
    .locals 5

    .prologue
    .line 173
    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v1, v2

    .line 174
    .local v1, receiver:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :goto_0
    if-nez v1, :cond_1

    .line 183
    :goto_1
    return-void

    .line 173
    .end local v1           #receiver:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 178
    .restart local v1       #receiver:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 179
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "total_size"

    iget-wide v3, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mTotalSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 180
    const-string v2, "avail_size"

    iget-wide v3, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mAvailSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 182
    invoke-interface {v1, v0}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateApproximate(Landroid/os/Bundle;)V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 164
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 165
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 166
    return-void
.end method

.method getMiscSize()J
    .locals 2

    .prologue
    .line 502
    iget-wide v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mMiscSize:J

    return-wide v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 170
    return-void
.end method

.method isExternalSDCard()Z
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mIsInternal:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public measure()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 157
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 160
    :cond_0
    return-void
.end method

.method public setReceiver(Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 154
    :cond_1
    return-void
.end method
