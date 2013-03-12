.class public final Landroid/os/CancellationSignal;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CancellationSignal$1;,
        Landroid/os/CancellationSignal$Transport;,
        Landroid/os/CancellationSignal$OnCancelListener;
    }
.end annotation


# instance fields
.field private mCancelInProgress:Z

.field private mIsCanceled:Z

.field private mOnCancelListener:Landroid/os/CancellationSignal$OnCancelListener;

.field private mRemote:Landroid/os/ICancellationSignal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static createTransport()Landroid/os/ICancellationSignal;
    .locals 2

    .prologue
    .line 174
    new-instance v0, Landroid/os/CancellationSignal$Transport;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/CancellationSignal$Transport;-><init>(Landroid/os/CancellationSignal$1;)V

    return-object v0
.end method

.method public static fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;
    .locals 1
    .parameter "transport"

    .prologue
    .line 186
    instance-of v0, p0, Landroid/os/CancellationSignal$Transport;

    if-eqz v0, :cond_0

    .line 187
    check-cast p0, Landroid/os/CancellationSignal$Transport;

    .end local p0
    iget-object v0, p0, Landroid/os/CancellationSignal$Transport;->mCancellationSignal:Landroid/os/CancellationSignal;

    .line 189
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private waitForCancelFinishedLocked()V
    .locals 1

    .prologue
    .line 157
    :goto_0
    iget-boolean v0, p0, Landroid/os/CancellationSignal;->mCancelInProgress:Z

    if-eqz v0, :cond_0

    .line 159
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    goto :goto_0

    .line 163
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 66
    monitor-enter p0

    .line 67
    :try_start_0
    iget-boolean v2, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v2, :cond_0

    .line 68
    monitor-exit p0

    .line 92
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z

    .line 71
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/os/CancellationSignal;->mCancelInProgress:Z

    .line 72
    iget-object v0, p0, Landroid/os/CancellationSignal;->mOnCancelListener:Landroid/os/CancellationSignal$OnCancelListener;

    .line 73
    .local v0, listener:Landroid/os/CancellationSignal$OnCancelListener;
    iget-object v1, p0, Landroid/os/CancellationSignal;->mRemote:Landroid/os/ICancellationSignal;

    .line 74
    .local v1, remote:Landroid/os/ICancellationSignal;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 77
    if-eqz v0, :cond_1

    .line 78
    :try_start_1
    invoke-interface {v0}, Landroid/os/CancellationSignal$OnCancelListener;->onCancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 80
    :cond_1
    if-eqz v1, :cond_2

    .line 82
    :try_start_2
    invoke-interface {v1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 87
    :cond_2
    :goto_1
    monitor-enter p0

    .line 88
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Landroid/os/CancellationSignal;->mCancelInProgress:Z

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 90
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 74
    .end local v0           #listener:Landroid/os/CancellationSignal$OnCancelListener;
    .end local v1           #remote:Landroid/os/ICancellationSignal;
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2

    .line 87
    .restart local v0       #listener:Landroid/os/CancellationSignal$OnCancelListener;
    .restart local v1       #remote:Landroid/os/ICancellationSignal;
    :catchall_2
    move-exception v2

    monitor-enter p0

    .line 88
    const/4 v3, 0x0

    :try_start_5
    iput-boolean v3, p0, Landroid/os/CancellationSignal;->mCancelInProgress:Z

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 90
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v2

    :catchall_3
    move-exception v2

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2

    .line 83
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 43
    monitor-enter p0

    .line 44
    :try_start_0
    iget-boolean v0, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z

    monitor-exit p0

    return v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    invoke-direct {p0}, Landroid/os/CancellationSignal;->waitForCancelFinishedLocked()V

    .line 114
    iget-object v0, p0, Landroid/os/CancellationSignal;->mOnCancelListener:Landroid/os/CancellationSignal$OnCancelListener;

    if-ne v0, p1, :cond_0

    .line 115
    monitor-exit p0

    .line 123
    :goto_0
    return-void

    .line 117
    :cond_0
    iput-object p1, p0, Landroid/os/CancellationSignal;->mOnCancelListener:Landroid/os/CancellationSignal$OnCancelListener;

    .line 118
    iget-boolean v0, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 119
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    invoke-interface {p1}, Landroid/os/CancellationSignal$OnCancelListener;->onCancel()V

    goto :goto_0
.end method

.method public setRemote(Landroid/os/ICancellationSignal;)V
    .locals 1
    .parameter "remote"

    .prologue
    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    invoke-direct {p0}, Landroid/os/CancellationSignal;->waitForCancelFinishedLocked()V

    .line 142
    iget-object v0, p0, Landroid/os/CancellationSignal;->mRemote:Landroid/os/ICancellationSignal;

    if-ne v0, p1, :cond_0

    .line 143
    monitor-exit p0

    .line 154
    :goto_0
    return-void

    .line 145
    :cond_0
    iput-object p1, p0, Landroid/os/CancellationSignal;->mRemote:Landroid/os/ICancellationSignal;

    .line 146
    iget-boolean v0, p0, Landroid/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 147
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :try_start_2
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 152
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public throwIfCanceled()V
    .locals 1

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Landroid/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/os/OperationCanceledException;-><init>()V

    throw v0

    .line 57
    :cond_0
    return-void
.end method
