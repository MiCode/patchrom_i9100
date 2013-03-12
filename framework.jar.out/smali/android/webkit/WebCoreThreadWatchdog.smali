.class Landroid/webkit/WebCoreThreadWatchdog;
.super Ljava/lang/Object;
.source "WebCoreThreadWatchdog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebCoreThreadWatchdog$PageNotRespondingRunnable;
    }
.end annotation


# static fields
.field private static final HEARTBEAT_PERIOD:I = 0x2710

.field private static final IS_ALIVE:I = 0x64

.field private static final SUBSEQUENT_TIMEOUT_PERIOD:I = 0x3a98

.field private static final TIMED_OUT:I = 0x65

.field private static final TIMEOUT_PERIOD:I = 0xea60

.field private static sInstance:Landroid/webkit/WebCoreThreadWatchdog;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPaused:Z

.field private mWebCoreThreadHandler:Landroid/os/Handler;

.field private mWebViews:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/webkit/WebViewClassic;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .parameter "webCoreThreadHandler"

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebCoreThreadHandler:Landroid/os/Handler;

    .line 111
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebCoreThreadWatchdog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mPaused:Z

    return v0
.end method

.method static synthetic access$100(Landroid/webkit/WebCoreThreadWatchdog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkit/WebCoreThreadWatchdog;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebCoreThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Landroid/webkit/WebCoreThreadWatchdog;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebViews:Ljava/util/Set;

    return-object v0
.end method

.method private addWebView(Landroid/webkit/WebViewClassic;)V
    .locals 1
    .parameter "w"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebViews:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebViews:Ljava/util/Set;

    .line 102
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebViews:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 103
    return-void
.end method

.method private createHandler()V
    .locals 2

    .prologue
    .line 144
    const-class v1, Landroid/webkit/WebCoreThreadWatchdog;

    monitor-enter v1

    .line 145
    :try_start_0
    new-instance v0, Landroid/webkit/WebCoreThreadWatchdog$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebCoreThreadWatchdog$1;-><init>(Landroid/webkit/WebCoreThreadWatchdog;)V

    iput-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    .line 205
    monitor-exit v1

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized pause()V
    .locals 2

    .prologue
    .line 87
    const-class v1, Landroid/webkit/WebCoreThreadWatchdog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    invoke-direct {v0}, Landroid/webkit/WebCoreThreadWatchdog;->pauseWatchdog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_0
    monitor-exit v1

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private pauseWatchdog()V
    .locals 2

    .prologue
    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mPaused:Z

    .line 116
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 121
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 122
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebCoreThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xc5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public static declared-synchronized registerWebView(Landroid/webkit/WebViewClassic;)V
    .locals 2
    .parameter "w"

    .prologue
    .line 75
    const-class v1, Landroid/webkit/WebCoreThreadWatchdog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    if-eqz v0, :cond_0

    .line 76
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    invoke-direct {v0, p0}, Landroid/webkit/WebCoreThreadWatchdog;->addWebView(Landroid/webkit/WebViewClassic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_0
    monitor-exit v1

    return-void

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private removeWebView(Landroid/webkit/WebViewClassic;)V
    .locals 1
    .parameter "w"

    .prologue
    .line 106
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebViews:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public static declared-synchronized resume()V
    .locals 2

    .prologue
    .line 93
    const-class v1, Landroid/webkit/WebCoreThreadWatchdog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    invoke-direct {v0}, Landroid/webkit/WebCoreThreadWatchdog;->resumeWatchdog()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_0
    monitor-exit v1

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private resumeWatchdog()V
    .locals 4

    .prologue
    .line 126
    iget-boolean v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mPaused:Z

    if-nez v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mPaused:Z

    .line 134
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebCoreThreadHandler:Landroid/os/Handler;

    const/16 v1, 0xc5

    iget-object v2, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 140
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public static declared-synchronized start(Landroid/os/Handler;)Landroid/webkit/WebCoreThreadWatchdog;
    .locals 4
    .parameter "webCoreThreadHandler"

    .prologue
    .line 67
    const-class v1, Landroid/webkit/WebCoreThreadWatchdog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Landroid/webkit/WebCoreThreadWatchdog;

    invoke-direct {v0, p0}, Landroid/webkit/WebCoreThreadWatchdog;-><init>(Landroid/os/Handler;)V

    sput-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    .line 69
    new-instance v0, Ljava/lang/Thread;

    sget-object v2, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    const-string v3, "WebCoreThreadWatchdog"

    invoke-direct {v0, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 71
    :cond_0
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized unregisterWebView(Landroid/webkit/WebViewClassic;)V
    .locals 2
    .parameter "w"

    .prologue
    .line 81
    const-class v1, Landroid/webkit/WebCoreThreadWatchdog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Landroid/webkit/WebCoreThreadWatchdog;->sInstance:Landroid/webkit/WebCoreThreadWatchdog;

    invoke-direct {v0, p0}, Landroid/webkit/WebCoreThreadWatchdog;->removeWebView(Landroid/webkit/WebViewClassic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    monitor-exit v1

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 210
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 212
    invoke-direct {p0}, Landroid/webkit/WebCoreThreadWatchdog;->createHandler()V

    .line 216
    const-class v1, Landroid/webkit/WebCoreThreadWatchdog;

    monitor-enter v1

    .line 217
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mPaused:Z

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mWebCoreThreadHandler:Landroid/os/Handler;

    const/16 v2, 0xc5

    iget-object v3, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 220
    iget-object v0, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/WebCoreThreadWatchdog;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 222
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 225
    return-void

    .line 222
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
