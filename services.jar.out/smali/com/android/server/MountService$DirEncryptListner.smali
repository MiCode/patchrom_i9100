.class Lcom/android/server/MountService$DirEncryptListner;
.super Landroid/os/storage/IDirEncryptServiceListener$Stub;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirEncryptListner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    .line 3621
    iput-object p1, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/os/storage/IDirEncryptServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7
    .parameter "path"
    .parameter "operation"
    .parameter "status"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 3629
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEncryptionStatusChanged: operation = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3630
    iget-object v2, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    iget-object v2, v2, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "done"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3633
    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v2}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v2

    const-string v3, "volume"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "mount"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    const-string v6, "moveMount"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_0
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3657
    :cond_0
    :goto_0
    return-void

    .line 3634
    :catch_0
    move-exception v1

    .line 3635
    .local v1, e:Lcom/android/server/NativeDaemonConnectorException;
    const-string v2, "MountService"

    const-string v3, "Failed to excute moveMount"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3638
    .end local v1           #e:Lcom/android/server/NativeDaemonConnectorException;
    :cond_1
    iget-object v2, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    iget-object v2, v2, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "batch_fail"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "batch_no_fs"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3641
    :cond_2
    iget-object v2, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    const-string v3, "nofs"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, p1, v3}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 3642
    const-string v0, "android.intent.action.MEDIA_NOFS"

    .line 3644
    .local v0, action:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v0, p1}, Lcom/android/server/MountService;->access$3900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3646
    .end local v0           #action:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    iget-object v2, v2, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "batch_done"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3649
    iget-object v2, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    const-string v3, "decrypt"

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v2, p1, v3}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3651
    :cond_4
    iget-object v2, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    iget-object v2, v2, Lcom/android/server/MountService;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v2}, Landroid/dirEncryption/DirEncryptionManager;->getExternalSdPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "batch_start"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3654
    iget-object v2, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    const-string v3, "crypto"

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v2, v3, p1, v5, v6}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 3655
    iget-object v2, p0, Lcom/android/server/MountService$DirEncryptListner;->this$0:Lcom/android/server/MountService;

    const-string v3, "crypto"

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v2, v3, p1, v6, v5}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method
