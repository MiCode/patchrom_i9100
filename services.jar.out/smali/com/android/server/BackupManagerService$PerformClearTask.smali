.class Lcom/android/server/BackupManagerService$PerformClearTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformClearTask"
.end annotation


# instance fields
.field mPackage:Landroid/content/pm/PackageInfo;

.field mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V
    .locals 0
    .parameter
    .parameter "transport"
    .parameter "packageInfo"

    .prologue
    .line 4854
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4855
    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 4856
    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    .line 4857
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 4862
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4863
    .local v1, stateDir:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4864
    .local v2, stateFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 4868
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-interface {v3, v4}, Lcom/android/internal/backup/IBackupTransport;->clearBackupData(Landroid/content/pm/PackageInfo;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4876
    :try_start_1
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 4882
    :goto_0
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .end local v1           #stateDir:Ljava/io/File;
    .end local v2           #stateFile:Ljava/io/File;
    :goto_1
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4884
    return-void

    .line 4871
    :catch_0
    move-exception v0

    .line 4872
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transport threw attempting to clear data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4876
    :try_start_3
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 4882
    :goto_2
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    .line 4874
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 4876
    :try_start_4
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    .line 4882
    :goto_3
    iget-object v4, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v4, v4, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4874
    throw v3

    .line 4869
    :catch_1
    move-exception v3

    .line 4876
    :try_start_5
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    .line 4882
    :goto_4
    iget-object v3, p0, Lcom/android/server/BackupManagerService$PerformClearTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v3, v3, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    .line 4877
    .restart local v1       #stateDir:Ljava/io/File;
    .restart local v2       #stateFile:Ljava/io/File;
    :catch_2
    move-exception v3

    goto :goto_0

    .end local v1           #stateDir:Ljava/io/File;
    .end local v2           #stateFile:Ljava/io/File;
    .restart local v0       #e:Ljava/lang/Exception;
    :catch_3
    move-exception v3

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v4

    goto :goto_3

    :catch_5
    move-exception v3

    goto :goto_4
.end method
