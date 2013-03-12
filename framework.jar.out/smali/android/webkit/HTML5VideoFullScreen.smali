.class public Landroid/webkit/HTML5VideoFullScreen;
.super Landroid/webkit/HTML5VideoView;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;,
        Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;
    }
.end annotation


# static fields
.field static final FULLSCREEN_OFF:I = 0x0

.field static final FULLSCREEN_SURFACECREATED:I = 0x2

.field static final FULLSCREEN_SURFACECREATING:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "HTML5VideoFullScreen"

.field private static final SHOW_CONTROL:I = 0x1

.field private static mLayout:Landroid/widget/FrameLayout;

.field private static mProgressView:Landroid/view/View;


# instance fields
.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private final mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCurrentBufferPercentage:I

.field private mFullScreenMode:I

.field private mHandler:Landroid/os/Handler;

.field private mIsMiniMode:Z

.field private mMediaController:Landroid/widget/MediaController;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mVideoHeight:I

.field private mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

.field private mVideoWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;IIZ)V
    .locals 2
    .parameter "context"
    .parameter "videoLayerId"
    .parameter "position"
    .parameter "skipPrepare"

    .prologue
    const/4 v1, 0x0

    .line 174
    invoke-direct {p0}, Landroid/webkit/HTML5VideoView;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 101
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mIsMiniMode:Z

    .line 105
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$1;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullScreen$1;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mHandler:Landroid/os/Handler;

    .line 117
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$2;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullScreen$2;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 158
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$3;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullScreen$3;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 299
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$4;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullScreen$4;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 409
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$5;

    invoke-direct {v0, p0}, Landroid/webkit/HTML5VideoFullScreen$5;-><init>(Landroid/webkit/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 175
    new-instance v0, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-direct {v0, p0, p1}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;-><init>(Landroid/webkit/HTML5VideoFullScreen;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    .line 176
    iput v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mFullScreenMode:I

    .line 177
    iput v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    .line 178
    iput v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    .line 179
    invoke-virtual {p0, p2, p3, p4}, Landroid/webkit/HTML5VideoFullScreen;->init(IIZ)V

    .line 180
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/HTML5VideoFullScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Landroid/webkit/HTML5VideoFullScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Landroid/webkit/HTML5VideoFullScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000()Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    sput-object p0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$102(Landroid/webkit/HTML5VideoFullScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1102(Landroid/webkit/HTML5VideoFullScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$200(Landroid/webkit/HTML5VideoFullScreen;)Landroid/widget/MediaController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$202(Landroid/webkit/HTML5VideoFullScreen;Landroid/widget/MediaController;)Landroid/widget/MediaController;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    return-object p1
.end method

.method static synthetic access$300(Landroid/webkit/HTML5VideoFullScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mIsMiniMode:Z

    return v0
.end method

.method static synthetic access$402(Landroid/webkit/HTML5VideoFullScreen;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$502(Landroid/webkit/HTML5VideoFullScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mFullScreenMode:I

    return p1
.end method

.method static synthetic access$600(Landroid/webkit/HTML5VideoFullScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->prepareForFullScreen()V

    return-void
.end method

.method static synthetic access$700(Landroid/webkit/HTML5VideoFullScreen;)Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    return-object v0
.end method

.method static synthetic access$800(Landroid/webkit/HTML5VideoFullScreen;)Landroid/view/SurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$902(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .parameter "x0"

    .prologue
    .line 39
    sput-object p0, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private attachMediaController()V
    .locals 2

    .prologue
    .line 188
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 190
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 192
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 194
    :cond_0
    return-void
.end method

.method private getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    return-object v0
.end method

.method private prepareForFullScreen()V
    .locals 2

    .prologue
    .line 202
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 204
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 205
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoFullScreen;->prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 207
    :cond_0
    return-void
.end method

.method private setMediaController(Landroid/widget/MediaController;)V
    .locals 0
    .parameter "m"

    .prologue
    .line 183
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    .line 184
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->attachMediaController()V

    .line 185
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mPlayerBuffering:Z

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method

.method private togglePlayPause()V
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoFullScreen;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoFullScreen;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 224
    :goto_0
    return-void

    .line 223
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoFullScreen;->start()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 390
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanSeekForward:Z

    return v0
.end method

.method public decideDisplayMode()V
    .locals 2

    .prologue
    .line 198
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 199
    return-void
.end method

.method public enterFullScreenVideoState(ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebViewClassic;)V
    .locals 8
    .parameter "layerId"
    .parameter "proxy"
    .parameter "webView"

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 328
    iput v5, p0, Landroid/webkit/HTML5VideoFullScreen;->mFullScreenMode:I

    .line 329
    iput v4, p0, Landroid/webkit/HTML5VideoFullScreen;->mCurrentBufferPercentage:I

    .line 330
    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 331
    iput-object p2, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 332
    const-string v2, "HTML5VideoFullScreen"

    const-string v3, "enterFullScreenVideoState called."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {p3}, Landroid/webkit/WebViewClassic;->getSettings()Landroid/webkit/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettingsClassic;->getPopUpBrowserState()Z

    move-result v2

    iput-boolean v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mIsMiniMode:Z

    .line 335
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 336
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 337
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2, v5}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->setFocusable(Z)V

    .line 338
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2, v5}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->setFocusableInTouchMode(Z)V

    .line 339
    iget-object v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->requestFocus()Z

    .line 343
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    .line 344
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v6, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 349
    .local v1, layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 351
    invoke-virtual {p3}, Landroid/webkit/WebViewClassic;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 352
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_2

    .line 353
    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 356
    invoke-virtual {p3}, Landroid/webkit/WebViewClassic;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 357
    invoke-virtual {p3}, Landroid/webkit/WebViewClassic;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->hideAll()V

    .line 359
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v2

    sput-object v2, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    .line 360
    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 361
    iget-boolean v2, p0, Landroid/webkit/HTML5VideoFullScreen;->mIsMiniMode:Z

    if-eqz v2, :cond_1

    .line 362
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1           #layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 363
    .restart local v1       #layoutParams:Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 364
    sget-object v2, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 367
    :cond_2
    return-void
.end method

.method public fullScreenExited()Z
    .locals 1

    .prologue
    .line 296
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 395
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 396
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mCurrentBufferPercentage:I

    .line 398
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullScreenMode()Z
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 9
    .parameter "mp"

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 228
    invoke-super {p0, p1}, Landroid/webkit/HTML5VideoView;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 230
    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v3, p0}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 232
    invoke-virtual {p1, v4, v4}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    .line 234
    .local v0, data:Landroid/media/Metadata;
    if-eqz v0, :cond_b

    .line 235
    invoke-virtual {v0, v5}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v5}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_0
    move v3, v5

    :goto_0
    iput-boolean v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanPause:Z

    .line 237
    invoke-virtual {v0, v8}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v8}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_1
    move v3, v5

    :goto_1
    iput-boolean v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanSeekBack:Z

    .line 239
    invoke-virtual {v0, v6}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v6}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_2
    move v3, v5

    :goto_2
    iput-boolean v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanSeekForward:Z

    .line 246
    :goto_3
    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v3, :cond_3

    .line 247
    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v3}, Landroid/widget/MediaController;->hide()V

    .line 249
    :cond_3
    const/4 v1, 0x0

    .line 250
    .local v1, mc:Landroid/widget/MediaController;
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    if-nez v3, :cond_c

    .line 252
    new-instance v1, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;

    .end local v1           #mc:Landroid/widget/MediaController;
    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v6, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-direct {v1, v3, v6, v4}, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    .line 258
    .restart local v1       #mc:Landroid/widget/MediaController;
    :goto_4
    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/MediaController;->setSystemUiVisibility(I)V

    .line 259
    invoke-direct {p0, v1}, Landroid/webkit/HTML5VideoFullScreen;->setMediaController(Landroid/widget/MediaController;)V

    .line 262
    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 263
    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 266
    :cond_4
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    iput v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    .line 267
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    iput v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    .line 269
    const-string v3, "HTML5VideoFullScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPrepared. duration = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoFullScreen$VideoSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iget v6, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoWidth:I

    iget v7, p0, Landroid/webkit/HTML5VideoFullScreen;->mVideoHeight:I

    invoke-interface {v3, v6, v7}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 273
    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnRestoreState()V

    .line 275
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoFullScreen;->getStartWhenPrepared()Z

    move-result v3

    if-nez v3, :cond_5

    iget-boolean v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mIsMiniMode:Z

    if-eqz v3, :cond_6

    .line 276
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoFullScreen;->requestAudioFocus()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 277
    sget v3, Landroid/webkit/HTML5VideoFullScreen;->mCurrentState:I

    if-ne v3, v8, :cond_6

    .line 278
    sget-object v3, Landroid/webkit/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 280
    invoke-virtual {p0, v4}, Landroid/webkit/HTML5VideoFullScreen;->setStartWhenPrepared(Z)V

    .line 288
    :cond_6
    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mIsMiniMode:Z

    if-nez v3, :cond_7

    .line 289
    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v3, v5}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 290
    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 291
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x32

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 293
    .end local v2           #msg:Landroid/os/Message;
    :cond_7
    return-void

    .end local v1           #mc:Landroid/widget/MediaController;
    :cond_8
    move v3, v4

    .line 235
    goto/16 :goto_0

    :cond_9
    move v3, v4

    .line 237
    goto/16 :goto_1

    :cond_a
    move v3, v4

    .line 239
    goto/16 :goto_2

    .line 242
    :cond_b
    iput-boolean v5, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanSeekForward:Z

    iput-boolean v5, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanSeekBack:Z

    iput-boolean v5, p0, Landroid/webkit/HTML5VideoFullScreen;->mCanPause:Z

    goto/16 :goto_3

    .line 256
    .restart local v1       #mc:Landroid/widget/MediaController;
    :cond_c
    new-instance v1, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;

    .end local v1           #mc:Landroid/widget/MediaController;
    iget-object v3, p0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v6, Landroid/webkit/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-direct {v1, v3, v6, v5}, Landroid/webkit/HTML5VideoFullScreen$FullScreenMediaController;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    .restart local v1       #mc:Landroid/widget/MediaController;
    goto/16 :goto_4
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 418
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mIsMiniMode:Z

    if-eqz v0, :cond_1

    .line 419
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->togglePlayPause()V

    .line 425
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 421
    :cond_1
    iget v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mFullScreenMode:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 423
    invoke-direct {p0}, Landroid/webkit/HTML5VideoFullScreen;->toggleMediaControlsVisiblity()V

    goto :goto_0
.end method

.method public showControllerInFullScreen()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mIsMiniMode:Z

    if-nez v0, :cond_0

    .line 404
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 406
    :cond_0
    return-void
.end method

.method protected switchProgressView(Z)V
    .locals 2
    .parameter "playerBuffering"

    .prologue
    .line 430
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 431
    if-eqz p1, :cond_1

    .line 432
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    sget-object v0, Landroid/webkit/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
