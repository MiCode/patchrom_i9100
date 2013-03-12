.class Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EDMBackupRestoreReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/BackupManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 6028
    iput-object p1, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6028
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;-><init>(Lcom/android/server/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, -0x1

    const/4 v11, -0x4

    .line 6030
    const-string v9, "BackupManagerService"

    const-string v10, "onReceive EDM backup / restore action "

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6031
    const-string v9, "edm.intent.action.do.backup"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 6032
    const-string v9, "pkgName"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6034
    .local v4, pkgName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v10, v9, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v10

    .line 6035
    :try_start_0
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v9, v9, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v9, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v9, Lcom/android/server/BackupManagerService;->mActiveRestoreSession:Lcom/android/server/BackupManagerService$ActiveRestoreSession;

    #getter for: Lcom/android/server/BackupManagerService$ActiveRestoreSession;->mPackageName:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/BackupManagerService$ActiveRestoreSession;->access$2400(Lcom/android/server/BackupManagerService$ActiveRestoreSession;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 6038
    :cond_0
    const-string v9, "BackupManagerService"

    const-string v11, "Running a EDM backup pass"

    invoke-static {v9, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6042
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    .line 6043
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v9, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 6045
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v11, 0x1

    iput-boolean v11, v9, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    .line 6046
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iput-object v4, v9, Lcom/android/server/BackupManagerService;->mEdmBackupAppPkgName:Ljava/lang/String;

    .line 6047
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    const-string v11, "adminPkgName"

    invoke-virtual {p2, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/android/server/BackupManagerService;->mAdminPkgName:Ljava/lang/String;

    .line 6048
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v9, Lcom/android/server/BackupManagerService;->mAdminPkgName:Ljava/lang/String;

    if-nez v9, :cond_1

    .line 6049
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    const-string v11, ""

    iput-object v11, v9, Lcom/android/server/BackupManagerService;->mAdminPkgName:Ljava/lang/String;

    .line 6050
    :cond_1
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v9, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Lcom/android/server/BackupManagerService$BackupHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 6051
    .local v3, msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v9, Lcom/android/server/BackupManagerService;->mBackupHandler:Lcom/android/server/BackupManagerService$BackupHandler;

    invoke-virtual {v9, v3}, Lcom/android/server/BackupManagerService$BackupHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6060
    monitor-exit v10

    .line 6116
    .end local v3           #msg:Landroid/os/Message;
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 6053
    .restart local v4       #pkgName:Ljava/lang/String;
    :cond_3
    new-instance v2, Landroid/content/Intent;

    const-string v9, "edm.intent.action.backup.result"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6054
    .local v2, intentResult:Landroid/content/Intent;
    const-string v9, "backupResult"

    const/4 v11, -0x4

    invoke-virtual {v2, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6056
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/BackupManagerService;->access$400(Lcom/android/server/BackupManagerService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6057
    const-string v9, "BackupManagerService"

    const-string v11, "EDM Backup time but one already running"

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6058
    monitor-exit v10

    goto :goto_0

    .line 6060
    .end local v2           #intentResult:Landroid/content/Intent;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 6061
    .end local v4           #pkgName:Ljava/lang/String;
    :cond_4
    const-string v9, "edm.intent.action.do.restore"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 6062
    const-string v9, "BackupManagerService"

    const-string v10, "EDM restore requested , processing now"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6063
    const-string v9, "pkgName"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6065
    .restart local v4       #pkgName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v9, v9, Lcom/android/server/BackupManagerService;->isEdmRestoreRequest:Z

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v9, v9, Lcom/android/server/BackupManagerService;->mBackupRunning:Z

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v9, Lcom/android/server/BackupManagerService;->mPendingBackups:Ljava/util/HashMap;

    invoke-virtual {v9, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 6066
    :cond_5
    const-string v9, "BackupManagerService"

    const-string v10, "ongoing restore request , can\'t procced"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6067
    new-instance v1, Landroid/content/Intent;

    const-string v9, "edm.intent.action.restore.result"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6068
    .local v1, edmIntent:Landroid/content/Intent;
    const-string v9, "restoreResult"

    invoke-virtual {v1, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6070
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/BackupManagerService;->access$400(Lcom/android/server/BackupManagerService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 6073
    .end local v1           #edmIntent:Landroid/content/Intent;
    :cond_6
    const/4 v7, 0x0

    .line 6075
    .local v7, session:Landroid/app/backup/RestoreSession;
    :try_start_1
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iput-object v4, v9, Lcom/android/server/BackupManagerService;->mEdmBackupAppPkgName:Ljava/lang/String;

    .line 6076
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    const-string v10, "adminPkgName"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/server/BackupManagerService;->mAdminPkgName:Ljava/lang/String;

    .line 6077
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v9, Lcom/android/server/BackupManagerService;->mAdminPkgName:Ljava/lang/String;

    if-nez v9, :cond_7

    .line 6078
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    const-string v10, ""

    iput-object v10, v9, Lcom/android/server/BackupManagerService;->mAdminPkgName:Ljava/lang/String;

    .line 6079
    :cond_7
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    const-string v10, "packageAppVersionCode"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, v9, Lcom/android/server/BackupManagerService;->mEdmBackupAppVersionCode:I

    .line 6081
    iget-object v10, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    const-string v9, "packageAppSignature"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, [Landroid/content/pm/Signature;

    check-cast v9, [Landroid/content/pm/Signature;

    iput-object v9, v10, Lcom/android/server/BackupManagerService;->mEdmRestoreAppSignatures:[Landroid/content/pm/Signature;

    .line 6083
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v10, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v10, v10, Lcom/android/server/BackupManagerService;->mEdmBackupAppPkgName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, v11, Lcom/android/server/BackupManagerService;->mEdmTransportName:Landroid/content/ComponentName;

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/BackupManagerService;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v0

    .line 6085
    .local v0, binder:Landroid/app/backup/IRestoreSession;
    if-eqz v0, :cond_8

    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget v9, v9, Lcom/android/server/BackupManagerService;->mEdmBackupAppVersionCode:I

    if-eq v9, v12, :cond_8

    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v9, Lcom/android/server/BackupManagerService;->mEdmRestoreAppSignatures:[Landroid/content/pm/Signature;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v9, Lcom/android/server/BackupManagerService;->mEdmBackupAppPkgName:Ljava/lang/String;

    if-nez v9, :cond_9

    .line 6087
    :cond_8
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v10, -0x3

    #calls: Lcom/android/server/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v9, v10}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6111
    if-eqz v7, :cond_2

    .line 6112
    .end local v0           #binder:Landroid/app/backup/IRestoreSession;
    :goto_1
    invoke-virtual {v7}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    goto/16 :goto_0

    .line 6090
    .restart local v0       #binder:Landroid/app/backup/IRestoreSession;
    :cond_9
    :try_start_2
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/BackupManagerService;->access$400(Lcom/android/server/BackupManagerService;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v0}, Landroid/app/backup/RestoreSession;->createRestoreSession(Landroid/content/Context;Landroid/app/backup/IRestoreSession;)Landroid/app/backup/RestoreSession;

    move-result-object v7

    .line 6091
    new-instance v5, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver$1;

    invoke-direct {v5, p0}, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver$1;-><init>(Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;)V

    .line 6101
    .local v5, restoreObserver:Landroid/app/backup/RestoreObserver;
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v9, v9, Lcom/android/server/BackupManagerService;->mEdmBackupAppPkgName:Ljava/lang/String;

    invoke-virtual {v7, v9, v5}, Landroid/app/backup/RestoreSession;->restorePackage(Ljava/lang/String;Landroid/app/backup/RestoreObserver;)I

    move-result v6

    .line 6102
    .local v6, result:I
    if-eqz v6, :cond_a

    .line 6103
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v10, -0x3

    #calls: Lcom/android/server/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v9, v10}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;I)V

    .line 6111
    if-eqz v7, :cond_2

    goto :goto_1

    .line 6106
    :cond_a
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/server/BackupManagerService;->isEdmRestoreRequest:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 6111
    if-eqz v7, :cond_2

    goto :goto_1

    .line 6107
    .end local v0           #binder:Landroid/app/backup/IRestoreSession;
    .end local v5           #restoreObserver:Landroid/app/backup/RestoreObserver;
    .end local v6           #result:I
    :catch_0
    move-exception v8

    .line 6108
    .local v8, state:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v9, "BackupManagerService"

    const-string v10, "shouldn\'t be here"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6109
    iget-object v9, p0, Lcom/android/server/BackupManagerService$EDMBackupRestoreReceiver;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v10, -0x3

    #calls: Lcom/android/server/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v9, v10}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6111
    if-eqz v7, :cond_2

    goto :goto_1

    .end local v8           #state:Ljava/lang/IllegalStateException;
    :catchall_1
    move-exception v9

    if-eqz v7, :cond_b

    .line 6112
    invoke-virtual {v7}, Landroid/app/backup/RestoreSession;->endRestoreSession()V

    .line 6111
    :cond_b
    throw v9
.end method
