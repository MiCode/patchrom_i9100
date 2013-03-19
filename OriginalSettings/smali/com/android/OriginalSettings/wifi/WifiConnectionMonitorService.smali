.class public Lcom/android/settings/wifi/WifiConnectionMonitorService;
.super Landroid/app/Service;
.source "WifiConnectionMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;,
        Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field mBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

.field private mConnectionMonitorThread:Ljava/lang/Thread;

.field mContext:Landroid/content/Context;

.field private mLowSignalTimeCount:I

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mThreasholdObserver:Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;

.field private mThreshold:I

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 29
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    .line 58
    new-instance v0, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConnectionMonitorService$1;-><init>(Lcom/android/settings/wifi/WifiConnectionMonitorService;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 351
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiConnectionMonitorService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiConnectionMonitorService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreshold:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/WifiConnectionMonitorService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreshold:I

    return p1
.end method

.method private isWifiSettingScreen(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 348
    sget-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    return v0
.end method


# virtual methods
.method addBlackList(Ljava/lang/String;)V
    .locals 3
    .parameter "ssid"

    .prologue
    .line 251
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiConnectionMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addBlackList, ssid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "WifiConnectionMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already in the blacklist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->printBlackList()V

    goto :goto_0

    .line 260
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->startSearch()V

    goto :goto_1
.end method

.method doWifiConnectionMonitoringPolicy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 291
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 293
    .local v0, wifiInfo:Landroid/net/wifi/WifiInfo;
    sget-boolean v1, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiConnectionMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rssi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mThreshold: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreshold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    iget v2, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreshold:I

    if-gt v1, v2, :cond_2

    .line 296
    iget v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    .line 302
    iget v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    .line 303
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->isWifiSettingScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 304
    sget-boolean v1, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "WifiConnectionMonitorService"

    const-string v2, "WifiSettingScreen, skip disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_1
    :goto_0
    return-void

    .line 298
    :cond_2
    iput v4, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    goto :goto_0

    .line 308
    :cond_3
    const-string v1, "WifiConnectionMonitorService"

    const-string v2, "Disconnect and add to blacklist"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    monitor-enter v2

    .line 311
    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->addBlackList(Ljava/lang/String;)V

    .line 312
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 314
    iput v4, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 166
    sget-boolean v1, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiConnectionMonitorService"

    const-string v2, "Service onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mContext:Landroid/content/Context;

    .line 170
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "ConnectionMonitorThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorThread:Ljava/lang/Thread;

    .line 171
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 172
    new-instance v2, Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorThread:Ljava/lang/Thread;

    check-cast v1, Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;-><init>(Lcom/android/settings/wifi/WifiConnectionMonitorService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    .line 175
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 177
    new-instance v1, Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;-><init>(Lcom/android/settings/wifi/WifiConnectionMonitorService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreasholdObserver:Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;

    .line 178
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreasholdObserver:Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;->register()V

    .line 180
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 181
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v1, "android.net.wifi.REMOVE_BLACKLIST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 189
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 205
    const-string v0, "WifiConnectionMonitorService"

    const-string v1, "Service Destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mThreasholdObserver:Lcom/android/settings/wifi/WifiConnectionMonitorService$ThreasholdObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->stopMonitor()V

    .line 210
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 211
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 212
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 193
    const-string v0, "WifiConnectionMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand,  startId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v0, 0x1

    return v0
.end method

.method printBlackList()V
    .locals 3

    .prologue
    .line 287
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiConnectionMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Blacklist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    return-void
.end method

.method removeBlackList(Ljava/lang/String;)V
    .locals 3
    .parameter "ssid"

    .prologue
    .line 268
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "WifiConnectionMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeBlackList, ssid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 275
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 276
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->stopSearch()V

    .line 283
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConnectionMonitorService;->printBlackList()V

    goto :goto_0

    .line 280
    :cond_4
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "WifiConnectionMonitorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not in the blacklist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method startMonitor()V
    .locals 4

    .prologue
    const/16 v3, 0x3e9

    .line 215
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mLowSignalTimeCount:I

    .line 217
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;->removeMessages(I)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 222
    :cond_0
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiConnectionMonitorService"

    const-string v1, "start monitoring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_1
    return-void
.end method

.method startSearch()V
    .locals 2

    .prologue
    const/16 v1, 0x3ea

    .line 234
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;->removeMessages(I)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;->sendEmptyMessage(I)Z

    .line 239
    :cond_0
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiConnectionMonitorService"

    const-string v1, "start searching"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_1
    return-void
.end method

.method stopMonitor()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;->removeMessages(I)V

    .line 230
    :cond_0
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiConnectionMonitorService"

    const-string v1, "stop monitoring"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_1
    return-void
.end method

.method stopSearch()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->mConnectionMonitorHandler:Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiConnectionMonitorService$ConnectionMonitoringHandler;->removeMessages(I)V

    .line 247
    :cond_0
    sget-boolean v0, Lcom/android/settings/wifi/WifiConnectionMonitorService;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "WifiConnectionMonitorService"

    const-string v1, "stop seraching"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_1
    return-void
.end method
