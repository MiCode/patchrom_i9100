.class public final Lcom/android/internal/app/ShutdownThread;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# static fields
.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x10

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x4e20

.field private static final PATH_SHUTDOWNIMG:Ljava/lang/String; = "//system/media/video/shutdown/shutdown.qmg"

.field private static final PATH_SHUTDOWNSOUND:Ljava/lang/String; = "//system/media/audio/ui/PowerOff.wav"

.field private static PATH_TOUCHKEYMODULE_CONTROL:Ljava/lang/String; = null

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static mContext:Landroid/content/Context;

.field static mReboot:Z

.field static mRebootReason:Ljava/lang/String;

.field private static mRebootResult:Z

.field private static mp:Landroid/media/MediaPlayer;

.field private static sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

.field private static sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

.field private static final sInstance:Lcom/android/internal/app/ShutdownThread;

.field private static sIsConfirming:Z

.field private static sIsSamsungAnimation:Z

.field static sIsStarted:Z

.field static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 97
    sput-object v0, Lcom/android/internal/app/ShutdownThread;->PATH_TOUCHKEYMODULE_CONTROL:Ljava/lang/String;

    .line 98
    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    .line 99
    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    .line 100
    sput-object v0, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    .line 101
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 113
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 114
    sput-boolean v1, Lcom/android/internal/app/ShutdownThread;->sIsConfirming:Z

    .line 124
    new-instance v0, Lcom/android/internal/app/ShutdownThread;

    invoke-direct {v0}, Lcom/android/internal/app/ShutdownThread;-><init>()V

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    .line 138
    const-string v0, "/sys/devices/virtual/sec/ts"

    sput-object v0, Lcom/android/internal/app/ShutdownThread;->PATH_TOUCHKEYMODULE_CONTROL:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public static IsShutDownConfirming()Z
    .locals 2

    .prologue
    .line 862
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 863
    :try_start_0
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->sIsConfirming:Z

    monitor-exit v1

    return v0

    .line 864
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static IsShutDownStarted()Z
    .locals 3

    .prologue
    .line 850
    sget-object v1, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 851
    :try_start_0
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v0, :cond_0

    .line 852
    const-string v0, "ShutdownThread"

    const-string/jumbo v2, "shut down already running , return true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v0, 0x1

    monitor-exit v1

    .line 856
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 858
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 88
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    return p0
.end method

.method static synthetic access$1000()Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->mRebootResult:Z

    return p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 88
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    return v0
.end method

.method static synthetic access$400(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSamsungSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    sput-boolean p0, Lcom/android/internal/app/ShutdownThread;->sIsConfirming:Z

    return p0
.end method

.method static synthetic access$800()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private static beginShutdownSamsungSequence(Landroid/content/Context;)V
    .locals 17
    .parameter "context"

    .prologue
    .line 259
    sget-object v14, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v14

    .line 260
    :try_start_0
    sget-boolean v13, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v13, :cond_0

    .line 261
    const-string v13, "ShutdownThread"

    const-string v15, "Request to shutdown already running, returning."

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    monitor-exit v14

    .line 358
    :goto_0
    return-void

    .line 264
    :cond_0
    const/4 v13, 0x1

    sput-boolean v13, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 265
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    const-string/jumbo v13, "shutdownlogger"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/app/IShutdownLogger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IShutdownLogger;

    move-result-object v7

    .line 268
    .local v7, service:Landroid/app/IShutdownLogger;
    new-instance v8, Landroid/app/ShutdownLoggerManager;

    invoke-direct {v8, v7}, Landroid/app/ShutdownLoggerManager;-><init>(Landroid/app/IShutdownLogger;)V

    .line 269
    .local v8, slm:Landroid/app/ShutdownLoggerManager;
    const-string v13, "ShutdownThread.beginShutdownSamsungSequence()"

    invoke-virtual {v8, v13}, Landroid/app/ShutdownLoggerManager;->appendLog(Ljava/lang/String;)V

    .line 271
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v14, "audio"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 273
    .local v2, audioManager:Landroid/media/AudioManager;
    const-string/jumbo v13, "shutdown"

    const-string v14, "1"

    invoke-virtual {v2, v13, v14}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :try_start_1
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v14, "activity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 278
    .local v1, am:Landroid/app/ActivityManager;
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v10

    .line 279
    .local v10, taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v13, 0x0

    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v11, v13, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 280
    .local v11, topActivity:Landroid/content/ComponentName;
    const-string v5, "com.sec.android.app.camera"

    .line 281
    .local v5, packageName:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 283
    new-instance v9, Landroid/content/Intent;

    const-string v13, "POWER_OFF_ANIMATION_START"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .local v9, startAnimation:Landroid/content/Intent;
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 291
    .end local v1           #am:Landroid/app/ActivityManager;
    .end local v5           #packageName:Ljava/lang/String;
    .end local v9           #startAnimation:Landroid/content/Intent;
    .end local v10           #taskInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v11           #topActivity:Landroid/content/ComponentName;
    :cond_1
    :goto_1
    new-instance v6, Landroid/app/ShutdownDialog;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/app/ShutdownDialog;-><init>(Landroid/content/Context;)V

    .line 292
    .local v6, pd:Landroid/app/ShutdownDialog;
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Landroid/app/ShutdownDialog;->setCancelable(Z)V

    .line 293
    invoke-virtual {v6}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/16 v14, 0x7e5

    invoke-virtual {v13, v14}, Landroid/view/Window;->setType(I)V

    .line 295
    invoke-virtual {v6}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/high16 v14, 0x20

    invoke-virtual {v13, v14}, Landroid/view/Window;->addFlags(I)V

    .line 296
    invoke-virtual {v6}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/16 v14, 0x80

    invoke-virtual {v13, v14}, Landroid/view/Window;->addFlags(I)V

    .line 297
    invoke-virtual {v6}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/Window;->addFlags(I)V

    .line 298
    invoke-virtual {v6}, Landroid/app/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 301
    new-instance v13, Ljava/util/concurrent/Semaphore;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v13, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    .line 303
    :try_start_2
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v13}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 307
    :goto_2
    new-instance v13, Lcom/android/internal/app/ShutdownThread$4;

    invoke-direct {v13}, Lcom/android/internal/app/ShutdownThread$4;-><init>()V

    invoke-virtual {v6, v13}, Landroid/app/ShutdownDialog;->setOnAnimationEnd(Ljava/lang/Runnable;)V

    .line 315
    const-string/jumbo v13, "window"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v12

    .line 317
    .local v12, wm:Landroid/view/IWindowManager;
    const/4 v13, 0x1

    :try_start_3
    invoke-interface {v12, v13}, Landroid/view/IWindowManager;->setStatusBarCanHideNotInActivity(Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 323
    :goto_3
    invoke-virtual {v6}, Landroid/app/ShutdownDialog;->show()V

    .line 327
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 328
    sget-object v14, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const-string/jumbo v13, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/PowerManager;

    iput-object v13, v14, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 331
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 333
    :try_start_4
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v14, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v14, v14, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v15, 0x1

    const-string v16, "ShutdownThread-cpu"

    invoke-virtual/range {v14 .. v16}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    iput-object v14, v13, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 335
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v13, v13, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 336
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v13, v13, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3

    .line 343
    :goto_4
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 344
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v13, v13, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v13}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 346
    :try_start_5
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v14, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v14, v14, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v15, 0x1a

    const-string v16, "ShutdownThread-screen"

    invoke-virtual/range {v14 .. v16}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v14

    iput-object v14, v13, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 348
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v13, v13, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 349
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v13, v13, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_4

    .line 355
    :cond_2
    :goto_5
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v14, Lcom/android/internal/app/ShutdownThread$5;

    invoke-direct {v14}, Lcom/android/internal/app/ShutdownThread$5;-><init>()V

    iput-object v14, v13, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 357
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v13}, Lcom/android/internal/app/ShutdownThread;->start()V

    goto/16 :goto_0

    .line 265
    .end local v2           #audioManager:Landroid/media/AudioManager;
    .end local v6           #pd:Landroid/app/ShutdownDialog;
    .end local v7           #service:Landroid/app/IShutdownLogger;
    .end local v8           #slm:Landroid/app/ShutdownLoggerManager;
    .end local v12           #wm:Landroid/view/IWindowManager;
    :catchall_0
    move-exception v13

    :try_start_6
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v13

    .line 304
    .restart local v2       #audioManager:Landroid/media/AudioManager;
    .restart local v6       #pd:Landroid/app/ShutdownDialog;
    .restart local v7       #service:Landroid/app/IShutdownLogger;
    .restart local v8       #slm:Landroid/app/ShutdownLoggerManager;
    :catch_0
    move-exception v3

    .line 305
    .local v3, e:Ljava/lang/InterruptedException;
    const/4 v13, 0x0

    sput-object v13, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    goto/16 :goto_2

    .line 318
    .end local v3           #e:Ljava/lang/InterruptedException;
    .restart local v12       #wm:Landroid/view/IWindowManager;
    :catch_1
    move-exception v3

    .line 319
    .local v3, e:Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_3

    .line 320
    .end local v3           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v4

    .line 321
    .local v4, ex:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 337
    .end local v4           #ex:Ljava/lang/Exception;
    :catch_3
    move-exception v3

    .line 338
    .local v3, e:Ljava/lang/SecurityException;
    const-string v13, "ShutdownThread"

    const-string v14, "No permission to acquire wake lock"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_4

    .line 350
    .end local v3           #e:Ljava/lang/SecurityException;
    :catch_4
    move-exception v3

    .line 351
    .restart local v3       #e:Ljava/lang/SecurityException;
    const-string v13, "ShutdownThread"

    const-string v14, "No permission to acquire wake lock"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 352
    sget-object v13, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const/4 v14, 0x0

    iput-object v14, v13, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_5

    .line 286
    .end local v3           #e:Ljava/lang/SecurityException;
    .end local v6           #pd:Landroid/app/ShutdownDialog;
    .end local v12           #wm:Landroid/view/IWindowManager;
    :catch_5
    move-exception v13

    goto/16 :goto_1
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 454
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v4

    .line 455
    :try_start_0
    sget-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v3, :cond_0

    .line 456
    const-string v3, "ShutdownThread"

    const-string v5, "Shutdown sequence already running, returning."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    monitor-exit v4

    .line 529
    :goto_0
    return-void

    .line 459
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    .line 460
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v3, "shutdown"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    # it is a Landroid/app/ProgressDialog object in android.
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V
    .local v2, pd:Landroid/app/ProgressDialog;

    const v3, 0x1040157

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v3, 0x104015b

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 489
    invoke-virtual {v2, v6}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 490
    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 491
    invoke-virtual {v2}, Lcom/android/internal/app/ShutdownThread$8;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7e5

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 493
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->createShutDownDialog(Landroid/content/Context;)V

    .line 496
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    .line 497
    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    const-string/jumbo v3, "power"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, v4, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    .line 500
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v7, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 502
    :try_start_1
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v4, v4, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/4 v5, 0x1

    const-string v6, "ShutdownThread-cpu"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 504
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 505
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 512
    :goto_1
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v7, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 513
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 515
    :try_start_2
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sget-object v4, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v4, v4, Lcom/android/internal/app/ShutdownThread;->mPowerManager:Landroid/os/PowerManager;

    const/16 v5, 0x1a

    const-string v6, "ShutdownThread-screen"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 517
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 518
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iget-object v3, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 526
    :cond_1
    :goto_2
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    new-instance v4, Lcom/android/internal/app/ShutdownThread$9;

    invoke-direct {v4}, Lcom/android/internal/app/ShutdownThread$9;-><init>()V

    iput-object v4, v3, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    .line 528
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    invoke-virtual {v3}, Lcom/android/internal/app/ShutdownThread;->start()V

    goto/16 :goto_0

    .line 460
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v2           #pd:Landroid/app/ProgressDialog;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 506
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v2       #pd:Landroid/app/ProgressDialog;
    :catch_0
    move-exception v1

    .line 507
    .local v1, e:Ljava/lang/SecurityException;
    const-string v3, "ShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v7, v3, Lcom/android/internal/app/ShutdownThread;->mCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_1

    .line 519
    .end local v1           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 520
    .restart local v1       #e:Ljava/lang/SecurityException;
    const-string v3, "ShutdownThread"

    const-string v4, "No permission to acquire wake lock"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    iput-object v7, v3, Lcom/android/internal/app/ShutdownThread;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_2
.end method

.method public static reboot(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5
    .parameter "context"
    .parameter "reason"
    .parameter "confirm"

    .prologue
    .line 243
    sget-object v3, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 244
    :try_start_0
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v2, :cond_0

    .line 245
    const-string v2, "ShutdownThread"

    const-string/jumbo v4, "reboot : shut down already running."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    monitor-exit v3

    .line 255
    :goto_0
    return-void

    .line 248
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    .line 250
    sput-object p1, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    .line 251
    const-string/jumbo v2, "shutdownlogger"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IShutdownLogger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IShutdownLogger;

    move-result-object v0

    .line 252
    .local v0, service:Landroid/app/IShutdownLogger;
    new-instance v1, Landroid/app/ShutdownLoggerManager;

    invoke-direct {v1, v0}, Landroid/app/ShutdownLoggerManager;-><init>(Landroid/app/IShutdownLogger;)V

    .line 253
    .local v1, slm:Landroid/app/ShutdownLoggerManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShutdownThread.reboot(),reason-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ShutdownLoggerManager;->appendLog(Ljava/lang/String;)V

    .line 254
    invoke-static {p0, p2}, Lcom/android/internal/app/ShutdownThread;->shutdown(Landroid/content/Context;Z)V

    goto :goto_0

    .line 248
    .end local v0           #service:Landroid/app/IShutdownLogger;
    .end local v1           #slm:Landroid/app/ShutdownLoggerManager;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 7
    .parameter "reboot"
    .parameter "reason"

    .prologue
    .line 814
    const-string/jumbo v4, "shutdownlogger"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/IShutdownLogger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IShutdownLogger;

    move-result-object v1

    .line 815
    .local v1, service:Landroid/app/IShutdownLogger;
    new-instance v2, Landroid/app/ShutdownLoggerManager;

    invoke-direct {v2, v1}, Landroid/app/ShutdownLoggerManager;-><init>(Landroid/app/IShutdownLogger;)V

    .line 816
    .local v2, slm:Landroid/app/ShutdownLoggerManager;
    const-string v4, "ShutdownThread.rebootOrShutdown()"

    invoke-virtual {v2, v4}, Landroid/app/ShutdownLoggerManager;->appendLog(Ljava/lang/String;)V

    .line 818
    if-eqz p0, :cond_0

    .line 819
    const-string v4, "ShutdownThread"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rebooting, reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :try_start_0
    invoke-static {p1}, Landroid/os/Power;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    :goto_0
    const-string v4, "ShutdownThread"

    const-string v5, "Performing low-level shutdown..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-static {}, Landroid/os/Power;->shutdown()V

    .line 845
    return-void

    .line 822
    :catch_0
    move-exception v0

    .line 823
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ShutdownThread"

    const-string v5, "Reboot failed, will attempt shutdown instead"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 827
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v3, Landroid/os/Vibrator;

    invoke-direct {v3}, Landroid/os/Vibrator;-><init>()V

    .line 829
    .local v3, vibrator:Landroid/os/Vibrator;
    const-wide/16 v4, 0x1f4

    :try_start_1
    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 837
    :goto_1
    const-wide/16 v4, 0x1f4

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 838
    :catch_1
    move-exception v4

    goto :goto_0

    .line 830
    :catch_2
    move-exception v0

    .line 832
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "ShutdownThread"

    const-string v5, "Failed to vibrate during shutdown."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 9
    .parameter "context"
    .parameter "confirm"

    .prologue
    const/4 v8, 0x2

    .line 153
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v7

    .line 154
    :try_start_0
    sget-boolean v6, Lcom/android/internal/app/ShutdownThread;->sIsStarted:Z

    if-eqz v6, :cond_0

    .line 155
    const-string v6, "ShutdownThread"

    const-string/jumbo v8, "shutdown : Request to shutdown already running, returning."

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    monitor-exit v7

    .line 231
    :goto_0
    return-void

    .line 158
    :cond_0
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/internal/app/ShutdownThread;->sIsConfirming:Z

    .line 159
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    const-string/jumbo v6, "shutdownlogger"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IShutdownLogger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IShutdownLogger;

    move-result-object v4

    .line 162
    .local v4, service:Landroid/app/IShutdownLogger;
    new-instance v5, Landroid/app/ShutdownLoggerManager;

    invoke-direct {v5, v4}, Landroid/app/ShutdownLoggerManager;-><init>(Landroid/app/IShutdownLogger;)V

    .line 163
    .local v5, slm:Landroid/app/ShutdownLoggerManager;
    const-string v6, "ShutdownThread.shutdown()"

    invoke-virtual {v5, v6}, Landroid/app/ShutdownLoggerManager;->appendLog(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0012

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 166
    .local v2, longPressBehavior:I
    sget-boolean v6, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v6, :cond_2

    if-ne v2, v8, :cond_1

    const v3, 0x104015f

    .local v3, resourceId:I
    :goto_1
    invoke-static {v3}, Lcom/android/internal/app/ShutdownThread;->getResourceId(I)I

    move-result v3

    sget-object v6, Lcom/android/internal/app/ShutdownThread;->sInstance:Lcom/android/internal/app/ShutdownThread;

    sput-object p0, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/io/File;

    const-string v6, "//system/media/video/shutdown/shutdown.qmg"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v6

    sput-boolean v6, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    .line 180
    const-string v6, "ShutdownThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-eqz p1, :cond_5

    .line 183
    const-string v6, "ShutdownThread"

    const-string v7, "########POWEROFF START WITH CONFIRM######"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x1010355

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    sget-boolean v6, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->getTitleResourceId()I

    move-result v6

    :goto_2
    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040013

    new-instance v8, Lcom/android/internal/app/ShutdownThread$2;

    invoke-direct {v8, p0}, Lcom/android/internal/app/ShutdownThread$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040009

    new-instance v8, Lcom/android/internal/app/ShutdownThread$1;

    invoke-direct {v8}, Lcom/android/internal/app/ShutdownThread$1;-><init>()V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 210
    .local v0, dialog:Landroid/app/AlertDialog;
    new-instance v6, Lcom/android/internal/app/ShutdownThread$3;

    invoke-direct {v6}, Lcom/android/internal/app/ShutdownThread$3;-><init>()V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 218
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7d9

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 219
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 159
    .end local v0           #dialog:Landroid/app/AlertDialog;
    .end local v1           #f:Ljava/io/File;
    .end local v2           #longPressBehavior:I
    .end local v3           #resourceId:I
    .end local v4           #service:Landroid/app/IShutdownLogger;
    .end local v5           #slm:Landroid/app/ShutdownLoggerManager;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 166
    .restart local v2       #longPressBehavior:I
    .restart local v4       #service:Landroid/app/IShutdownLogger;
    .restart local v5       #slm:Landroid/app/ShutdownLoggerManager;
    :cond_1
    const v3, 0x104015d

    goto/16 :goto_1

    :cond_2
    if-ne v2, v8, :cond_3

    const v3, 0x104015e

    goto/16 :goto_1

    :cond_3
    const v3, 0x104015c

    goto/16 :goto_1

    .line 184
    .restart local v1       #f:Ljava/io/File;
    .restart local v3       #resourceId:I
    :cond_4
    const v6, 0x1040157

    goto :goto_2

    .line 222
    :cond_5
    const-string v6, "ShutdownThread"

    const-string v7, "########POWEROFF START WITHOUT CONFIRM######"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-boolean v6, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    sput-boolean v6, Lcom/android/internal/app/ShutdownThread;->mRebootResult:Z

    .line 224
    sget-boolean v6, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    if-eqz v6, :cond_6

    .line 225
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSamsungSequence(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 227
    :cond_6
    invoke-static {p0}, Lcom/android/internal/app/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public static startSoundThreadForPowerOff()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 362
    const/4 v1, 0x0

    .line 364
    .local v1, bExceptionArised:Z
    :try_start_0
    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v7, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    .line 366
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    const-string v8, "//system/media/audio/ui/PowerOff.wav"

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 368
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 369
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 370
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mp:Landroid/media/MediaPlayer;

    new-instance v8, Lcom/android/internal/app/ShutdownThread$6;

    invoke-direct {v8}, Lcom/android/internal/app/ShutdownThread$6;-><init>()V

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 385
    :goto_0
    const/4 v2, 0x0

    .line 387
    .local v2, bFileValid:Z
    new-instance v4, Ljava/io/File;

    const-string v7, "//system/media/audio/ui/PowerOff.wav"

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 388
    .local v4, f:Ljava/io/File;
    const-string v7, "ShutdownThread"

    const-string v8, "Finding sound file : //system/media/audio/ui/PowerOff.wav"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v2

    .line 393
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 399
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 400
    const-string v7, "ShutdownThread"

    const-string v8, "Sound file found"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v5, Ljava/lang/Thread;

    new-instance v7, Lcom/android/internal/app/ShutdownThread$7;

    invoke-direct {v7}, Lcom/android/internal/app/ShutdownThread$7;-><init>()V

    invoke-direct {v5, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 421
    .local v5, soundThread:Ljava/lang/Thread;
    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v6

    .line 422
    .local v6, volume:I
    if-lez v6, :cond_1

    .line 425
    new-instance v7, Ljava/util/concurrent/Semaphore;

    invoke-direct {v7, v9}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v7, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    .line 427
    :try_start_1
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    if-eqz v7, :cond_0

    .line 428
    sget-object v7, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 439
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 451
    .end local v5           #soundThread:Ljava/lang/Thread;
    .end local v6           #volume:I
    :cond_1
    :goto_2
    return-void

    .line 379
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v2           #bFileValid:Z
    .end local v4           #f:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 380
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 381
    const/4 v1, 0x1

    goto :goto_0

    .line 430
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v2       #bFileValid:Z
    .restart local v4       #f:Ljava/io/File;
    .restart local v5       #soundThread:Ljava/lang/Thread;
    .restart local v6       #volume:I
    :catch_1
    move-exception v3

    .line 431
    .local v3, e:Ljava/lang/InterruptedException;
    const/4 v7, 0x0

    sput-object v7, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    .line 432
    const-string v7, "ShutdownThread"

    const-string v8, "Exception occurs while sAnimationSoundEndedLock.acquire()"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 443
    .end local v3           #e:Ljava/lang/InterruptedException;
    .end local v5           #soundThread:Ljava/lang/Thread;
    .end local v6           #volume:I
    :cond_2
    if-nez v2, :cond_3

    .line 444
    const-string v7, "ShutdownThread"

    const-string v8, "Sound file not found, SoundThread is not started !"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_3
    if-eqz v1, :cond_1

    .line 448
    const-string v7, "ShutdownThread"

    const-string v8, "bExceptionArised is true, SoundThread is not started !"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 532
    iget-object v1, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 533
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 534
    iget-object v0, p0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 535
    monitor-exit v1

    .line 536
    return-void

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 33

    .prologue
    .line 547
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v27

    .line 548
    .local v27, phone:Lcom/android/internal/telephony/ITelephony;
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v11

    .line 549
    .local v11, bluetooth:Landroid/bluetooth/IBluetooth;
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v23

    .line 550
    .local v23, mount:Landroid/os/storage/IMountService;
    const-string v2, "activity"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v10

    .line 552
    .local v10, am:Landroid/app/IActivityManager;
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/WifiManager;

    .line 560
    .local v22, mWifiManager:Landroid/net/wifi/WifiManager;
    const-string v2, "ShutdownThread"

    const-string/jumbo v3, "sys.deviceOffReq = 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string/jumbo v2, "sys.deviceOffReq"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string/jumbo v2, "shutdownlogger"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/app/IShutdownLogger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IShutdownLogger;

    move-result-object v31

    .line 566
    .local v31, service:Landroid/app/IShutdownLogger;
    new-instance v32, Landroid/app/ShutdownLoggerManager;

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Landroid/app/ShutdownLoggerManager;-><init>(Landroid/app/IShutdownLogger;)V

    .line 567
    .local v32, slm:Landroid/app/ShutdownLoggerManager;
    const-string v2, "ShutdownThread.run()"

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Landroid/app/ShutdownLoggerManager;->appendLog(Ljava/lang/String;)V

    .line 573
    if-nez v27, :cond_c

    const/16 v28, 0x1

    .line 574
    .local v28, radioOff:Z
    :goto_0
    if-nez v28, :cond_0

    .line 575
    :try_start_0
    const-string v2, "ShutdownThread"

    const-string v3, "Turning off radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :cond_0
    :goto_1
    const/16 v25, 0x0

    .line 588
    .local v25, out:Ljava/io/FileWriter;
    :try_start_1
    new-instance v26, Ljava/io/FileWriter;

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->PATH_TOUCHKEYMODULE_CONTROL:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 589
    .end local v25           #out:Ljava/io/FileWriter;
    .local v26, out:Ljava/io/FileWriter;
    const/16 v2, 0x30

    :try_start_2
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    move-object/from16 v25, v26

    .line 593
    .end local v26           #out:Ljava/io/FileWriter;
    .restart local v25       #out:Ljava/io/FileWriter;
    :goto_2
    if-eqz v25, :cond_1

    .line 594
    :try_start_3
    invoke-virtual/range {v25 .. v25}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 601
    :cond_1
    :goto_3
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->sIsSamsungAnimation:Z

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    if-eqz v2, :cond_3

    .line 603
    :try_start_4
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sAnimationEndedLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 605
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    if-eqz v2, :cond_2

    .line 606
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->sAnimationSoundEndedLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 609
    const-string v2, "ShutdownThread"

    const-string/jumbo v3, "set LCD off"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_2
    const-string v2, "ShutdownThread"

    const-string v3, "animation end detected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_9

    .line 641
    :cond_3
    :goto_4
    new-instance v5, Lcom/android/internal/app/ShutdownThread$10;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/internal/app/ShutdownThread$10;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 655
    .local v5, br:Landroid/content/BroadcastReceiver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mRebootResult:Z

    if-eqz v2, :cond_d

    const-string v2, "1"

    :goto_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    if-eqz v2, :cond_e

    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    :goto_6
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 656
    .local v29, reason:Ljava/lang/String;
    const-string/jumbo v2, "sys.shutdown.requested"

    move-object/from16 v0, v29

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v2, "ShutdownThread"

    const-string v3, "Sending shutdown broadcast..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 663
    sget-object v2, Lcom/android/internal/app/ShutdownThread;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/app/ShutdownThread;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 666
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v18, v2, v6

    .line 667
    .local v18, endTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 668
    :goto_7
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_4

    .line 669
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v13, v18, v6

    .line 670
    .local v13, delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v13, v6

    if-gtz v2, :cond_f

    .line 671
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown broadcast timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    .end local v13           #delay:J
    :cond_4
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 681
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down activity manager..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    if-eqz v10, :cond_5

    .line 684
    const/16 v2, 0x2710

    :try_start_6
    invoke-interface {v10, v2}, Landroid/app/IActivityManager;->shutdown(I)Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_8

    .line 690
    :cond_5
    :goto_8
    const-string v2, "ShutdownThread"

    const-string v3, "before Bluetooth"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    if-eqz v11, :cond_6

    :try_start_7
    invoke-interface {v11}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_10

    :cond_6
    const/4 v12, 0x1

    .line 694
    .local v12, bluetoothOff:Z
    :goto_9
    if-nez v12, :cond_7

    .line 695
    const-string v2, "ShutdownThread"

    const-string v3, "Disabling Bluetooth..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_4

    .line 713
    :cond_7
    :goto_a
    const-string v2, "ShutdownThread"

    const-string v3, "Waiting for Bluetooth and Radio..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    const/16 v21, 0x0

    .local v21, i:I
    :goto_b
    const/16 v2, 0x10

    move/from16 v0, v21

    if-ge v0, v2, :cond_a

    .line 717
    if-nez v12, :cond_8

    .line 719
    :try_start_8
    invoke-interface {v11}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_5

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_11

    const/4 v12, 0x1

    .line 740
    :cond_8
    :goto_c
    const-string v30, ""

    .line 741
    .local v30, repPhoneOff:Ljava/lang/String;
    const-string/jumbo v2, "ril.deviceOffRes"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 743
    if-eqz v30, :cond_9

    const-string v2, "1"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 745
    const-string v2, "ShutdownThread"

    const-string v3, "PhoneOff req resp"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const/16 v28, 0x1

    .line 757
    :cond_9
    if-eqz v28, :cond_12

    if-eqz v12, :cond_12

    .line 758
    const-string v2, "ShutdownThread"

    const-string v3, "Radio and Bluetooth shutdown complete."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    .end local v30           #repPhoneOff:Ljava/lang/String;
    :cond_a
    new-instance v24, Lcom/android/internal/app/ShutdownThread$11;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/app/ShutdownThread$11;-><init>(Lcom/android/internal/app/ShutdownThread;)V

    .line 776
    .local v24, observer:Landroid/os/storage/IMountShutdownObserver;
    const-string v2, "ShutdownThread"

    const-string v3, "Shutting down MountService"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    .line 779
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x4e20

    add-long v16, v2, v6

    .line 780
    .local v16, endShutTime:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v3

    .line 782
    if-eqz v23, :cond_13

    .line 783
    :try_start_9
    invoke-interface/range {v23 .. v24}, Landroid/os/storage/IMountService;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 790
    :goto_d
    :try_start_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDone:Z

    if-nez v2, :cond_b

    .line 791
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v13, v16, v6

    .line 792
    .restart local v13       #delay:J
    const-wide/16 v6, 0x0

    cmp-long v2, v13, v6

    if-gtz v2, :cond_14

    .line 793
    const-string v2, "ShutdownThread"

    const-string v4, "Shutdown wait timed out"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    .end local v13           #delay:J
    :cond_b
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 803
    sget-boolean v2, Lcom/android/internal/app/ShutdownThread;->mRebootResult:Z

    sget-object v3, Lcom/android/internal/app/ShutdownThread;->mRebootReason:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 804
    return-void

    .line 573
    .end local v5           #br:Landroid/content/BroadcastReceiver;
    .end local v12           #bluetoothOff:Z
    .end local v16           #endShutTime:J
    .end local v18           #endTime:J
    .end local v21           #i:I
    .end local v24           #observer:Landroid/os/storage/IMountShutdownObserver;
    .end local v25           #out:Ljava/io/FileWriter;
    .end local v28           #radioOff:Z
    .end local v29           #reason:Ljava/lang/String;
    :cond_c
    const/16 v28, 0x0

    goto/16 :goto_0

    .line 578
    .restart local v28       #radioOff:Z
    :catch_0
    move-exception v20

    .line 579
    .local v20, ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during radio shutdown"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 580
    const/16 v28, 0x1

    goto/16 :goto_1

    .line 590
    .end local v20           #ex:Landroid/os/RemoteException;
    .restart local v25       #out:Ljava/io/FileWriter;
    :catch_1
    move-exception v15

    .line 591
    .local v15, e:Ljava/io/IOException;
    :goto_e
    :try_start_b
    const-string v2, "ShutdownThread"

    const-string v3, "IOException during FileWriter out.write(\'0\') "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_2

    .line 596
    .end local v15           #e:Ljava/io/IOException;
    :catch_2
    move-exception v15

    .line 597
    .restart local v15       #e:Ljava/io/IOException;
    const-string v2, "ShutdownThread"

    const-string v3, "IOException during FileWriter out.close() "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 655
    .end local v15           #e:Ljava/io/IOException;
    .restart local v5       #br:Landroid/content/BroadcastReceiver;
    :cond_d
    const-string v2, "0"

    goto/16 :goto_5

    :cond_e
    const-string v2, ""

    goto/16 :goto_6

    .line 675
    .restart local v13       #delay:J
    .restart local v18       #endTime:J
    .restart local v29       #reason:Ljava/lang/String;
    :cond_f
    :try_start_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_7

    .line 676
    :catch_3
    move-exception v2

    goto/16 :goto_7

    .line 679
    .end local v13           #delay:J
    :catchall_0
    move-exception v2

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    throw v2

    .line 692
    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_9

    .line 698
    :catch_4
    move-exception v20

    .line 699
    .restart local v20       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 700
    const/4 v12, 0x1

    .restart local v12       #bluetoothOff:Z
    goto/16 :goto_a

    .line 719
    .end local v20           #ex:Landroid/os/RemoteException;
    .restart local v21       #i:I
    :cond_11
    const/4 v12, 0x0

    goto/16 :goto_c

    .line 721
    :catch_5
    move-exception v20

    .line 722
    .restart local v20       #ex:Landroid/os/RemoteException;
    const-string v2, "ShutdownThread"

    const-string v3, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 723
    const/4 v12, 0x1

    goto/16 :goto_c

    .line 762
    .end local v20           #ex:Landroid/os/RemoteException;
    .restart local v30       #repPhoneOff:Ljava/lang/String;
    :cond_12
    const-string v2, "ShutdownThread"

    const-string v3, "before SystemClock.sleep(PHONE_STATE_POLL_SLEEP_MSEC)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 764
    const-string v2, "ShutdownThread"

    const-string v3, "after SystemClock.sleep(PHONE_STATE_POLL_SLEEP_MSEC)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const-string v2, "ShutdownThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Phone off retry:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "radioOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bluetoothOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_b

    .line 785
    .end local v30           #repPhoneOff:Ljava/lang/String;
    .restart local v16       #endShutTime:J
    .restart local v24       #observer:Landroid/os/storage/IMountShutdownObserver;
    :cond_13
    :try_start_e
    const-string v2, "ShutdownThread"

    const-string v4, "MountService unavailable for shutdown"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_d

    .line 787
    :catch_6
    move-exception v15

    .line 788
    .local v15, e:Ljava/lang/Exception;
    :try_start_f
    const-string v2, "ShutdownThread"

    const-string v4, "Exception during MountService shutdown"

    invoke-static {v2, v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 801
    .end local v15           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    throw v2

    .line 797
    .restart local v13       #delay:J
    :cond_14
    :try_start_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ShutdownThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v2, v13, v14}, Ljava/lang/Object;->wait(J)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_d

    .line 798
    :catch_7
    move-exception v2

    goto/16 :goto_d

    .line 685
    .end local v12           #bluetoothOff:Z
    .end local v13           #delay:J
    .end local v16           #endShutTime:J
    .end local v21           #i:I
    .end local v24           #observer:Landroid/os/storage/IMountShutdownObserver;
    :catch_8
    move-exception v2

    goto/16 :goto_8

    .line 636
    .end local v5           #br:Landroid/content/BroadcastReceiver;
    .end local v18           #endTime:J
    .end local v29           #reason:Ljava/lang/String;
    :catch_9
    move-exception v2

    goto/16 :goto_4

    .line 590
    .end local v25           #out:Ljava/io/FileWriter;
    .restart local v26       #out:Ljava/io/FileWriter;
    :catch_a
    move-exception v15

    move-object/from16 v25, v26

    .end local v26           #out:Ljava/io/FileWriter;
    .restart local v25       #out:Ljava/io/FileWriter;
    goto/16 :goto_e
.end method

.method private static getResourceId(I)I
    .locals 1
    .parameter "id"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v0, :cond_0

    const/high16 p0, 0x30c

    .end local p0
    :cond_0
    return p0
.end method

.method private static getTitleResourceId()I
    .locals 1
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    sget-boolean v0, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v0, :cond_0

    const v0, 0x1040318

    :goto_0
    return v0

    :cond_0
    const v0, 0x1040124

    goto :goto_0
.end method

.method private static createShutDownDialog(Landroid/content/Context;)V
    .locals 8
    .parameter "context"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    new-instance v2, Landroid/app/Dialog;

    const v6, 0x10300f1

    invoke-direct {v2, p0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .local v2, bootMsgDialog:Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .local v3, layoutInflater:Landroid/view/LayoutInflater;
    const v6, 0x303002e

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .local v5, view:Landroid/view/View;
    const v6, 0x30b0021

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .local v4, msgText:Landroid/widget/TextView;
    const v6, 0x30b0022

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .local v1, animationView:Landroid/widget/ImageView;
    sget-boolean v6, Lcom/android/internal/app/ShutdownThread;->mReboot:Z

    if-eqz v6, :cond_0

    const v6, 0x30c0001

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x7e5

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .local v0, animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    return-void

    .end local v0           #animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    const v6, 0x104015b

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
