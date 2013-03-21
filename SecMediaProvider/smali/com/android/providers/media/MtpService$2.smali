.class Lcom/android/providers/media/MtpService$2;
.super Landroid/os/storage/StorageEventListener;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MtpService;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MtpService;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/providers/media/MtpService$2;->this$0:Lcom/android/providers/media/MtpService;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/providers/media/MtpService$2;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mBinder:Lcom/android/providers/media/IMtpService$Stub;
    invoke-static {v1}, Lcom/android/providers/media/MtpService;->access$000(Lcom/android/providers/media/MtpService;)Lcom/android/providers/media/IMtpService$Stub;

    move-result-object v2

    monitor-enter v2

    .line 85
    :try_start_0
    const-string v1, "MtpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStorageStateChanged "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v1, "mounted"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/android/providers/media/MtpService$2;->this$0:Lcom/android/providers/media/MtpService;

    #calls: Lcom/android/providers/media/MtpService;->volumeMountedLocked(Ljava/lang/String;)V
    invoke-static {v1, p1}, Lcom/android/providers/media/MtpService;->access$300(Lcom/android/providers/media/MtpService;Ljava/lang/String;)V

    .line 94
    :cond_0
    :goto_0
    monitor-exit v2

    .line 95
    return-void

    .line 88
    :cond_1
    const-string v1, "mounted"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/providers/media/MtpService$2;->this$0:Lcom/android/providers/media/MtpService;

    #getter for: Lcom/android/providers/media/MtpService;->mVolumeMap:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/providers/media/MtpService;->access$400(Lcom/android/providers/media/MtpService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    .line 90
    .local v0, volume:Landroid/os/storage/StorageVolume;
    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lcom/android/providers/media/MtpService$2;->this$0:Lcom/android/providers/media/MtpService;

    #calls: Lcom/android/providers/media/MtpService;->removeStorageLocked(Landroid/os/storage/StorageVolume;)V
    invoke-static {v1, v0}, Lcom/android/providers/media/MtpService;->access$500(Lcom/android/providers/media/MtpService;Landroid/os/storage/StorageVolume;)V

    goto :goto_0

    .line 94
    .end local v0           #volume:Landroid/os/storage/StorageVolume;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
