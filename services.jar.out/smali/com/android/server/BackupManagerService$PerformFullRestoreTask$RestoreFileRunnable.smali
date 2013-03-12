.class Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService$PerformFullRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreFileRunnable"
.end annotation


# instance fields
.field mAgent:Landroid/app/IBackupAgent;

.field mInfo:Lcom/android/server/BackupManagerService$FileMetadata;

.field mSocket:Landroid/os/ParcelFileDescriptor;

.field mToken:I

.field final synthetic this$1:Lcom/android/server/BackupManagerService$PerformFullRestoreTask;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService$PerformFullRestoreTask;Landroid/app/IBackupAgent;Lcom/android/server/BackupManagerService$FileMetadata;Landroid/os/ParcelFileDescriptor;I)V
    .locals 1
    .parameter
    .parameter "agent"
    .parameter "info"
    .parameter "socket"
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3066
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;->this$1:Lcom/android/server/BackupManagerService$PerformFullRestoreTask;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3067
    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;->mAgent:Landroid/app/IBackupAgent;

    .line 3068
    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;->mInfo:Lcom/android/server/BackupManagerService$FileMetadata;

    .line 3069
    iput p5, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;->mToken:I

    .line 3076
    invoke-virtual {p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;->mSocket:Landroid/os/ParcelFileDescriptor;

    .line 3077
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 3082
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;->mAgent:Landroid/app/IBackupAgent;

    iget-object v1, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;->mSocket:Landroid/os/ParcelFileDescriptor;

    iget-object v2, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;->mInfo:Lcom/android/server/BackupManagerService$FileMetadata;

    iget-wide v2, v2, Lcom/android/server/BackupManagerService$FileMetadata;->size:J

    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;->mInfo:Lcom/android/server/BackupManagerService$FileMetadata;

    iget v4, v4, Lcom/android/server/BackupManagerService$FileMetadata;->type:I

    iget-object v5, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;->mInfo:Lcom/android/server/BackupManagerService$FileMetadata;

    iget-object v5, v5, Lcom/android/server/BackupManagerService$FileMetadata;->domain:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;->mInfo:Lcom/android/server/BackupManagerService$FileMetadata;

    iget-object v6, v6, Lcom/android/server/BackupManagerService$FileMetadata;->path:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;->mInfo:Lcom/android/server/BackupManagerService$FileMetadata;

    iget-wide v7, v7, Lcom/android/server/BackupManagerService$FileMetadata;->mode:J

    iget-object v9, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;->mInfo:Lcom/android/server/BackupManagerService$FileMetadata;

    iget-wide v9, v9, Lcom/android/server/BackupManagerService$FileMetadata;->mtime:J

    iget v11, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;->mToken:I

    iget-object v12, p0, Lcom/android/server/BackupManagerService$PerformFullRestoreTask$RestoreFileRunnable;->this$1:Lcom/android/server/BackupManagerService$PerformFullRestoreTask;

    iget-object v12, v12, Lcom/android/server/BackupManagerService$PerformFullRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v12, v12, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    invoke-interface/range {v0 .. v12}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3088
    :goto_0
    return-void

    .line 3085
    :catch_0
    move-exception v0

    goto :goto_0
.end method
