.class public Lcom/android/settings/deviceinfo/StorageMeasurement;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/StorageMeasurement$1;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;,
        Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    }
.end annotation


# static fields
.field public static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field static final LOGV:Z

.field private static sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/storage/StorageVolume;",
            "Lcom/android/settings/deviceinfo/StorageMeasurement;",
            ">;"
        }
    .end annotation
.end field

.field private static sInternalInstance:Lcom/android/settings/deviceinfo/StorageMeasurement;


# instance fields
.field private _context:Landroid/content/Context;

.field private mAppsSize:J

.field private mAvailSize:J

.field private mDownloadsSize:J

.field mFileInfoForMisc:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

.field private final mIsInternal:Z

.field private final mIsPrimary:Z

.field private mMediaSizes:[J

.field private mMiscSize:J

.field private volatile mReceiver:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorageVolume:Landroid/os/storage/StorageVolume;

.field private mSystemMemSize:J

.field private mTotalSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const-string v0, "StorageMeasurement"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->LOGV:Z

    .line 89
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    .line 94
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

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

    .line 124
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget-object v1, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sMediaCategories:[Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory$MediaCategory;

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMediaSizes:[J

    .line 125
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;

    .line 126
    if-nez p2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsInternal:Z

    .line 127
    iget-boolean v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsInternal:Z

    if-nez v1, :cond_1

    if-eqz p3, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    .line 129
    iput-object p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->_context:Landroid/content/Context;

    .line 132
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MemoryMeasurement"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 134
    new-instance v1, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;-><init>(Lcom/android/settings/deviceinfo/StorageMeasurement;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    .line 135
    return-void

    .end local v0           #handlerThread:Landroid/os/HandlerThread;
    :cond_0
    move v1, v3

    .line 126
    goto :goto_0

    :cond_1
    move v2, v3

    .line 127
    goto :goto_1
.end method

.method static synthetic access$1000(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/settings/deviceinfo/StorageMeasurement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    return-wide p1
.end method

.method static synthetic access$1202(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mSystemMemSize:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/settings/deviceinfo/StorageMeasurement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->sendInternalApproximateUpdate()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/deviceinfo/StorageMeasurement;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMediaSizes:[J

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mDownloadsSize:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/settings/deviceinfo/StorageMeasurement;Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement;->measureSizesOfMisc(Lcom/android/internal/app/IMediaContainerService;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/StorageMeasurement;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->sendExactUpdate()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/StorageMeasurement;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsInternal:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAppsSize:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/StorageMeasurement;)Landroid/os/storage/StorageVolume;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/StorageMeasurement;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/android/settings/deviceinfo/StorageMeasurement;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    return-wide p1
.end method

.method private getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J
    .locals 4
    .parameter "imcs"
    .parameter "dir"

    .prologue
    .line 560
    :try_start_0
    invoke-interface {p1, p2}, Lcom/android/internal/app/IMediaContainerService;->calculateDirectorySize(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 563
    :goto_0
    return-wide v1

    .line 561
    :catch_0
    move-exception v0

    .line 562
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

    .line 563
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)Lcom/android/settings/deviceinfo/StorageMeasurement;
    .locals 3
    .parameter "context"
    .parameter "storageVolume"
    .parameter "isPrimary"

    .prologue
    .line 145
    if-nez p1, :cond_1

    .line 146
    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInternalInstance:Lcom/android/settings/deviceinfo/StorageMeasurement;

    if-nez v1, :cond_0

    .line 147
    new-instance v1, Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/android/settings/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V

    sput-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInternalInstance:Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 150
    :cond_0
    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInternalInstance:Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 158
    :goto_0
    return-object v1

    .line 152
    :cond_1
    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/deviceinfo/StorageMeasurement;

    goto :goto_0

    .line 155
    :cond_2
    new-instance v0, Lcom/android/settings/deviceinfo/StorageMeasurement;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/settings/deviceinfo/StorageMeasurement;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;Z)V

    .line 157
    .local v0, storageMeasurement:Lcom/android/settings/deviceinfo/StorageMeasurement;
    sget-object v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->sInstances:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 158
    goto :goto_0
.end method

.method private measureSizesOfMisc(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 26
    .parameter "imcs"

    .prologue
    .line 572
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mStorageVolume:Landroid/os/storage/StorageVolume;

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    .local v25, top:Ljava/io/File;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    .line 574
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v21

    .line 575
    .local v21, files:[Ljava/io/File;
    if-nez v21, :cond_1

    .line 620
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v23, v0

    .line 578
    .local v23, len:I
    const-wide/16 v6, 0x0

    .line 579
    .local v6, counter:J
    const/16 v22, 0x0

    .local v22, i:I
    :goto_1
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    .line 580
    aget-object v2, v21, v22

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, path:Ljava/lang/String;
    sget-object v2, Lcom/android/settings/deviceinfo/StorageVolumePreferenceCategory;->sPathsExcludedForMisc:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 579
    :cond_2
    :goto_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 584
    :cond_3
    aget-object v2, v21, v22

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 585
    aget-object v2, v21, v22

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 586
    .local v4, fileSize:J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    new-instance v2, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    const-wide/16 v14, 0x1

    add-long v18, v6, v14

    .end local v6           #counter:J
    .local v18, counter:J
    invoke-direct/range {v2 .. v7}, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    add-long/2addr v8, v4

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    move-wide/from16 v6, v18

    .line 588
    .end local v18           #counter:J
    .restart local v6       #counter:J
    goto :goto_2

    .end local v4           #fileSize:J
    :cond_4
    aget-object v2, v21, v22

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 590
    const-string v2, "/mnt/sdcard/extStorages"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 595
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/settings/deviceinfo/StorageMeasurement;->getDirectorySize(Lcom/android/internal/app/IMediaContainerService;Ljava/lang/String;)J

    move-result-wide v10

    .line 596
    .local v10, dirSize:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    new-instance v8, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    const-wide/16 v14, 0x1

    add-long v18, v6, v14

    .end local v6           #counter:J
    .restart local v18       #counter:J
    move-object v9, v3

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    add-long/2addr v8, v10

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    move-wide/from16 v6, v18

    .end local v18           #counter:J
    .restart local v6       #counter:J
    goto :goto_2

    .line 604
    .end local v3           #path:Ljava/lang/String;
    .end local v10           #dirSize:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 607
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 609
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v24, mTempList:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "/"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 611
    .local v20, externalStorageDirPrefix:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->_context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090d6a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 613
    .local v13, systemMemPath:Ljava/lang/String;
    new-instance v12, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mSystemMemSize:J

    const-wide/16 v8, 0x1

    add-long v18, v6, v8

    .end local v6           #counter:J
    .restart local v18       #counter:J
    move-wide/from16 v16, v6

    invoke-direct/range {v12 .. v17}, Lcom/android/settings/deviceinfo/StorageMeasurement$FileInfo;-><init>(Ljava/lang/String;JJ)V

    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 615
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/StorageMeasurement;->mFileInfoForMisc:Ljava/util/List;

    .line 616
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mSystemMemSize:J

    add-long/2addr v8, v14

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    .line 618
    const-string v2, "StorageMeasurement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "StorageMeasurement - measureSizesOfMisc() is called. mTotalSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / mMiscSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v6, v18

    .end local v18           #counter:J
    .restart local v6       #counter:J
    goto/16 :goto_0
.end method

.method private sendExactUpdate()V
    .locals 5

    .prologue
    .line 198
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v1, v2

    .line 199
    .local v1, receiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :goto_0
    if-nez v1, :cond_2

    .line 200
    sget-boolean v2, Lcom/android/settings/deviceinfo/StorageMeasurement;->LOGV:Z

    if-eqz v2, :cond_0

    .line 201
    const-string v2, "StorageMeasurement"

    const-string v3, "measurements dropped because receiver is null! wasted effort"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    :goto_1
    return-void

    .line 198
    .end local v1           #receiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 206
    .restart local v1       #receiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 207
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "total_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 208
    const-string v2, "avail_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 209
    const-string v2, "apps_used"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAppsSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 210
    const-string v2, "downloads_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mDownloadsSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 211
    const-string v2, "misc_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 212
    const-string v2, "media_sizes"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMediaSizes:[J

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 214
    invoke-interface {v1, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateExact(Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method private sendInternalApproximateUpdate()V
    .locals 5

    .prologue
    .line 185
    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;

    move-object v1, v2

    .line 186
    .local v1, receiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :goto_0
    if-nez v1, :cond_1

    .line 195
    :goto_1
    return-void

    .line 185
    .end local v1           #receiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 190
    .restart local v1       #receiver:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 191
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "total_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mTotalSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 192
    const-string v2, "avail_size"

    iget-wide v3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mAvailSize:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 194
    invoke-interface {v1, v0}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;->updateApproximate(Landroid/os/Bundle;)V

    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 176
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->removeMessages(I)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 178
    return-void
.end method

.method getMiscSize()J
    .locals 2

    .prologue
    .line 568
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mMiscSize:J

    return-wide v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 182
    return-void
.end method

.method isExternalSDCard()Z
    .locals 1

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsPrimary:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mIsInternal:Z

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

    .line 169
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mHandler:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementHandler;->sendEmptyMessage(I)Z

    .line 172
    :cond_0
    return-void
.end method

.method public setReceiver(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V
    .locals 1
    .parameter "receiver"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 164
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement;->mReceiver:Ljava/lang/ref/WeakReference;

    .line 166
    :cond_1
    return-void
.end method
