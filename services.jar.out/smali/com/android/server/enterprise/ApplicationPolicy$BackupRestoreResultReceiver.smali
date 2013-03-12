.class Lcom/android/server/enterprise/ApplicationPolicy$BackupRestoreResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupRestoreResultReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ApplicationPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/ApplicationPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 4604
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/ApplicationPolicy;Lcom/android/server/enterprise/ApplicationPolicy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4604
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy$BackupRestoreResultReceiver;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4607
    const-string v0, "ApplicationPolicy"

    const-string v1, "onReceiveResult "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4608
    const-string v0, "edm.intent.action.backup.result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4609
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    iget-object v1, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4610
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    const-string v2, "backupResult"

    const/4 v3, -0x3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/server/enterprise/ApplicationPolicy;->mBackupReturnCode:I
    invoke-static {v0, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->access$1802(Lcom/android/server/enterprise/ApplicationPolicy;I)I

    .line 4612
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mBackupLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 4613
    monitor-exit v1

    .line 4621
    :cond_0
    :goto_0
    return-void

    .line 4613
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4614
    :cond_1
    const-string v0, "edm.intent.action.restore.result"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4615
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    iget-object v1, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4616
    :try_start_1
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    const-string v2, "restoreResult"

    const/4 v3, -0x3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreReturnCode:I
    invoke-static {v0, v2}, Lcom/android/server/enterprise/ApplicationPolicy;->access$1902(Lcom/android/server/enterprise/ApplicationPolicy;I)I

    .line 4618
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$BackupRestoreResultReceiver;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    iget-object v0, v0, Lcom/android/server/enterprise/ApplicationPolicy;->mRestoreLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 4619
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method
