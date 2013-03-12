.class Lcom/android/server/DockObserver;
.super Landroid/os/UEventObserver;
.source "DockObserver.java"


# static fields
.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/dock"

.field private static final LOG:Z

.field private static final MSG_DOCK_STATE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final VIBRATION_DURATION:I

.field private final mContext:Landroid/content/Context;

.field private mDockState:I

.field private final mHandler:Landroid/os/Handler;

.field private mPowerManager:Lcom/android/server/PowerManagerService;

.field private mPreviousDockState:I

.field private mSmartDockState:I

.field private mSystemReady:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private sfx:Landroid/media/Ringtone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/android/server/DockObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    .locals 2
    .parameter "context"
    .parameter "pm"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 62
    iput v0, p0, Lcom/android/server/DockObserver;->mDockState:I

    .line 63
    iput v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 65
    iput v0, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    .line 72
    iput-object v1, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 74
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/DockObserver;->VIBRATION_DURATION:I

    .line 75
    iput-object v1, p0, Lcom/android/server/DockObserver;->sfx:Landroid/media/Ringtone;

    .line 185
    new-instance v0, Lcom/android/server/DockObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    .line 78
    iput-object p1, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/android/server/DockObserver;->mPowerManager:Lcom/android/server/PowerManagerService;

    .line 80
    invoke-direct {p0}, Lcom/android/server/DockObserver;->init()V

    .line 82
    const-string v0, "DEVPATH=/devices/virtual/switch/dock"

    invoke-virtual {p0, v0}, Lcom/android/server/DockObserver;->startObserving(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/DockObserver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/DockObserver;->mDockState:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/DockObserver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/DockObserver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/DockObserver;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    return v0
.end method

.method private final init()V
    .locals 6

    .prologue
    const/16 v4, 0x400

    .line 151
    new-array v0, v4, [C

    .line 154
    .local v0, buffer:[C
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v4, "/sys/class/switch/dock/state"

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 155
    .local v2, file:Ljava/io/FileReader;
    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-virtual {v2, v0, v4, v5}, Ljava/io/FileReader;->read([CII)I

    move-result v3

    .line 156
    .local v3, len:I
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 157
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/server/DockObserver;->mDockState:I

    iput v4, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 159
    iget v4, p0, Lcom/android/server/DockObserver;->mDockState:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 160
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    .line 161
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/DockObserver;->mDockState:I

    iput v4, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    .end local v2           #file:Ljava/io/FileReader;
    .end local v3           #len:I
    :cond_0
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, e:Ljava/io/FileNotFoundException;
    sget-object v4, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v5, "This kernel does not have dock station support"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 166
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 167
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private final update()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 183
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x7

    .line 88
    sget-object v3, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dock UEVENT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    monitor-enter p0

    .line 93
    :try_start_0
    const-string v3, "SWITCH_STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 95
    .local v1, newState:I
    const/16 v3, 0x8

    if-ne v1, v3, :cond_2

    .line 96
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    .line 97
    const/4 v1, 0x1

    .line 102
    :goto_0
    iget v3, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eq v1, v3, :cond_1

    .line 103
    iget v3, p0, Lcom/android/server/DockObserver;->mDockState:I

    iput v3, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 104
    iput v1, p0, Lcom/android/server/DockObserver;->mDockState:I

    .line 105
    iget-boolean v3, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz v3, :cond_1

    .line 116
    iget-object v3, p0, Lcom/android/server/DockObserver;->mPowerManager:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/PowerManagerService;->userActivityWithForce(JZZ)V

    .line 121
    iget v3, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-ne v3, v8, :cond_3

    .line 123
    iget-object v3, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_0

    .line 124
    iget-object v3, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 125
    .local v2, pmAudio:Landroid/os/PowerManager;
    const/4 v3, 0x6

    const-string v4, "AudioDockLock"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 127
    iget-object v3, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 128
    sget-object v3, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v4, "acquire wakelock for audiodock"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    .end local v2           #pmAudio:Landroid/os/PowerManager;
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/server/DockObserver;->update()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .end local v1           #newState:I
    :cond_1
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    return-void

    .line 99
    .restart local v1       #newState:I
    :cond_2
    const/4 v3, 0x0

    :try_start_2
    iput v3, p0, Lcom/android/server/DockObserver;->mSmartDockState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 144
    .end local v1           #newState:I
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_3
    sget-object v3, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse switch state from event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 147
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 131
    .restart local v1       #newState:I
    :cond_3
    :try_start_4
    iget v3, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    if-ne v3, v8, :cond_0

    iget v3, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-nez v3, :cond_0

    .line 133
    iget-object v3, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_0

    .line 134
    iget-object v3, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 135
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 136
    sget-object v3, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v4, "release wakelock for audiodock"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method systemReady()V
    .locals 1

    .prologue
    .line 172
    monitor-enter p0

    .line 174
    :try_start_0
    iget v0, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/android/server/DockObserver;->update()V

    .line 177
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    .line 178
    monitor-exit p0

    .line 179
    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
