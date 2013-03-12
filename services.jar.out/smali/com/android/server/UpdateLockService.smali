.class public Lcom/android/server/UpdateLockService;
.super Landroid/os/IUpdateLock$Stub;
.source "UpdateLockService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/UpdateLockService$LockWatcher;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final PERMISSION:Ljava/lang/String; = "android.permission.UPDATE_LOCK"

.field static final TAG:Ljava/lang/String; = "UpdateLockService"


# instance fields
.field mContext:Landroid/content/Context;

.field mLocks:Lcom/android/server/UpdateLockService$LockWatcher;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/os/IUpdateLock$Stub;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/server/UpdateLockService;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/android/server/UpdateLockService$LockWatcher;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-string v2, "UpdateLocks"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/UpdateLockService$LockWatcher;-><init>(Lcom/android/server/UpdateLockService;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/UpdateLockService;->mLocks:Lcom/android/server/UpdateLockService$LockWatcher;

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/UpdateLockService;->sendLockChangedBroadcast(Z)V

    .line 71
    return-void
.end method

.method private makeTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tag"

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acquireUpdateLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 3
    .parameter "token"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/server/UpdateLockService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_LOCK"

    const-string v2, "acquireUpdateLock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/android/server/UpdateLockService;->mLocks:Lcom/android/server/UpdateLockService$LockWatcher;

    invoke-direct {p0, p2}, Lcom/android/server/UpdateLockService;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/UpdateLockService$LockWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/UpdateLockService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump update lock service from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/server/UpdateLockService;->mLocks:Lcom/android/server/UpdateLockService$LockWatcher;

    invoke-virtual {v0, p2}, Lcom/android/server/UpdateLockService$LockWatcher;->dump(Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method public releaseUpdateLock(Landroid/os/IBinder;)V
    .locals 3
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/UpdateLockService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_LOCK"

    const-string v2, "releaseUpdateLock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/server/UpdateLockService;->mLocks:Lcom/android/server/UpdateLockService$LockWatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/UpdateLockService$LockWatcher;->release(Landroid/os/IBinder;)V

    .line 105
    return-void
.end method

.method sendLockChangedBroadcast(Z)V
    .locals 7
    .parameter "state"

    .prologue
    .line 75
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 77
    .local v1, oldIdent:J
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.os.UpdateLock.UPDATE_LOCK_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "nowisconvenient"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x800

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 81
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/UpdateLockService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 85
    return-void

    .line 83
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
