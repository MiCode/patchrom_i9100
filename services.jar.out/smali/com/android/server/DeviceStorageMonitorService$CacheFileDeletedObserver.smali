.class public Lcom/android/server/DeviceStorageMonitorService$CacheFileDeletedObserver;
.super Landroid/os/FileObserver;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CacheFileDeletedObserver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 442
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x200

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 443
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 0
    .parameter "event"
    .parameter "path"

    .prologue
    .line 447
    invoke-static {p2}, Lcom/android/server/EventLogTags;->writeCacheFileDeleted(Ljava/lang/String;)V

    .line 448
    return-void
.end method
