.class public Lcom/sec/android/app/fm/listplayer/FMListPlayer;
.super Ljava/lang/Object;
.source "FMListPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;,
        Lcom/sec/android/app/fm/listplayer/FMListPlayer$OnPlayerStateChangedObserver;
    }
.end annotation


# instance fields
.field public FilePath4GATE:Ljava/lang/String;

.field private mContentUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mFadeInHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaPlayerState:I

.field private mNotificationHandler:Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;

.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/fm/listplayer/FMListPlayer$OnPlayerStateChangedObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mContentUri:Landroid/net/Uri;

    .line 45
    iput-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mContext:Landroid/content/Context;

    .line 48
    iput-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->FilePath4GATE:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mObservers:Ljava/util/List;

    .line 134
    new-instance v0, Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;-><init>(Lcom/sec/android/app/fm/listplayer/FMListPlayer;Lcom/sec/android/app/fm/listplayer/FMListPlayer$1;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mNotificationHandler:Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;

    .line 431
    new-instance v0, Lcom/sec/android/app/fm/listplayer/FMListPlayer$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer$1;-><init>(Lcom/sec/android/app/fm/listplayer/FMListPlayer;)V

    iput-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mFadeInHandler:Landroid/os/Handler;

    .line 137
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    .line 138
    iput-object p1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mContext:Landroid/content/Context;

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/fm/listplayer/FMListPlayer;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->handleNotification(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/fm/listplayer/FMListPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mFadeInHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private handleNotification(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 110
    iget-object v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mObservers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 112
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/fm/listplayer/FMListPlayer$OnPlayerStateChangedObserver;>;"
    iget-object v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mNotificationHandler:Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;

    invoke-static {v2, v3, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 114
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 115
    iget v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    const/16 v3, 0x16

    if-ne v2, v3, :cond_0

    .line 116
    iget-object v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mNotificationHandler:Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;

    const-wide/16 v3, 0x32

    invoke-virtual {v2, v1, v3, v4}, Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 120
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/fm/listplayer/FMListPlayer$OnPlayerStateChangedObserver;

    invoke-interface {v2, p1}, Lcom/sec/android/app/fm/listplayer/FMListPlayer$OnPlayerStateChangedObserver;->OnPlayerStateChanged(I)V

    goto :goto_0

    .line 122
    :cond_1
    return-void
.end method

.method private notifyPlayerState(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 104
    iget-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mNotificationHandler:Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;

    invoke-static {v1, v2, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 105
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mNotificationHandler:Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer$NotificationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    return-void
.end method


# virtual methods
.method public getContentURI()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getCurrentPosition()I
    .locals 4

    .prologue
    .line 394
    const/4 v1, -0x1

    .line 395
    .local v1, pos:I
    iget-object v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 397
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 404
    :cond_0
    :goto_0
    return v1

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "FMListPlayer"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getDuration()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 380
    iget-object v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_0

    .line 383
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 389
    :cond_0
    :goto_0
    return v1

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 373
    iget-object v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_1

    .line 376
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 359
    iget-object v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    .line 368
    :goto_0
    return v1

    .line 365
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "mp"

    .prologue
    .line 408
    const-string v0, "FMListPlayer"

    const-string v1, "onCompletion E"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 410
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 413
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    .line 414
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->notifyPlayerState(I)V

    .line 415
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->notifyPlayerState(I)V

    .line 417
    return-void
.end method

.method public pausePlay()V
    .locals 3

    .prologue
    const/16 v2, 0x17

    .line 244
    const-string v0, "FMListPlayer"

    const-string v1, "pausePlay"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    if-ne v0, v2, :cond_1

    .line 247
    :cond_0
    const-string v0, "FMListPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal player state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 256
    :cond_2
    iput v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    .line 260
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->notifyPlayerState(I)V

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 147
    :cond_0
    return-void
.end method

.method public removeAllOnPlayerStateChangedObserver()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    return-void
.end method

.method public removeOnPlayerStateChangedObserver(Lcom/sec/android/app/fm/listplayer/FMListPlayer$OnPlayerStateChangedObserver;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public resetPath()V
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mContentUri:Landroid/net/Uri;

    .line 311
    return-void
.end method

.method public resumePlay()V
    .locals 4

    .prologue
    const/16 v3, 0x16

    const/16 v2, 0x15

    .line 264
    const-string v0, "FMListPlayer"

    const-string v1, "resumePlay"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    if-ne v0, v3, :cond_1

    .line 267
    :cond_0
    const-string v0, "FMListPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal player state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :goto_0
    return-void

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 278
    :goto_1
    iput v3, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->notifyPlayerState(I)V

    .line 280
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->notifyPlayerState(I)V

    goto :goto_0

    .line 274
    :cond_2
    iput v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mContentUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->startPlay(Landroid/net/Uri;)Z

    goto :goto_1
.end method

.method public seek(IZ)V
    .locals 3
    .parameter "msec"
    .parameter "restart"

    .prologue
    .line 314
    const-string v0, "FMListPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seek msec="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mContentUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->startPlay(Landroid/net/Uri;)Z

    .line 322
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->pausePlay()V

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 327
    :cond_1
    if-eqz p2, :cond_2

    .line 328
    invoke-virtual {p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->resumePlay()V

    .line 330
    :cond_2
    return-void
.end method

.method public setOnPlayerStateChangedObserver(Lcom/sec/android/app/fm/listplayer/FMListPlayer$OnPlayerStateChangedObserver;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public startFadeIn()V
    .locals 4

    .prologue
    const/16 v1, 0x1f

    const/16 v3, 0x20

    .line 420
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->volumeCtrl(F)V

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mFadeInHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mFadeInHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mFadeInHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mFadeInHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 427
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->volumeCtrl(F)V

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mFadeInHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 429
    return-void
.end method

.method public startPlay(Landroid/net/Uri;)Z
    .locals 7
    .parameter "contentUri"

    .prologue
    const/4 v4, 0x0

    .line 158
    const-string v5, "FMListPlayer"

    const-string v6, "startPlay() - Uri"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-nez p1, :cond_0

    move v0, v4

    .line 180
    :goto_0
    return v0

    .line 163
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mContentUri:Landroid/net/Uri;

    .line 166
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "r"

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 167
    .local v3, mpfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 169
    .local v2, fd:Ljava/io/FileDescriptor;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->startPlay(Ljava/io/FileDescriptor;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 172
    .local v0, bResult:Z
    :try_start_1
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 173
    :catch_0
    move-exception v1

    .line 174
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 175
    const-string v5, "FMListPlayer"

    const-string v6, "mpfd.close()"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 178
    .end local v0           #bResult:Z
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v3           #mpfd:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v1

    .line 179
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v5, "FMListPlayer"

    const-string v6, "error in startPlay(fd)"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v4

    .line 180
    goto :goto_0
.end method

.method public startPlay(Ljava/io/FileDescriptor;)Z
    .locals 5
    .parameter "descriptor"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 196
    const-string v3, "FMListPlayer"

    const-string v4, "startPlay - FileDescriptor"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget v3, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    const/16 v4, 0x15

    if-eq v3, v4, :cond_0

    .line 199
    const-string v2, "FMListPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal player state("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_0
    return v1

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->release()V

    .line 205
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 209
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 212
    iget-object v3, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 213
    iget-object v3, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 214
    iget-object v3, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 215
    iget-object v3, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    const/16 v3, 0x16

    iput v3, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    .line 222
    invoke-direct {p0, v1}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->notifyPlayerState(I)V

    .line 223
    invoke-direct {p0, v2}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->notifyPlayerState(I)V

    move v1, v2

    .line 224
    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FMListPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public stopPlay()V
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/16 v3, 0x1f

    const/16 v2, 0x15

    .line 284
    const-string v0, "FMListPlayer"

    const-string v1, "stopPlay"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    if-ne v0, v2, :cond_0

    .line 287
    const-string v0, "FMListPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal player state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :goto_0
    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mFadeInHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mFadeInHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mFadeInHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mFadeInHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->release()V

    .line 300
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->notifyPlayerState(I)V

    .line 301
    iput v2, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayerState:I

    goto :goto_0
.end method

.method public volumeCtrl(F)V
    .locals 1
    .parameter "volume"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/fm/listplayer/FMListPlayer;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 342
    :cond_0
    return-void
.end method
