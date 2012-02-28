.class public Lcom/android/server/TvoutService;
.super Landroid/os/ITvoutService$Stub;
.source "TvoutService.java"


# static fields
.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "TvoutService_Java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTvout:Landroid/hardware/Tvout;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/os/ITvoutService$Stub;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 144
    new-instance v0, Lcom/android/server/TvoutService$1;

    invoke-direct {v0, p0}, Lcom/android/server/TvoutService$1;-><init>(Lcom/android/server/TvoutService;)V

    iput-object v0, p0, Lcom/android/server/TvoutService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    const-string v0, "TvoutService_Java"

    const-string v1, "TvoutService +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v0, Landroid/hardware/Tvout;

    invoke-direct {v0}, Landroid/hardware/Tvout;-><init>()V

    iput-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    .line 68
    iput-object p1, p0, Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;

    .line 70
    invoke-direct {p0}, Lcom/android/server/TvoutService;->TvoutRegistIntentReceiver()V

    .line 71
    iget-object v0, p0, Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/android/server/TvoutService;->TvoutInitWakeMode(Landroid/content/Context;I)V

    .line 74
    const-string v0, "TvoutService_Java"

    const-string v1, "TvoutService -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method private TvoutInitWakeMode(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "nMode"

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, wakelockHeld:Z
    iget-object v2, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 94
    const-string v2, "TvoutService_Java"

    const-string v3, "mWakeLock is not null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v2, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    const/4 v1, 0x1

    .line 98
    iget-object v2, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 100
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 104
    :cond_1
    const-string v2, "TvoutService_Java"

    const-string v3, "TvoutInitWakeMode is called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 107
    .local v0, pm:Landroid/os/PowerManager;
    const/high16 v2, 0x2000

    or-int/2addr v2, p2

    const-string v3, "TvoutService_Java"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 110
    const-string v2, "TvoutService_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TvoutInitWakeMode set the mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v2, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 114
    if-eqz v1, :cond_2

    .line 116
    iget-object v2, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 118
    :cond_2
    return-void
.end method

.method private TvoutRegistIntentReceiver()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 82
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/TvoutService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    return-void
.end method

.method private TvoutSetWakeLock(Z)V
    .locals 2
    .parameter "bStatus"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 124
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    const-string v0, "TvoutService_Java"

    const-string v1, "Acquire the lock for Wake status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "TvoutService_Java"

    const-string v1, "release the lock for Wake status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 140
    :cond_2
    const-string v0, "TvoutService_Java"

    const-string v1, "mWakeLock is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/TvoutService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/TvoutService;->TvoutSetWakeLock(Z)V

    return-void
.end method


# virtual methods
.method public TvoutGetCableStatus()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0}, Landroid/hardware/Tvout;->TvoutGetCableStatus()Z

    move-result v0

    return v0
.end method

.method public TvoutGetResolution()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0}, Landroid/hardware/Tvout;->TvoutGetResolution()I

    move-result v0

    return v0
.end method

.method public TvoutGetStatus()Z
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0}, Landroid/hardware/Tvout;->TvoutGetStatus()Z

    move-result v0

    return v0
.end method

.method public TvoutGetSubtitleStatus()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0}, Landroid/hardware/Tvout;->TvoutGetSubtitleStatus()Z

    move-result v0

    return v0
.end method

.method public TvoutGetSuspendStatus()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0}, Landroid/hardware/Tvout;->TvoutGetSuspendStatus()Z

    move-result v0

    return v0
.end method

.method public TvoutPostSubtitle(Ljava/lang/String;I)Z
    .locals 1
    .parameter "strSubtitle"
    .parameter "nFontSize"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Tvout;->TvoutPostSubtitle(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public TvoutPostSuspend(Ljava/lang/String;)Z
    .locals 1
    .parameter "strSuspend"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutPostSuspend(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public TvoutSetCableStatus(Z)Z
    .locals 1
    .parameter "bStatus"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutSetCableStatus(Z)Z

    move-result v0

    return v0
.end method

.method public TvoutSetDefaultString()Z
    .locals 4

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;

    const v2, 0x10404ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, strDefault:Ljava/lang/String;
    const-string v1, "TvoutService_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TvoutSetDefaultString : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v1, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v1, v0}, Landroid/hardware/Tvout;->TvoutSetDefaultString(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public TvoutSetOutputMode(I)Z
    .locals 1
    .parameter "nOutputMode"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutSetOutputMode(I)Z

    move-result v0

    return v0
.end method

.method public TvoutSetResolution(I)Z
    .locals 1
    .parameter "nResolution"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutSetResolution(I)Z

    move-result v0

    return v0
.end method

.method public TvoutSetStatus(Z)Z
    .locals 1
    .parameter "bStatus"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutSetStatus(Z)Z

    move-result v0

    return v0
.end method

.method public TvoutSetSubtitleStatus(Z)Z
    .locals 1
    .parameter "bStatus"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutSetSubtitleStatus(Z)Z

    move-result v0

    return v0
.end method

.method public TvoutSetSuspendStatus(Z)Z
    .locals 1
    .parameter "bStatus"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutSetSuspendStatus(Z)Z

    move-result v0

    return v0
.end method
