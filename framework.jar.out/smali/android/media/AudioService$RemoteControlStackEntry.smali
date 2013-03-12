.class Landroid/media/AudioService$RemoteControlStackEntry;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteControlStackEntry"
.end annotation


# instance fields
.field public mCallingPackageName:Ljava/lang/String;

.field public mCallingUid:I

.field public mMediaIntent:Landroid/app/PendingIntent;

.field public mPlaybackState:I

.field public mPlaybackStream:I

.field public mPlaybackType:I

.field public mPlaybackVolume:I

.field public mPlaybackVolumeHandling:I

.field public mPlaybackVolumeMax:I

.field public mRcClient:Landroid/media/IRemoteControlClient;

.field public mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

.field public mRccId:I

.field public mReceiverComponent:Landroid/content/ComponentName;

.field public mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 1
    .parameter "mediaIntent"
    .parameter "eventReceiver"

    .prologue
    const/4 v0, -0x1

    .line 5405
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5364
    iput v0, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    .line 5406
    iput-object p1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    .line 5407
    iput-object p2, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    .line 5408
    iput v0, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    .line 5409
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 5410
    invoke-static {}, Landroid/media/AudioService;->access$9004()I

    move-result v0

    iput v0, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mRccId:I

    .line 5412
    invoke-virtual {p0}, Landroid/media/AudioService$RemoteControlStackEntry;->resetPlaybackInfo()V

    .line 5413
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 5430
    invoke-virtual {p0}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 5431
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5432
    return-void
.end method

.method public resetPlaybackInfo()V
    .locals 3

    .prologue
    const/16 v2, 0xf

    const/4 v1, 0x1

    .line 5395
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackType:I

    .line 5396
    iput v2, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolume:I

    .line 5397
    iput v2, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeMax:I

    .line 5398
    iput v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackVolumeHandling:I

    .line 5399
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackStream:I

    .line 5400
    iput v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mPlaybackState:I

    .line 5401
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mRemoteVolumeObs:Landroid/media/IRemoteVolumeObserver;

    .line 5402
    return-void
.end method

.method public unlinkToRcClientDeath()V
    .locals 4

    .prologue
    .line 5416
    iget-object v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    #getter for: Landroid/media/AudioService$RcClientDeathHandler;->mCb:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/AudioService$RcClientDeathHandler;->access$9100(Landroid/media/AudioService$RcClientDeathHandler;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5418
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    #getter for: Landroid/media/AudioService$RcClientDeathHandler;->mCb:Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/AudioService$RcClientDeathHandler;->access$9100(Landroid/media/AudioService$RcClientDeathHandler;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 5419
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5426
    :cond_0
    :goto_0
    return-void

    .line 5420
    :catch_0
    move-exception v0

    .line 5422
    .local v0, e:Ljava/util/NoSuchElementException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in unlinkToRcClientDeath()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5423
    invoke-virtual {v0}, Ljava/util/NoSuchElementException;->printStackTrace()V

    goto :goto_0
.end method
