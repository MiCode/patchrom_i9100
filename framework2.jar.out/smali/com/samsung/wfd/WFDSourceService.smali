.class public Lcom/samsung/wfd/WFDSourceService;
.super Landroid/app/Service;
.source "WFDSourceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_ID:I = 0x64

.field private static final TAG:Ljava/lang/String; = "WFDSourceService"

.field private static mContext:Landroid/content/Context;

.field private static mCpuLockEnabled:Z

.field private static m_bAlive:Z


# instance fields
.field private final WDTS_PAUSE:I

.field private final WDTS_PLAY:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBlockedRemoteEvents:Z

.field private mConnectionType:I

.field private mCurrentWDState:I

.field private mDVFSLock:Landroid/os/PowerManager$DVFSLock;

.field private mFrequency:I

.field private mPauseMode:Z

.field private mPhoneCall:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrivateEventsMode:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenLock:Z

.field private final mWfdSourceBinder:Lcom/samsung/wfd/IWfdSourceService$Stub;

.field private mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 100
    sput-boolean v0, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 123
    sput-boolean v0, Lcom/samsung/wfd/WFDSourceService;->mCpuLockEnabled:Z

    .line 126
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 102
    iput v1, p0, Lcom/samsung/wfd/WFDSourceService;->WDTS_PLAY:I

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/wfd/WFDSourceService;->WDTS_PAUSE:I

    .line 108
    iput v1, p0, Lcom/samsung/wfd/WFDSourceService;->mFrequency:I

    .line 110
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 113
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mBlockedRemoteEvents:Z

    .line 114
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mPrivateEventsMode:Z

    .line 115
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mScreenLock:Z

    .line 116
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mPhoneCall:Z

    .line 117
    iput-boolean v1, p0, Lcom/samsung/wfd/WFDSourceService;->mPauseMode:Z

    .line 121
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mPowerManager:Landroid/os/PowerManager;

    .line 122
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    .line 125
    iput-object v2, p0, Lcom/samsung/wfd/WFDSourceService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    iput v1, p0, Lcom/samsung/wfd/WFDSourceService;->mConnectionType:I

    .line 156
    new-instance v0, Lcom/samsung/wfd/WFDSourceService$1;

    invoke-direct {v0, p0}, Lcom/samsung/wfd/WFDSourceService$1;-><init>(Lcom/samsung/wfd/WFDSourceService;)V

    iput-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdSourceBinder:Lcom/samsung/wfd/IWfdSourceService$Stub;

    .line 349
    return-void
.end method

.method private StartRTSP()V
    .locals 5

    .prologue
    .line 532
    const v0, 0xc000

    .line 538
    .local v0, lListeningPort:I
    const-string v1, "WFDSourceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wfd native start port :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v1, 0x1

    const/16 v2, 0x500

    const/16 v3, 0x2d0

    iget v4, p0, Lcom/samsung/wfd/WFDSourceService;->mFrequency:I

    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/wfd/WFDNative;->start(IIIII)Z

    .line 542
    invoke-direct {p0}, Lcom/samsung/wfd/WFDSourceService;->startForegroundCompat()V

    .line 543
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/wfd/WFDSourceService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget v0, p0, Lcom/samsung/wfd/WFDSourceService;->mConnectionType:I

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/wfd/WFDSourceService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    iput p1, p0, Lcom/samsung/wfd/WFDSourceService;->mConnectionType:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/wfd/WFDSourceService;III)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/wfd/WFDSourceService;->setRtpTransport(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/wfd/WFDSourceService;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public static isAlive()Z
    .locals 1

    .prologue
    .line 589
    sget-boolean v0, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    return v0
.end method

.method private setRtpTransport(III)Z
    .locals 1
    .parameter "transportType"
    .parameter "bufferLengthMs"
    .parameter "port"

    .prologue
    .line 497
    invoke-static {p1, p2, p3}, Lcom/samsung/wfd/WFDNative;->setRtpTransport(III)Z

    move-result v0

    .line 499
    .local v0, nRet:Z
    return v0
.end method

.method private startForegroundCompat()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 601
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 602
    .local v2, notification:Landroid/app/Notification;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.wfd.WFDSourceService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 604
    .local v1, intent:Landroid/content/Intent;
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 605
    .local v0, contentIntent:Landroid/app/PendingIntent;
    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v2, p0, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 606
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 608
    const/16 v3, 0x64

    invoke-virtual {p0, v3, v2}, Lcom/samsung/wfd/WFDSourceService;->startForeground(ILandroid/app/Notification;)V

    .line 609
    return-void
.end method

.method private stopForegroundCompat()V
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/wfd/WFDSourceService;->stopForeground(Z)V

    .line 614
    return-void
.end method

.method private static sysfsWrite(Ljava/lang/String;I)Z
    .locals 6
    .parameter "sysfs"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 130
    const/4 v2, 0x0

    .line 134
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 141
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 152
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :goto_0
    return v4

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 142
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 143
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 145
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 146
    :catch_2
    move-exception v1

    .line 147
    .local v1, err:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/lang/Exception;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x0

    .line 189
    const-string v3, "WFDSourceService"

    const-string v4, "Bind!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v3, "freq"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/samsung/wfd/WFDSourceService;->mFrequency:I

    .line 192
    const-string v3, "WFDSourceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "freq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/wfd/WFDSourceService;->mFrequency:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/samsung/wfd/WFDSourceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 229
    .local v0, WifiMgr:Landroid/net/wifi/WifiManager;
    const-string v3, "WFDSourceService"

    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 230
    iget-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 231
    const-string v3, "WFDSourceService"

    const-string v4, "wifi lock acquire!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iput v6, p0, Lcom/samsung/wfd/WFDSourceService;->mCurrentWDState:I

    .line 239
    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 241
    invoke-virtual {p0}, Lcom/samsung/wfd/WFDSourceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 242
    .local v1, context:Landroid/content/Context;
    sput-object v1, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    .line 243
    invoke-static {v1}, Lcom/samsung/wfd/WFDNative;->setContext(Landroid/content/Context;)V

    .line 244
    sget-object v3, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    check-cast v3, Landroid/media/AudioManager;

    iput-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mAudioManager:Landroid/media/AudioManager;

    .line 246
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 248
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v3, "com.samsung.wfd.LAUNCH_WFD_UPDATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v3, "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v3, "android.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v3, "android.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v3, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v3, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v3, "android.intent.action.WFD_PAUSE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v3, "android.intent.action.WFD_RESUME"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const-string v3, "android.intent.action.WFD_STOP"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    new-instance v3, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/samsung/wfd/WFDSourceService$WfdStateReceiver;-><init>(Lcom/samsung/wfd/WFDSourceService;Lcom/samsung/wfd/WFDSourceService$1;)V

    iput-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 261
    iget-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    invoke-direct {p0}, Lcom/samsung/wfd/WFDSourceService;->StartRTSP()V

    .line 267
    iget-object v3, p0, Lcom/samsung/wfd/WFDSourceService;->mWfdSourceBinder:Lcom/samsung/wfd/IWfdSourceService$Stub;

    return-object v3
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 322
    const-string v0, "WFDSourceService"

    const-string v1, "create WFD Source service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnCreate thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/wfd/WFDSourceService;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 549
    const-string v0, "WFDSourceService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 505
    const-string v0, "WFDSourceService"

    const-string v1, "onLowMemory!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 507
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 508
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 512
    const-string v0, "WFDSourceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 528
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .parameter "arg0"

    .prologue
    .line 273
    const-string v1, "WFDSourceService"

    const-string v2, "unBind!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-virtual {p0}, Lcom/samsung/wfd/WFDSourceService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 277
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Lcom/samsung/wfd/WFDSourceService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 298
    iget-object v1, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/samsung/wfd/WFDSourceService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 301
    :cond_0
    const-string v1, "WFDSourceService"

    const-string v2, "wifi lock release!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/wfd/WFDSourceService;->m_bAlive:Z

    .line 310
    invoke-static {}, Lcom/samsung/wfd/WFDNative;->stop()Z

    .line 312
    invoke-direct {p0}, Lcom/samsung/wfd/WFDSourceService;->stopForegroundCompat()V

    .line 314
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method teardownForAudioOut()V
    .locals 3

    .prologue
    .line 593
    const-string v1, "WFDSourceService"

    const-string v2, "teardownForAudioOut"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WFD_TEARDOWN_FOR_AUDIO_OUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 595
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 596
    sget-object v1, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/wfd/WFDSourceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 597
    :cond_0
    return-void
.end method
