.class public Landroid/webkit/HTML5VideoView;
.super Ljava/lang/Object;
.source "HTML5VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5VideoView$TimeupdateTask;
    }
.end annotation


# static fields
.field protected static final COOKIE:Ljava/lang/String; = "Cookie"

.field protected static final HIDE_URL_LOGS:Ljava/lang/String; = "x-hide-urls-from-log"

.field protected static final LOGTAG:Ljava/lang/String; = "HTML5VideoView"

.field static final STATE_INITIALIZED:I = 0x0

.field static final STATE_PLAYING:I = 0x3

.field static final STATE_PREPARED:I = 0x2

.field static final STATE_PREPARING:I = 0x1

.field static final STATE_RESETTED:I = 0x4

.field private static final TIMEUPDATE_PERIOD:I = 0xfa

.field protected static mCurrentState:I

.field protected static mPlayer:Landroid/media/MediaPlayer;

.field protected static mTimer:Ljava/util/Timer;


# instance fields
.field protected mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRegisteredListener:Z

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field protected mPauseDuringPreparing:Z

.field public mPlayerBuffering:Z

.field protected mProxy:Landroid/webkit/HTML5VideoViewProxy;

.field protected mSaveSeekTime:I

.field private mSkipPrepare:Z

.field private mStartWhenPrepared:Z

.field protected mUri:Landroid/net/Uri;

.field protected mVideoLayerId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    .line 62
    const/4 v0, -0x1

    sput v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoView;->mSkipPrepare:Z

    .line 80
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoView;->mIsRegisteredListener:Z

    .line 81
    new-instance v0, Landroid/webkit/HTML5VideoView$1;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoView$1;-><init>(Landroid/webkit/HTML5VideoView;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 410
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoView;->mPlayerBuffering:Z

    .line 436
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoView;->mStartWhenPrepared:Z

    .line 249
    return-void
.end method

.method protected static generateHeaders(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)Ljava/util/Map;
    .locals 5
    .parameter "url"
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/HTML5VideoViewProxy;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p1}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebViewClassic;->isPrivateBrowsingEnabled()Z

    move-result v2

    .line 254
    .local v2, isPrivate:Z
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, cookieValue:Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 256
    .local v1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 257
    const-string v3, "Cookie"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_0
    if-eqz v2, :cond_1

    .line 260
    const-string/jumbo v3, "x-hide-urls-from-log"

    const-string/jumbo v4, "true"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    :cond_1
    return-object v1
.end method


# virtual methods
.method public decideDisplayMode()V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public deleteSurfaceTexture()V
    .locals 0

    .prologue
    .line 403
    return-void
.end method

.method public enterFullScreenVideoState(ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter "layerId"
    .parameter "proxy"
    .parameter "webView"

    .prologue
    .line 389
    return-void
.end method

.method public fullScreenExited()Z
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 166
    sget v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 167
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 169
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x3

    .line 345
    :goto_0
    return v0

    :cond_0
    sget v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 158
    sget v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 159
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPauseDuringPreparing()Z
    .locals 1

    .prologue
    .line 210
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    return v0
.end method

.method public getPlayerBuffering()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mPlayerBuffering:Z

    return v0
.end method

.method public getReadyToUseSurfTex()Z
    .locals 1

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method

.method public getStartWhenPrepared()Z
    .locals 1

    .prologue
    .line 443
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mStartWhenPrepared:Z

    return v0
.end method

.method public getTextureName()I
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoLayerId()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mVideoLayerId:I

    return v0
.end method

.method public init(IIZ)V
    .locals 3
    .parameter "videoLayerId"
    .parameter "position"
    .parameter "skipPrepare"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 232
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    .line 234
    sput v1, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 236
    :cond_0
    iput-boolean p3, p0, Landroid/webkit/HTML5VideoView;->mSkipPrepare:Z

    .line 238
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mSkipPrepare:Z

    if-nez v0, :cond_1

    .line 239
    sput v1, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 241
    :cond_1
    iput-object v2, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 242
    iput p1, p0, Landroid/webkit/HTML5VideoView;->mVideoLayerId:I

    .line 243
    iput p2, p0, Landroid/webkit/HTML5VideoView;->mSaveSeekTime:I

    .line 244
    sput-object v2, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    .line 245
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    .line 246
    return-void
.end method

.method public isFullScreenMode()Z
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 180
    sget v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 181
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 183
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAudioFocusChange(I)V
    .locals 3
    .parameter "focusChange"

    .prologue
    .line 215
    packed-switch p1, :pswitch_data_0

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 218
    :pswitch_0
    const-string v0, "HTML5VideoView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAudioFocusChange() called. videoView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoViewProxy;->setHasAudioFocus(Z)V

    .line 221
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "HTML5VideoView"

    const-string/jumbo v1, "onAudioFocusChange() - pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 364
    const/4 v0, 0x2

    sput v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 367
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoViewProxy;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 370
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    .line 374
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 138
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 144
    :cond_0
    :goto_0
    sget-object v0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 145
    sget-object v0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 146
    sget-object v0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 147
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    .line 151
    :cond_1
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mIsRegisteredListener:Z

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mIsRegisteredListener:Z

    .line 155
    :cond_2
    return-void

    .line 140
    :cond_3
    sget v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    if-ne v0, v1, :cond_0

    .line 141
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    goto :goto_0
.end method

.method public pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 378
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->pause()V

    .line 379
    if-eqz p1, :cond_0

    .line 380
    invoke-virtual {p1}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnPaused()V

    .line 382
    :cond_0
    return-void
.end method

.method public prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 324
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->decideDisplayMode()V

    .line 326
    invoke-virtual {p0, p1}, Landroid/webkit/HTML5VideoView;->setOnCompletionListener(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 327
    invoke-virtual {p0, p1}, Landroid/webkit/HTML5VideoView;->setOnPreparedListener(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 328
    invoke-virtual {p0, p1}, Landroid/webkit/HTML5VideoView;->setOnErrorListener(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 329
    invoke-virtual {p0, p1}, Landroid/webkit/HTML5VideoView;->setOnInfoListener(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 331
    invoke-virtual {p0, p1}, Landroid/webkit/HTML5VideoView;->prepareDataCommon(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 332
    return-void
.end method

.method public prepareDataCommon(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 5
    .parameter "proxy"

    .prologue
    .line 291
    iget-boolean v1, p0, Landroid/webkit/HTML5VideoView;->mSkipPrepare:Z

    if-nez v1, :cond_0

    .line 293
    :try_start_0
    sget-object v1, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 294
    sget-object v1, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HTML5VideoView;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Landroid/webkit/HTML5VideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 295
    sget-object v1, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 303
    :goto_0
    const/4 v1, 0x1

    sput v1, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 313
    :goto_1
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 298
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 299
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 300
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 301
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 308
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    sget v1, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 309
    sget-object v1, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v1}, Landroid/webkit/HTML5VideoView;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 311
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/HTML5VideoView;->mSkipPrepare:Z

    goto :goto_1
.end method

.method public reprepareData(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 316
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 317
    invoke-virtual {p0, p1}, Landroid/webkit/HTML5VideoView;->prepareDataCommon(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 318
    return-void
.end method

.method public requestAudioFocus()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 450
    const-string v3, "HTML5VideoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestAudioFocus() called. proxy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v3, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoViewProxy;->getHasAudioFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 452
    const-string v3, "HTML5VideoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Already has AudioFocus. videoView = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :goto_0
    return v2

    .line 456
    :cond_0
    const-string v3, "HTML5VideoView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requested AudioFocus. videoView = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v3, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 458
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v3, 0x3

    invoke-virtual {v0, p0, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 459
    .local v1, result:I
    iget-object v3, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-ne v1, v2, :cond_1

    :goto_1
    invoke-virtual {v3, v2}, Landroid/webkit/HTML5VideoViewProxy;->setHasAudioFocus(Z)V

    .line 460
    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoViewProxy;->getHasAudioFocus()Z

    move-result v2

    goto :goto_0

    .line 459
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 188
    sget v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    if-eq v0, v1, :cond_0

    .line 189
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 191
    :cond_0
    sput v1, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 192
    return-void
.end method

.method public seekTo(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 173
    sget v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 174
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    iput p1, p0, Landroid/webkit/HTML5VideoView;->mSaveSeekTime:I

    goto :goto_0
.end method

.method public setOnCompletionListener(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 274
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 275
    return-void
.end method

.method public setOnErrorListener(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 278
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 279
    return-void
.end method

.method public setOnInfoListener(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 287
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 288
    return-void
.end method

.method public setOnPreparedListener(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 282
    iput-object p1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 283
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 284
    return-void
.end method

.method public setPlayerBuffering(Z)V
    .locals 0
    .parameter "playerBuffering"

    .prologue
    .line 417
    iput-boolean p1, p0, Landroid/webkit/HTML5VideoView;->mPlayerBuffering:Z

    .line 418
    invoke-virtual {p0, p1}, Landroid/webkit/HTML5VideoView;->switchProgressView(Z)V

    .line 419
    return-void
.end method

.method public setStartWhenPrepared(Z)V
    .locals 0
    .parameter "willPlay"

    .prologue
    .line 439
    iput-boolean p1, p0, Landroid/webkit/HTML5VideoView;->mStartWhenPrepared:Z

    .line 440
    return-void
.end method

.method public setVideoURI(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "uri"
    .parameter "proxy"

    .prologue
    .line 268
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mUri:Landroid/net/Uri;

    .line 269
    invoke-static {p1, p2}, Landroid/webkit/HTML5VideoView;->generateHeaders(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mHeaders:Ljava/util/Map;

    .line 270
    return-void
.end method

.method public setVolume(F)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 202
    sget v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 203
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 205
    :cond_0
    return-void
.end method

.method public showControllerInFullScreen()V
    .locals 0

    .prologue
    .line 447
    return-void
.end method

.method public start()V
    .locals 10

    .prologue
    const-wide/16 v2, 0xfa

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 97
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->requestAudioFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 98
    sget v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 101
    sget-object v0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    .line 104
    sget-object v0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    new-instance v1, Landroid/webkit/HTML5VideoView$TimeupdateTask;

    iget-object v4, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-direct {v1, v4}, Landroid/webkit/HTML5VideoView$TimeupdateTask;-><init>(Landroid/webkit/HTML5VideoViewProxy;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 108
    :cond_0
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mSaveSeekTime:I

    if-eq v0, v7, :cond_1

    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettingsClassic;->getPopUpBrowserState()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mSaveSeekTime:I

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoView;->seekTo(I)V

    .line 111
    iput v7, p0, Landroid/webkit/HTML5VideoView;->mSaveSeekTime:I

    .line 113
    :cond_1
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 114
    invoke-virtual {p0, v8}, Landroid/webkit/HTML5VideoView;->setPlayerBuffering(Z)V

    .line 130
    :cond_2
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_3

    .line 131
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 133
    :cond_3
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1, v9}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 134
    iput-boolean v9, p0, Landroid/webkit/HTML5VideoView;->mIsRegisteredListener:Z

    .line 135
    :cond_4
    :goto_0
    return-void

    .line 119
    :cond_5
    const-string v0, "HTML5VideoView"

    const-string/jumbo v1, "start() - requestAudioFocus() failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 122
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x104075f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 123
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v6

    .line 124
    .local v6, client:Landroid/webkit/WebChromeClient;
    if-eqz v6, :cond_4

    .line 125
    invoke-virtual {v6}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    goto :goto_0
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    .line 195
    sget v0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 196
    sget-object v0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 198
    :cond_0
    return-void
.end method

.method public surfaceTextureDeleted()Z
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method protected switchProgressView(Z)V
    .locals 0
    .parameter "playerBuffering"

    .prologue
    .line 424
    return-void
.end method
