.class public Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;
.super Landroid/os/CustomFrequencyManager$FrequencyRequest;
.source "CustomFrequencyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/CustomFrequencyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SysBusFrequencyRequest"
.end annotation


# instance fields
.field mSysBusReleaser:Ljava/lang/Runnable;

.field final synthetic this$0:Landroid/os/CustomFrequencyManager;


# direct methods
.method constructor <init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V
    .locals 1
    .parameter
    .parameter "type"
    .parameter "frequency"
    .parameter "timeout"
    .parameter "pkgName"

    .prologue
    .line 166
    iput-object p1, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    .line 167
    invoke-direct/range {p0 .. p6}, Landroid/os/CustomFrequencyManager$FrequencyRequest;-><init>(Landroid/os/CustomFrequencyManager;IIJLjava/lang/String;)V

    .line 160
    new-instance v0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest$1;

    invoke-direct {v0, p0}, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest$1;-><init>(Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;)V

    iput-object v0, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->mSysBusReleaser:Ljava/lang/Runnable;

    .line 168
    return-void
.end method


# virtual methods
.method public cancelFrequencyRequest()V
    .locals 5

    .prologue
    .line 189
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 191
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->mSysBusReleaser:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 192
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/os/ICustomFrequencyManager;->releaseSysBus(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 193
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$202(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 198
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " cancelFrequencyRequest:: RemoteException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public doFrequencyRequest()V
    .locals 7

    .prologue
    .line 171
    iget-object v2, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    monitor-enter v2

    .line 174
    :try_start_0
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mService:Landroid/os/ICustomFrequencyManager;

    iget v3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mFrequency:I

    iget-object v4, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mPkgName:Ljava/lang/String;

    invoke-interface {v1, v3, v4, v5}, Landroid/os/ICustomFrequencyManager;->requestSysBus(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 176
    iget-wide v3, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mTimeoutMs:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    .line 177
    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$202(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    return-void

    .line 179
    :cond_0
    :try_start_2
    iget-object v1, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->this$0:Landroid/os/CustomFrequencyManager;

    iget-object v1, v1, Landroid/os/CustomFrequencyManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/os/CustomFrequencyManager$SysBusFrequencyRequest;->mSysBusReleaser:Ljava/lang/Runnable;

    iget-wide v4, p0, Landroid/os/CustomFrequencyManager$FrequencyRequest;->mTimeoutMs:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 180
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/CustomFrequencyManager;->access$202(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "CustomFrequencyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doFrequencyRequest:: RemoteException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
