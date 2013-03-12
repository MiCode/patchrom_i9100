.class public Lcom/android/server/SamplingProfilerService;
.super Landroid/os/Binder;
.source "SamplingProfilerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SamplingProfilerService$SamplingProfilerSettingsObserver;
    }
.end annotation


# static fields
.field private static final LOCAL_LOGV:Z = false

.field public static final SNAPSHOT_DIR:Ljava/lang/String; = "/data/snapshots"

.field private static final TAG:Ljava/lang/String; = "SamplingProfilerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private snapshotObserver:Landroid/os/FileObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/SamplingProfilerService;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/SamplingProfilerService;->registerSettingObserver(Landroid/content/Context;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/android/server/SamplingProfilerService;->startWorking(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SamplingProfilerService;Ljava/io/File;Landroid/os/DropBoxManager;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/server/SamplingProfilerService;->handleSnapshotFile(Ljava/io/File;Landroid/os/DropBoxManager;)V

    return-void
.end method

.method private handleSnapshotFile(Ljava/io/File;Landroid/os/DropBoxManager;)V
    .locals 4
    .parameter "file"
    .parameter "dropbox"

    .prologue
    .line 81
    :try_start_0
    const-string v1, "SamplingProfilerService"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, p1, v2}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 88
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    const-string v1, "SamplingProfilerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t add "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to dropbox"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    throw v1
.end method

.method private registerSettingObserver(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v1, "sampling_profiler_ms"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/SamplingProfilerService$SamplingProfilerSettingsObserver;

    invoke-direct {v3, p0, v0}, Lcom/android/server/SamplingProfilerService$SamplingProfilerSettingsObserver;-><init>(Lcom/android/server/SamplingProfilerService;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 95
    return-void
.end method

.method private startWorking(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 54
    const-string v3, "dropbox"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    .line 59
    .local v0, dropbox:Landroid/os/DropBoxManager;
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/snapshots"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 60
    .local v2, snapshotFiles:[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eqz v2, :cond_0

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 61
    aget-object v3, v2, v1

    invoke-direct {p0, v3, v0}, Lcom/android/server/SamplingProfilerService;->handleSnapshotFile(Ljava/io/File;Landroid/os/DropBoxManager;)V

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :cond_0
    new-instance v3, Lcom/android/server/SamplingProfilerService$1;

    const-string v4, "/data/snapshots"

    const/4 v5, 0x4

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/android/server/SamplingProfilerService$1;-><init>(Lcom/android/server/SamplingProfilerService;Ljava/lang/String;ILandroid/os/DropBoxManager;)V

    iput-object v3, p0, Lcom/android/server/SamplingProfilerService;->snapshotObserver:Landroid/os/FileObserver;

    .line 74
    iget-object v3, p0, Lcom/android/server/SamplingProfilerService;->snapshotObserver:Landroid/os/FileObserver;

    invoke-virtual {v3}, Landroid/os/FileObserver;->startWatching()V

    .line 77
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/SamplingProfilerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "SamplingProfilerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "SamplingProfilerService:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 102
    const-string v0, "Watching directory: /data/snapshots"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    return-void
.end method
