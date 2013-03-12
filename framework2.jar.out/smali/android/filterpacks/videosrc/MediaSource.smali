.class public Landroid/filterpacks/videosrc/MediaSource;
.super Landroid/filterfw/core/Filter;
.source "MediaSource.java"


# static fields
.field private static final NEWFRAME_TIMEOUT:I = 0x64

.field private static final NEWFRAME_TIMEOUT_REPEAT:I = 0xa

.field private static final PREP_TIMEOUT:I = 0x64

.field private static final PREP_TIMEOUT_REPEAT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MediaSource"

.field private static final mSourceCoords_0:[F

.field private static final mSourceCoords_180:[F

.field private static final mSourceCoords_270:[F

.field private static final mSourceCoords_90:[F


# instance fields
.field private mCompleted:Z

.field private mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

.field private final mFrameShader:Ljava/lang/String;

.field private mGotSize:Z

.field private mHeight:I

.field private final mLogVerbose:Z

.field private mLooping:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "loop"
    .end annotation
.end field

.field private mMediaFrame:Landroid/filterfw/core/GLFrame;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNewFrameAvailable:Z

.field private mOrientation:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "orientation"
    .end annotation
.end field

.field private mOrientationUpdated:Z

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mPaused:Z

.field private mPlaying:Z

.field private mPrepared:Z

.field private mSelectedIsUrl:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sourceIsUrl"
    .end annotation
.end field

.field private mSourceAsset:Landroid/content/res/AssetFileDescriptor;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sourceAsset"
    .end annotation
.end field

.field private mSourceUrl:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "sourceUrl"
    .end annotation
.end field

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mVolume:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "volume"
    .end annotation
.end field

.field private mWaitForNewFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "waitForNewFrame"
    .end annotation
.end field

.field private mWidth:I

.field private onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private onMediaFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 137
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_0:[F

    .line 141
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_270:[F

    .line 145
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    sput-object v0, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_180:[F

    .line 149
    new-array v0, v1, [F

    fill-array-data v0, :array_3

    sput-object v0, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_90:[F

    return-void

    .line 137
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 141
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 145
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 149
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 166
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 60
    const-string v0, ""

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    .line 70
    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    .line 77
    iput-boolean v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mWaitForNewFrame:Z

    .line 83
    iput-boolean v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mLooping:Z

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mVolume:F

    .line 95
    iput v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    .line 114
    const-string v0, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mFrameShader:Ljava/lang/String;

    .line 508
    new-instance v0, Landroid/filterpacks/videosrc/MediaSource$1;

    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/MediaSource$1;-><init>(Landroid/filterpacks/videosrc/MediaSource;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 533
    new-instance v0, Landroid/filterpacks/videosrc/MediaSource$2;

    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/MediaSource$2;-><init>(Landroid/filterpacks/videosrc/MediaSource;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 544
    new-instance v0, Landroid/filterpacks/videosrc/MediaSource$3;

    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/MediaSource$3;-><init>(Landroid/filterpacks/videosrc/MediaSource;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 554
    new-instance v0, Landroid/filterpacks/videosrc/MediaSource$4;

    invoke-direct {v0, p0}, Landroid/filterpacks/videosrc/MediaSource$4;-><init>(Landroid/filterpacks/videosrc/MediaSource;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->onMediaFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    .line 167
    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    .line 169
    const-string v0, "MediaSource"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    .line 170
    return-void
.end method

.method static synthetic access$000(Landroid/filterpacks/videosrc/MediaSource;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    return v0
.end method

.method static synthetic access$100(Landroid/filterpacks/videosrc/MediaSource;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    return v0
.end method

.method static synthetic access$102(Landroid/filterpacks/videosrc/MediaSource;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    return p1
.end method

.method static synthetic access$200(Landroid/filterpacks/videosrc/MediaSource;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    return v0
.end method

.method static synthetic access$300(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    return-object v0
.end method

.method static synthetic access$402(Landroid/filterpacks/videosrc/MediaSource;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mWidth:I

    return p1
.end method

.method static synthetic access$502(Landroid/filterpacks/videosrc/MediaSource;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mHeight:I

    return p1
.end method

.method static synthetic access$602(Landroid/filterpacks/videosrc/MediaSource;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPrepared:Z

    return p1
.end method

.method static synthetic access$702(Landroid/filterpacks/videosrc/MediaSource;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    return p1
.end method

.method static synthetic access$802(Landroid/filterpacks/videosrc/MediaSource;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    return p1
.end method

.method private createFormats()V
    .locals 1

    .prologue
    const/4 v0, 0x3

    .line 180
    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 182
    return-void
.end method

.method private declared-synchronized setupMediaPlayer(Z)Z
    .locals 9
    .parameter "useUrl"

    .prologue
    const/4 v8, 0x1

    .line 435
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPrepared:Z

    .line 436
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    .line 438
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    .line 440
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    .line 442
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaSource"

    const-string v1, "Setting up playback."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 446
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_1

    const-string v0, "MediaSource"

    const-string v1, "Resetting existing MediaPlayer."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_1
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 454
    :goto_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_4

    .line 455
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to create a MediaPlayer!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 450
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_3

    const-string v0, "MediaSource"

    const-string v1, "Creating new MediaPlayer."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_3
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 460
    :cond_4
    if-eqz p1, :cond_7

    .line 461
    :try_start_2
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_5

    const-string v0, "MediaSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting MediaPlayer source to URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_5
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 485
    :goto_1
    :try_start_3
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLooping:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 486
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mVolume:F

    iget v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 489
    new-instance v7, Landroid/view/Surface;

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v7, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 490
    .local v7, surface:Landroid/view/Surface;
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v7}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 491
    invoke-virtual {v7}, Landroid/view/Surface;->release()V

    .line 495
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->onVideoSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 496
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->onPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 497
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->onCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 500
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->onMediaFrameAvailableListener:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 502
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_6

    const-string v0, "MediaSource"

    const-string v1, "Preparing MediaPlayer."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_6
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 505
    monitor-exit p0

    return v8

    .line 464
    .end local v7           #surface:Landroid/view/Surface;
    :cond_7
    :try_start_4
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_8

    const-string v0, "MediaSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting MediaPlayer source to asset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_8
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 467
    :catch_0
    move-exception v6

    .line 468
    .local v6, e:Ljava/io/IOException;
    :try_start_5
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 469
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 470
    if-eqz p1, :cond_9

    .line 471
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to set MediaPlayer to URL %s!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 473
    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to set MediaPlayer to asset %s!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 475
    .end local v6           #e:Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 476
    .local v6, e:Ljava/lang/IllegalArgumentException;
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 477
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 478
    if-eqz p1, :cond_a

    .line 479
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to set MediaPlayer to URL %s!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 481
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to set MediaPlayer to asset %s!"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceAsset:Landroid/content/res/AssetFileDescriptor;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 348
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 351
    :cond_0
    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPrepared:Z

    .line 352
    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    .line 353
    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    .line 354
    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    .line 355
    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    .line 356
    iput-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    .line 358
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 359
    iput-object v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 360
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 361
    iput-object v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 362
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_1

    const-string v0, "MediaSource"

    const-string v1, "MediaSource closed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_1
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .parameter "name"
    .parameter "context"

    .prologue
    .line 380
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaSource"

    const-string v1, "Parameter update"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    const-string v0, "sourceUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 382
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/MediaSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 383
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_1

    const-string v0, "MediaSource"

    const-string v1, "Opening new source URL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_1
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    if-eqz v0, :cond_2

    .line 385
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    invoke-direct {p0, v0}, Landroid/filterpacks/videosrc/MediaSource;->setupMediaPlayer(Z)Z

    .line 420
    :cond_2
    :goto_0
    return-void

    .line 388
    :cond_3
    const-string v0, "sourceAsset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 389
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/MediaSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_4

    const-string v0, "MediaSource"

    const-string v1, "Opening new source FD"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_4
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    if-nez v0, :cond_2

    .line 392
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    invoke-direct {p0, v0}, Landroid/filterpacks/videosrc/MediaSource;->setupMediaPlayer(Z)Z

    goto :goto_0

    .line 395
    :cond_5
    const-string v0, "loop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 396
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/MediaSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-boolean v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mLooping:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0

    .line 399
    :cond_6
    const-string v0, "sourceIsUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 400
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/MediaSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    if-eqz v0, :cond_8

    .line 402
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_7

    const-string v0, "MediaSource"

    const-string v1, "Opening new source URL"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_7
    :goto_1
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    invoke-direct {p0, v0}, Landroid/filterpacks/videosrc/MediaSource;->setupMediaPlayer(Z)Z

    goto :goto_0

    .line 404
    :cond_8
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_7

    const-string v0, "MediaSource"

    const-string v1, "Opening new source Asset"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 408
    :cond_9
    const-string v0, "volume"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 409
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/MediaSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mVolume:F

    iget v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 412
    :cond_a
    const-string v0, "orientation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    if-eqz v0, :cond_2

    .line 413
    iget v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    if-eqz v0, :cond_b

    iget v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_c

    .line 414
    :cond_b
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    iget v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mWidth:I

    iget v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 418
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOrientationUpdated:Z

    goto/16 :goto_0

    .line 416
    :cond_c
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    iget v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mHeight:I

    iget v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    goto :goto_2
.end method

.method public open(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 198
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "MediaSource"

    const-string v1, "Opening MediaSource"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    if-eqz v0, :cond_1

    .line 201
    const-string v0, "MediaSource"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current URL is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/filterpacks/videosrc/MediaSource;->mSourceUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v0

    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    const/16 v2, 0x68

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object v0

    check-cast v0, Landroid/filterfw/core/GLFrame;

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    .line 212
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->getTextureId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 214
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mSelectedIsUrl:Z

    invoke-direct {p0, v0}, Landroid/filterpacks/videosrc/MediaSource;->setupMediaPlayer(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 215
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error setting up MediaPlayer!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_1
    const-string v0, "MediaSource"

    const-string v1, "Current source is Asset!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 217
    :cond_2
    return-void
.end method

.method public declared-synchronized pauseVideo(Z)V
    .locals 1
    .parameter "pauseState"

    .prologue
    .line 423
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/filterpacks/videosrc/MediaSource;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    if-nez v0, :cond_1

    .line 425
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 430
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    monitor-exit p0

    return-void

    .line 426
    :cond_1
    if-nez p1, :cond_0

    :try_start_1
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 423
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .parameter "context"

    .prologue
    const/high16 v3, 0x3f80

    .line 186
    iget-boolean v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaSource"

    const-string v1, "Preparing MediaSource"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string v1, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nuniform samplerExternalOES tex_sampler_0;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler_0, v_texcoord);\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    .line 191
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    const/4 v1, 0x0

    const/high16 v2, -0x4080

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 193
    invoke-direct {p0}, Landroid/filterpacks/videosrc/MediaSource;->createFormats()V

    .line 194
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 20
    .parameter "context"

    .prologue
    .line 222
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v3, :cond_0

    const-string v3, "MediaSource"

    const-string v5, "Processing new frame"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_1

    .line 226
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v5, "Unexpected null media player!"

    invoke-direct {v3, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 229
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    if-eqz v3, :cond_2

    .line 231
    const-string v3, "video"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/filterpacks/videosrc/MediaSource;->closeOutputPort(Ljava/lang/String;)V

    .line 344
    :goto_0
    return-void

    .line 235
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    if-nez v3, :cond_8

    .line 236
    const/16 v19, 0x0

    .line 237
    .local v19, waitCount:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v3, :cond_3

    const-string v3, "MediaSource"

    const-string v5, "Waiting for preparation to complete"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mGotSize:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mPrepared:Z

    if-nez v3, :cond_6

    .line 240
    :cond_4
    const-wide/16 v5, 0x64

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 244
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    if-eqz v3, :cond_5

    .line 246
    const-string v3, "video"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/filterpacks/videosrc/MediaSource;->closeOutputPort(Ljava/lang/String;)V

    goto :goto_0

    .line 249
    :cond_5
    add-int/lit8 v19, v19, 0x1

    .line 250
    const/16 v3, 0x64

    move/from16 v0, v19

    if-ne v0, v3, :cond_3

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 252
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "MediaPlayer timed out while preparing!"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 255
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v3, :cond_7

    const-string v3, "MediaSource"

    const-string v5, "Starting playback"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 261
    .end local v19           #waitCount:I
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mPaused:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    if-nez v3, :cond_10

    .line 262
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mWaitForNewFrame:Z

    if-eqz v3, :cond_f

    .line 263
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v3, :cond_a

    const-string v3, "MediaSource"

    const-string v5, "Waiting for new frame"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_a
    const/16 v19, 0x0

    .line 266
    .restart local v19       #waitCount:I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    if-nez v3, :cond_e

    .line 267
    const/16 v3, 0xa

    move/from16 v0, v19

    if-ne v0, v3, :cond_c

    .line 268
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mCompleted:Z

    if-eqz v3, :cond_b

    .line 270
    const-string v3, "video"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/filterpacks/videosrc/MediaSource;->closeOutputPort(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    :cond_b
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Timeout waiting for new frame!"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 277
    :cond_c
    const-wide/16 v5, 0x64

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 282
    :cond_d
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 278
    :catch_0
    move-exception v14

    .line 279
    .local v14, e:Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v3, :cond_d

    const-string v3, "MediaSource"

    const-string v5, "interrupted"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 284
    .end local v14           #e:Ljava/lang/InterruptedException;
    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mNewFrameAvailable:Z

    .line 285
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v3, :cond_f

    const-string v3, "MediaSource"

    const-string v5, "Got new frame"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v19           #waitCount:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 289
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientationUpdated:Z

    .line 291
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientationUpdated:Z

    if-eqz v3, :cond_12

    .line 292
    const/16 v3, 0x10

    new-array v4, v3, [F

    .line 293
    .local v4, surfaceTransform:[F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, v4}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 295
    const/16 v3, 0x10

    new-array v2, v3, [F

    .line 296
    .local v2, sourceCoords:[F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    sparse-switch v3, :sswitch_data_0

    .line 299
    const/4 v3, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_0:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 319
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v3, :cond_11

    .line 320
    const-string v3, "MediaSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OrientationHint = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v3, "SetSourceRegion: %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f, %.2f"

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x4

    aget v7, v2, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x5

    aget v7, v2, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    aget v7, v2, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x1

    aget v7, v2, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0xc

    aget v7, v2, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x5

    const/16 v7, 0xd

    aget v7, v2, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const/16 v7, 0x8

    aget v7, v2, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    const/16 v7, 0x9

    aget v7, v2, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 324
    .local v16, temp:Ljava/lang/String;
    const-string v3, "MediaSource"

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v16           #temp:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/filterpacks/videosrc/MediaSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    const/4 v3, 0x4

    aget v6, v2, v3

    const/4 v3, 0x5

    aget v7, v2, v3

    const/4 v3, 0x0

    aget v8, v2, v3

    const/4 v3, 0x1

    aget v9, v2, v3

    const/16 v3, 0xc

    aget v10, v2, v3

    const/16 v3, 0xd

    aget v11, v2, v3

    const/16 v3, 0x8

    aget v12, v2, v3

    const/16 v3, 0x9

    aget v13, v2, v3

    invoke-virtual/range {v5 .. v13}, Landroid/filterfw/core/ShaderProgram;->setSourceRegion(FFFFFFFF)Z

    .line 330
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mOrientationUpdated:Z

    .line 333
    .end local v2           #sourceCoords:[F
    .end local v4           #surfaceTransform:[F
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/filterpacks/videosrc/MediaSource;->mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v3, v5}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v15

    .line 334
    .local v15, output:Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mFrameExtractor:Landroid/filterfw/core/ShaderProgram;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/filterpacks/videosrc/MediaSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v3, v5, v15}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v17

    .line 337
    .local v17, timestamp:J
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mLogVerbose:Z

    if-eqz v3, :cond_13

    const-string v3, "MediaSource"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timestamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v17

    long-to-double v6, v0

    const-wide v8, 0x41cdcd6500000000L

    div-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_13
    move-wide/from16 v0, v17

    invoke-virtual {v15, v0, v1}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 340
    const-string v3, "video"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Landroid/filterpacks/videosrc/MediaSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 341
    invoke-virtual {v15}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 343
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/filterpacks/videosrc/MediaSource;->mPlaying:Z

    goto/16 :goto_0

    .line 304
    .end local v15           #output:Landroid/filterfw/core/Frame;
    .end local v17           #timestamp:J
    .restart local v2       #sourceCoords:[F
    .restart local v4       #surfaceTransform:[F
    :sswitch_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_90:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto/16 :goto_4

    .line 309
    :sswitch_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_180:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto/16 :goto_4

    .line 314
    :sswitch_2
    const/4 v3, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/filterpacks/videosrc/MediaSource;->mSourceCoords_270:[F

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto/16 :goto_4

    .line 241
    .end local v2           #sourceCoords:[F
    .end local v4           #surfaceTransform:[F
    .restart local v19       #waitCount:I
    :catch_1
    move-exception v3

    goto/16 :goto_1

    .line 296
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 175
    const-string v0, "video"

    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/videosrc/MediaSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 177
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 367
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource;->mMediaFrame:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 370
    :cond_0
    return-void
.end method
