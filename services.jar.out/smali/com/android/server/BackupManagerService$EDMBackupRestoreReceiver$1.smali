.class Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver$1;
.super Landroid/app/backup/RestoreObserver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 6091
    iput-object p1, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver$1;->this$1:Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;

    invoke-direct {p0}, Landroid/app/backup/RestoreObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public restoreFinished(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 6097
    const-string v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EDM Restore finished, error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6099
    return-void
.end method

.method public restoreStarting(I)V
    .locals 2
    .parameter "numPackages"

    .prologue
    .line 6093
    const-string v0, "BackupManagerService"

    const-string v1, "EDM Restore starting..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6094
    return-void
.end method
