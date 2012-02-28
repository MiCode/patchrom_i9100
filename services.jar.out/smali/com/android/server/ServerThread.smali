.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DIR_ENCRYPTION:Z = false

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "ro.secdirenc"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 991
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 992
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 994
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 996
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 104
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    return-void
.end method

.method public run()V
    .locals 124

    .prologue
    .line 110
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 113
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 115
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 118
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 119
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 123
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v99

    .line 125
    .local v99, shutdownAction:Ljava/lang/String;
    if-eqz v99, :cond_0

    invoke-virtual/range {v99 .. v99}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 126
    const/4 v3, 0x0

    move-object/from16 v0, v99

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_d

    const/16 v95, 0x1

    .line 129
    .local v95, reboot:Z
    :goto_0
    invoke-virtual/range {v99 .. v99}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_e

    .line 130
    const/4 v3, 0x1

    invoke-virtual/range {v99 .. v99}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v99

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v94

    .line 135
    .local v94, reason:Ljava/lang/String;
    :goto_1
    const-string v3, "shutdownlogger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/IShutdownLogger$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IShutdownLogger;

    move-result-object v98

    .line 136
    .local v98, service:Landroid/app/IShutdownLogger;
    new-instance v102, Landroid/app/ShutdownLoggerManager;

    move-object/from16 v0, v102

    move-object/from16 v1, v98

    invoke-direct {v0, v1}, Landroid/app/ShutdownLoggerManager;-><init>(Landroid/app/IShutdownLogger;)V

    .line 137
    .local v102, slm:Landroid/app/ShutdownLoggerManager;
    const-string v3, "ServerThread.run()"

    move-object/from16 v0, v102

    invoke-virtual {v0, v3}, Landroid/app/ShutdownLoggerManager;->appendLog(Ljava/lang/String;)V

    .line 138
    move/from16 v0, v95

    move-object/from16 v1, v94

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 142
    .end local v94           #reason:Ljava/lang/String;
    .end local v95           #reboot:Z
    .end local v98           #service:Landroid/app/IShutdownLogger;
    .end local v102           #slm:Landroid/app/ShutdownLoggerManager;
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 143
    .local v68, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v68

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v67, 0x0

    .line 146
    .local v67, factoryTest:I
    :goto_2
    const/16 v74, 0x0

    .line 147
    .local v74, lights:Lcom/android/server/LightsService;
    const/16 v93, 0x0

    .line 148
    .local v93, power:Lcom/android/server/PowerManagerService;
    const/16 v45, 0x0

    .line 149
    .local v45, battery:Lcom/android/server/BatteryService;
    const/16 v39, 0x0

    .line 150
    .local v39, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 151
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 152
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v84, 0x0

    .line 153
    .local v84, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v53, 0x0

    .line 154
    .local v53, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v121, 0x0

    .line 155
    .local v121, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v119, 0x0

    .line 156
    .local v119, wifi:Lcom/android/server/WifiService;
    const/16 v92, 0x0

    .line 157
    .local v92, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 158
    .local v4, context:Landroid/content/Context;
    const/16 v123, 0x0

    .line 159
    .local v123, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v47, 0x0

    .line 160
    .local v47, bluetooth:Landroid/server/BluetoothService;
    const/16 v49, 0x0

    .line 161
    .local v49, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v43, 0x0

    .line 162
    .local v43, avrcp:Landroid/server/AvrcpStubService;
    const/16 v78, 0x0

    .line 163
    .local v78, map:Landroid/server/MAPRecordService;
    const/16 v62, 0x0

    .line 164
    .local v62, dock:Lcom/android/server/DockObserver;
    const/16 v105, 0x0

    .line 165
    .local v105, thermistor:Lcom/android/server/ThermistorObserver;
    const/16 v114, 0x0

    .line 166
    .local v114, usb:Lcom/android/server/usb/UsbService;
    const/16 v112, 0x0

    .line 167
    .local v112, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v96, 0x0

    .line 168
    .local v96, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v107, 0x0

    .line 169
    .local v107, throttle:Lcom/android/server/ThrottleService;
    const/16 v86, 0x0

    .line 171
    .local v86, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v59, 0x0

    .line 172
    .local v59, dEncService:Lcom/android/server/DirEncryptService;
    const/16 v100, 0x0

    .line 176
    .local v100, shutdownlogger:Lcom/android/server/ShutdownLoggerService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyService;

    invoke-direct {v9}, Lcom/android/server/EntropyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 179
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_48

    .line 181
    .end local v93           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 183
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static/range {v67 .. v67}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 186
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 189
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 191
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 194
    .local v58, cryptState:Ljava/lang/String;
    const/16 v90, 0x0

    .line 195
    .local v90, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 196
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/16 v90, 0x1

    .line 203
    :cond_1
    :goto_3
    if-eqz v67, :cond_11

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, v90

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v92

    .line 206
    const/16 v69, 0x0

    .line 208
    .local v69, firstBoot:Z
    :try_start_2
    invoke-interface/range {v92 .. v92}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_34
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v69

    .line 212
    :goto_5
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 214
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 218
    :try_start_4
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v3, "account"

    new-instance v9, Landroid/accounts/AccountManagerService;

    invoke-direct {v9, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 225
    :goto_6
    :try_start_5
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v3, 0x1

    move/from16 v0, v67

    if-ne v0, v3, :cond_12

    const/4 v3, 0x1

    :goto_7
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    .line 230
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 233
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v75, Lcom/android/server/MiuiLightsService;

    move-object/from16 v0, v75

    invoke-direct {v0, v4}, Lcom/android/server/MiuiLightsService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 236
    .end local v74           #lights:Lcom/android/server/LightsService;
    .local v75, lights:Lcom/android/server/LightsService;
    :try_start_6
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v75

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_49

    .line 238
    .end local v45           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_7
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 240
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const-string v3, "vibrator"

    new-instance v9, Lcom/android/server/VibratorService;

    invoke-direct {v9, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 244
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v75

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 246
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_4a

    .line 248
    .end local v39           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_8
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 250
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 254
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v3, 0x1

    move/from16 v0, v67

    if-eq v0, v3, :cond_13

    const/4 v3, 0x1

    move v9, v3

    :goto_8
    if-nez v69, :cond_14

    const/4 v3, 0x1

    :goto_9
    invoke-static {v4, v6, v9, v3}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v123

    .line 258
    const-string v3, "window"

    move-object/from16 v0, v123

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 260
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v123

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 265
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 266
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    :goto_a
    move-object/from16 v74, v75

    .line 302
    .end local v58           #cryptState:Ljava/lang/String;
    .end local v69           #firstBoot:Z
    .end local v75           #lights:Lcom/android/server/LightsService;
    .end local v90           #onlyCore:Z
    .restart local v74       #lights:Lcom/android/server/LightsService;
    :goto_b
    :try_start_9
    const-string v3, "SystemServer"

    const-string v9, "ShutdownLogger Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    new-instance v101, Lcom/android/server/ShutdownLoggerService;

    invoke-direct/range {v101 .. v101}, Lcom/android/server/ShutdownLoggerService;-><init>()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 304
    .end local v100           #shutdownlogger:Lcom/android/server/ShutdownLoggerService;
    .local v101, shutdownlogger:Lcom/android/server/ShutdownLoggerService;
    :try_start_a
    const-string v3, "shutdownlogger"

    move-object/from16 v0, v101

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_47

    move-object/from16 v100, v101

    .line 312
    .end local v101           #shutdownlogger:Lcom/android/server/ShutdownLoggerService;
    .restart local v100       #shutdownlogger:Lcom/android/server/ShutdownLoggerService;
    :goto_c
    const/16 v60, 0x0

    .line 314
    .local v60, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v65, 0x0

    .line 316
    .local v65, enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v103, 0x0

    .line 317
    .local v103, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v71, 0x0

    .line 318
    .local v71, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v40, 0x0

    .line 319
    .local v40, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v88, 0x0

    .line 320
    .local v88, notification:Lcom/android/server/NotificationManagerService;
    const/16 v117, 0x0

    .line 321
    .local v117, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v76, 0x0

    .line 322
    .local v76, location:Lcom/android/server/LocationManagerService;
    const/16 v56, 0x0

    .line 323
    .local v56, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v109, 0x0

    .line 326
    .local v109, tsms:Lcom/android/server/TextServicesManagerService;
    const/4 v3, 0x1

    move/from16 v0, v67

    if-eq v0, v3, :cond_2

    .line 328
    :try_start_b
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v72, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v72

    invoke-direct {v0, v4}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    .line 330
    .end local v71           #imm:Lcom/android/server/InputMethodManagerService;
    .local v72, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_c
    const-string v3, "input_method"

    move-object/from16 v0, v72

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_46

    move-object/from16 v71, v72

    .line 336
    .end local v72           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v71       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_d
    :try_start_d
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5

    .line 345
    :cond_2
    :goto_e
    :try_start_e
    invoke-virtual/range {v123 .. v123}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    .line 351
    :goto_f
    :try_start_f
    invoke-interface/range {v92 .. v92}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7

    .line 357
    :goto_10
    :try_start_10
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x104046b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_45

    .line 364
    :goto_11
    const/4 v3, 0x1

    move/from16 v0, v67

    if-eq v0, v3, :cond_19

    .line 366
    :try_start_11
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v61, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v61

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_8

    .line 368
    .end local v60           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v61, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_12
    const-string v3, "device_policy"

    move-object/from16 v0, v61

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_44

    move-object/from16 v60, v61

    .line 374
    .end local v61           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v60       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_12
    :try_start_13
    const-string v3, "SystemServer"

    const-string v9, "Enterprise Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v66, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, v92

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move-object v3, v0

    move-object/from16 v0, v66

    invoke-direct {v0, v4, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_9

    .line 376
    .end local v65           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v66, enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_14
    const-string v3, "enterprise_policy"

    move-object/from16 v0, v66

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 377
    const-string v3, "SystemServer"

    const-string v9, "Enterprise Policymanager service created..."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_43

    move-object/from16 v65, v66

    .line 383
    .end local v66           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v65       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :goto_13
    :try_start_15
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    new-instance v104, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v104

    move-object/from16 v1, v123

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_a

    .line 385
    .end local v103           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v104, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_16
    const-string v3, "statusbar"

    move-object/from16 v0, v104

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_42

    move-object/from16 v103, v104

    .line 391
    .end local v104           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v103       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_14
    :try_start_17
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_b

    .line 402
    :goto_15
    :try_start_18
    const-string v3, "SystemServer"

    const-string v9, "ClipboardEx Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v3, "clipboardEx"

    new-instance v9, Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {v9, v4}, Lcom/android/server/sec/InternalClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_c

    .line 410
    :goto_16
    :try_start_19
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 412
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_d

    .line 418
    :goto_17
    :try_start_1a
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    new-instance v110, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v110

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_e

    .line 420
    .end local v109           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v110, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_1b
    const-string v3, "textservices"

    move-object/from16 v0, v110

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_41

    move-object/from16 v109, v110

    .line 426
    .end local v110           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v109       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_18
    :try_start_1c
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    new-instance v85, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v85

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_f

    .line 428
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v85, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_1d
    const-string v3, "netstats"

    move-object/from16 v0, v85

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_40

    move-object/from16 v12, v85

    .line 434
    .end local v85           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_19
    :try_start_1e
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_10

    .line 438
    .end local v84           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1f
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_3f

    .line 444
    :goto_1a
    :try_start_20
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v122, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v122

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_11

    .line 446
    .end local v121           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v122, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_21
    const-string v3, "wifip2p"

    move-object/from16 v0, v122

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_3e

    move-object/from16 v121, v122

    .line 452
    .end local v122           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v121       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_1b
    :try_start_22
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    new-instance v120, Lcom/android/server/WifiService;

    move-object/from16 v0, v120

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_12

    .line 454
    .end local v119           #wifi:Lcom/android/server/WifiService;
    .local v120, wifi:Lcom/android/server/WifiService;
    :try_start_23
    const-string v3, "wifi"

    move-object/from16 v0, v120

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_3d

    move-object/from16 v119, v120

    .line 460
    .end local v120           #wifi:Lcom/android/server/WifiService;
    .restart local v119       #wifi:Lcom/android/server/WifiService;
    :goto_1c
    :try_start_24
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v54, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v54

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_13

    .line 463
    .end local v53           #connectivity:Lcom/android/server/ConnectivityService;
    .local v54, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_25
    const-string v3, "connectivity"

    move-object/from16 v0, v54

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 464
    move-object/from16 v0, v54

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 465
    move-object/from16 v0, v54

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 467
    invoke-virtual/range {v119 .. v119}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 472
    invoke-virtual/range {v121 .. v121}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_3c

    move-object/from16 v53, v54

    .line 478
    .end local v54           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v53       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1d
    :try_start_26
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance v108, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v108

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_14

    .line 480
    .end local v107           #throttle:Lcom/android/server/ThrottleService;
    .local v108, throttle:Lcom/android/server/ThrottleService;
    :try_start_27
    const-string v3, "throttle"

    move-object/from16 v0, v108

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_3b

    move-object/from16 v107, v108

    .line 491
    .end local v108           #throttle:Lcom/android/server/ThrottleService;
    .restart local v107       #throttle:Lcom/android/server/ThrottleService;
    :goto_1e
    :try_start_28
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const-string v3, "mount"

    new-instance v9, Lcom/android/server/MountService;

    invoke-direct {v9, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_15

    .line 498
    :goto_1f
    :try_start_29
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance v89, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v89

    move-object/from16 v1, v103

    move-object/from16 v2, v74

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_16

    .line 500
    .end local v88           #notification:Lcom/android/server/NotificationManagerService;
    .local v89, notification:Lcom/android/server/NotificationManagerService;
    :try_start_2a
    const-string v3, "notification"

    move-object/from16 v0, v89

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 501
    move-object/from16 v0, v89

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_3a

    move-object/from16 v88, v89

    .line 507
    .end local v89           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v88       #notification:Lcom/android/server/NotificationManagerService;
    :goto_20
    :try_start_2b
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_17

    .line 515
    :goto_21
    :try_start_2c
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    new-instance v77, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v77

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_18

    .line 517
    .end local v76           #location:Lcom/android/server/LocationManagerService;
    .local v77, location:Lcom/android/server/LocationManagerService;
    :try_start_2d
    const-string v3, "location"

    move-object/from16 v0, v77

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_39

    move-object/from16 v76, v77

    .line 523
    .end local v77           #location:Lcom/android/server/LocationManagerService;
    .restart local v76       #location:Lcom/android/server/LocationManagerService;
    :goto_22
    new-instance v59, Lcom/android/server/DirEncryptService;

    .end local v59           #dEncService:Lcom/android/server/DirEncryptService;
    move-object/from16 v0, v59

    invoke-direct {v0, v4}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V

    .line 525
    .restart local v59       #dEncService:Lcom/android/server/DirEncryptService;
    :try_start_2e
    sget-boolean v3, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    if-eqz v3, :cond_3

    .line 526
    const-string v3, "DirEncryptService"

    move-object/from16 v0, v59

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_19

    .line 532
    :cond_3
    :goto_23
    if-eqz v59, :cond_4

    .line 533
    const-string v3, "SystemServer"

    const-string v9, "DirEncryptService.SystemReady"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual/range {v59 .. v59}, Lcom/android/server/DirEncryptService;->systemReady()V

    .line 539
    :cond_4
    :try_start_2f
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    new-instance v57, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v57

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_1a

    .line 541
    .end local v56           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v57, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_30
    const-string v3, "country_detector"

    move-object/from16 v0, v57

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_38

    move-object/from16 v56, v57

    .line 547
    .end local v57           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v56       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_24
    :try_start_31
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1b

    .line 555
    :goto_25
    :try_start_32
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1c

    .line 563
    :goto_26
    :try_start_33
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    new-instance v118, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v118

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1d

    .line 565
    .end local v117           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v118, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_34
    const-string v3, "wallpaper"

    move-object/from16 v0, v118

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_37

    move-object/from16 v117, v118

    .line 571
    .end local v118           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v117       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_27
    :try_start_35
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1e

    .line 578
    :goto_28
    :try_start_36
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    new-instance v63, Lcom/android/server/DockObserver;

    move-object/from16 v0, v63

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1f

    .end local v62           #dock:Lcom/android/server/DockObserver;
    .local v63, dock:Lcom/android/server/DockObserver;
    move-object/from16 v62, v63

    .line 586
    .end local v63           #dock:Lcom/android/server/DockObserver;
    .restart local v62       #dock:Lcom/android/server/DockObserver;
    :goto_29
    :try_start_37
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_20

    .line 594
    :goto_2a
    :try_start_38
    const-string v3, "SystemServer"

    const-string v9, "Thermistor Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    new-instance v106, Lcom/android/server/ThermistorObserver;

    move-object/from16 v0, v106

    invoke-direct {v0, v4, v6}, Lcom/android/server/ThermistorObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_21

    .end local v105           #thermistor:Lcom/android/server/ThermistorObserver;
    .local v106, thermistor:Lcom/android/server/ThermistorObserver;
    move-object/from16 v105, v106

    .line 602
    .end local v106           #thermistor:Lcom/android/server/ThermistorObserver;
    .restart local v105       #thermistor:Lcom/android/server/ThermistorObserver;
    :goto_2b
    :try_start_39
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    new-instance v115, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v115

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_22

    .line 605
    .end local v114           #usb:Lcom/android/server/usb/UsbService;
    .local v115, usb:Lcom/android/server/usb/UsbService;
    :try_start_3a
    const-string v3, "usb"

    move-object/from16 v0, v115

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_36

    move-object/from16 v114, v115

    .line 611
    .end local v115           #usb:Lcom/android/server/usb/UsbService;
    .restart local v114       #usb:Lcom/android/server/usb/UsbService;
    :goto_2c
    :try_start_3b
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    new-instance v113, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v113

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_23

    .end local v112           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v113, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v112, v113

    .line 619
    .end local v113           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v112       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_2d
    :try_start_3c
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_24

    .line 627
    :goto_2e
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    new-instance v41, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v41

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_25

    .line 629
    .end local v40           #appWidget:Lcom/android/server/AppWidgetService;
    .local v41, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_3e
    const-string v3, "appwidget"

    move-object/from16 v0, v41

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_35

    move-object/from16 v40, v41

    .line 635
    .end local v41           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v40       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_2f
    :try_start_3f
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    new-instance v97, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v97

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_26

    .end local v96           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v97, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v96, v97

    .line 642
    .end local v97           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v96       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_30
    :try_start_40
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_27

    .line 653
    :goto_31
    :try_start_41
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_28

    .line 661
    :goto_32
    :try_start_42
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    new-instance v87, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v87

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_29

    .end local v86           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v87, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v86, v87

    .line 667
    .end local v87           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v86       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_33
    :try_start_43
    const-string v3, "SystemServer"

    const-string v9, "Motion Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const-string v3, "motion_recognition"

    new-instance v9, Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {v9, v4}, Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_2a

    .line 688
    :goto_34
    :try_start_44
    const-string v3, "SystemServer"

    const-string v9, "Starting Tvout Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const/16 v111, 0x0

    .line 690
    .local v111, tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "com.android.server.TvoutService"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v111

    .line 691
    if-nez v111, :cond_17

    .line 692
    const-string v3, "SystemServer"

    const-string v9, "Tvout Service not exist"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2b

    .line 706
    .end local v111           #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_35
    const/16 v46, 0x0

    .line 723
    .local v46, bisIRDAEnabled:Z
    if-eqz v46, :cond_5

    .line 725
    :try_start_45
    const-string v3, "SystemServer"

    const-string v9, "bisIRDAEnabled is true!! So enable the IRDA service!!"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    new-instance v73, Landroid/app/IrdaService;

    move-object/from16 v0, v73

    invoke-direct {v0, v4}, Landroid/app/IrdaService;-><init>(Landroid/content/Context;)V

    .line 727
    .local v73, irda:Landroid/app/IrdaService;
    const-string v3, "irda"

    move-object/from16 v0, v73

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2c

    .line 733
    .end local v73           #irda:Landroid/app/IrdaService;
    :cond_5
    :goto_36
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v91

    .line 734
    .local v91, packageMgr:Landroid/content/pm/PackageManager;
    const-string v3, "com.sec.feature.minimode"

    move-object/from16 v0, v91

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 736
    :try_start_46
    const-string v3, "SystemServer"

    const-string v9, "MiniModeAppManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const-string v81, "/data/dalvik-cache/system@framework@minimode.jar@classes.dex"

    .line 739
    .local v81, minimodeFrameworkDexPath:Ljava/lang/String;
    const-string v83, "/data/dalvik-cache/minimode.dex"

    .line 741
    .local v83, minimodeGenDexPath:Ljava/lang/String;
    new-instance v70, Landroid/os/FileUtils$FileStatus;

    invoke-direct/range {v70 .. v70}, Landroid/os/FileUtils$FileStatus;-><init>()V

    .line 742
    .local v70, fs:Landroid/os/FileUtils$FileStatus;
    move-object/from16 v0, v81

    move-object/from16 v1, v70

    invoke-static {v0, v1}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 743
    const-string v3, "SystemServer"

    const-string v9, "This escaping dexopt of minimode.jar is only for eng build"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, v81

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v83

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v9}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 745
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v83

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is copied from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v81

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    new-instance v82, Ljava/io/File;

    invoke-direct/range {v82 .. v83}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 747
    .local v82, minimodeGenDexFile:Ljava/io/File;
    move-object/from16 v0, v70

    iget-wide v9, v0, Landroid/os/FileUtils$FileStatus;->mtime:J

    move-object/from16 v0, v82

    invoke-virtual {v0, v9, v10}, Ljava/io/File;->setLastModified(J)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 748
    const-string v3, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastModfied time of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v83

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is changed to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v70

    iget-wide v10, v0, Landroid/os/FileUtils$FileStatus;->mtime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .end local v82           #minimodeGenDexFile:Ljava/io/File;
    :cond_6
    new-instance v51, Ldalvik/system/DexClassLoader;

    const-string v3, "/system/framework/minimode.jar"

    const-string v9, "/data/dalvik-cache/"

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    move-object/from16 v0, v51

    invoke-direct {v0, v3, v9, v10, v11}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 756
    .local v51, cl:Ljava/lang/ClassLoader;
    const-string v3, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v51

    invoke-virtual {v0, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v37

    .line 757
    .local v37, MiniModeAppManagerServiceClass:Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v3, v9

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v38

    .line 759
    .local v38, MiniModeAppManagerServiceContructor:Ljava/lang/reflect/Constructor;
    const-string v9, "mini_mode_app_manager"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v3, v10

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v9, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2d

    .line 769
    .end local v37           #MiniModeAppManagerServiceClass:Ljava/lang/Class;
    .end local v38           #MiniModeAppManagerServiceContructor:Ljava/lang/reflect/Constructor;
    .end local v51           #cl:Ljava/lang/ClassLoader;
    .end local v70           #fs:Landroid/os/FileUtils$FileStatus;
    .end local v81           #minimodeFrameworkDexPath:Ljava/lang/String;
    .end local v83           #minimodeGenDexPath:Ljava/lang/String;
    :cond_7
    :goto_37
    :try_start_47
    const-string v3, "SystemServer"

    const-string v9, "FM_RADIO_SERVICE"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const-string v3, "FMPlayer"

    new-instance v9, Lcom/android/server/FMRadioService;

    invoke-direct {v9, v4}, Lcom/android/server/FMRadioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 771
    const-string v3, "SystemServer"

    const-string v9, "[FMPlayer]FMRadio service added .."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2e

    .line 778
    :goto_38
    :try_start_48
    const-string v3, "SystemServer"

    const-string v9, "VoIPInterfaceManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const-string v3, "voip"

    new-instance v9, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v9, v4}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2f

    .line 788
    .end local v46           #bisIRDAEnabled:Z
    .end local v91           #packageMgr:Landroid/content/pm/PackageManager;
    :goto_39
    invoke-virtual/range {v123 .. v123}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v28

    .line 789
    .local v28, safeMode:Z
    if-eqz v28, :cond_18

    .line 790
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 792
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 794
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 802
    :goto_3a
    if-eqz v60, :cond_8

    .line 804
    :try_start_49
    invoke-virtual/range {v60 .. v60}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_30

    .line 810
    :cond_8
    :goto_3b
    if-eqz v65, :cond_9

    .line 811
    invoke-virtual/range {v65 .. v65}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 812
    const-string v3, "SystemServer"

    const-string v9, "enterprisePolicy systemReady"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_9
    if-eqz v88, :cond_a

    .line 818
    :try_start_4a
    invoke-virtual/range {v88 .. v88}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_31

    .line 825
    :cond_a
    :goto_3c
    :try_start_4b
    invoke-virtual/range {v123 .. v123}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_32

    .line 830
    :goto_3d
    if-eqz v28, :cond_b

    .line 831
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 837
    :cond_b
    invoke-virtual/range {v123 .. v123}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v52

    .line 838
    .local v52, config:Landroid/content/res/Configuration;
    new-instance v80, Landroid/util/DisplayMetrics;

    invoke-direct/range {v80 .. v80}, Landroid/util/DisplayMetrics;-><init>()V

    .line 839
    .local v80, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v116

    check-cast v116, Landroid/view/WindowManager;

    .line 840
    .local v116, w:Landroid/view/WindowManager;
    invoke-interface/range {v116 .. v116}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v80

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 841
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v52

    move-object/from16 v1, v80

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 843
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 845
    :try_start_4c
    invoke-interface/range {v92 .. v92}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_33

    .line 851
    :goto_3e
    move-object/from16 v16, v4

    .line 852
    .local v16, contextF:Landroid/content/Context;
    move-object/from16 v17, v5

    .line 853
    .local v17, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v18, v13

    .line 854
    .local v18, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v19, v12

    .line 855
    .local v19, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v20, v8

    .line 856
    .local v20, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v21, v53

    .line 857
    .local v21, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v22, v62

    .line 858
    .local v22, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v23, v105

    .line 859
    .local v23, thermistorF:Lcom/android/server/ThermistorObserver;
    move-object/from16 v24, v114

    .line 860
    .local v24, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v34, v107

    .line 861
    .local v34, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v25, v112

    .line 862
    .local v25, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v27, v40

    .line 863
    .local v27, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v29, v117

    .line 864
    .local v29, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v30, v71

    .line 865
    .local v30, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v26, v96

    .line 866
    .local v26, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v32, v76

    .line 867
    .local v32, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v33, v56

    .line 868
    .local v33, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v35, v86

    .line 869
    .local v35, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v36, v109

    .line 870
    .local v36, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v31, v103

    .line 877
    .local v31, statusBarF:Lcom/android/server/StatusBarManagerService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v36}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/ThermistorObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/TextServicesManagerService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 982
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 983
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :cond_c
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 987
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    return-void

    .line 126
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #contextF:Landroid/content/Context;
    .end local v17           #batteryF:Lcom/android/server/BatteryService;
    .end local v18           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v19           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v20           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v21           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v22           #dockF:Lcom/android/server/DockObserver;
    .end local v23           #thermistorF:Lcom/android/server/ThermistorObserver;
    .end local v24           #usbF:Lcom/android/server/usb/UsbService;
    .end local v25           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v26           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v27           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v28           #safeMode:Z
    .end local v29           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v30           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v31           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v32           #locationF:Lcom/android/server/LocationManagerService;
    .end local v33           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v34           #throttleF:Lcom/android/server/ThrottleService;
    .end local v35           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v36           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v40           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v43           #avrcp:Landroid/server/AvrcpStubService;
    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v52           #config:Landroid/content/res/Configuration;
    .end local v53           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v56           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v59           #dEncService:Lcom/android/server/DirEncryptService;
    .end local v60           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v62           #dock:Lcom/android/server/DockObserver;
    .end local v65           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v67           #factoryTest:I
    .end local v68           #factoryTestStr:Ljava/lang/String;
    .end local v71           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v74           #lights:Lcom/android/server/LightsService;
    .end local v76           #location:Lcom/android/server/LocationManagerService;
    .end local v78           #map:Landroid/server/MAPRecordService;
    .end local v80           #metrics:Landroid/util/DisplayMetrics;
    .end local v86           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v88           #notification:Lcom/android/server/NotificationManagerService;
    .end local v92           #pm:Landroid/content/pm/IPackageManager;
    .end local v96           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v100           #shutdownlogger:Lcom/android/server/ShutdownLoggerService;
    .end local v103           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v105           #thermistor:Lcom/android/server/ThermistorObserver;
    .end local v107           #throttle:Lcom/android/server/ThrottleService;
    .end local v109           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v112           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v114           #usb:Lcom/android/server/usb/UsbService;
    .end local v116           #w:Landroid/view/WindowManager;
    .end local v117           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v119           #wifi:Lcom/android/server/WifiService;
    .end local v121           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v123           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_d
    const/16 v95, 0x0

    goto/16 :goto_0

    .line 132
    .restart local v95       #reboot:Z
    :cond_e
    const/16 v94, 0x0

    .restart local v94       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 143
    .end local v94           #reason:Ljava/lang/String;
    .end local v95           #reboot:Z
    .restart local v68       #factoryTestStr:Ljava/lang/String;
    :cond_f
    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v67

    goto/16 :goto_2

    .line 198
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v39       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v43       #avrcp:Landroid/server/AvrcpStubService;
    .restart local v45       #battery:Lcom/android/server/BatteryService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    .restart local v49       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v53       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v58       #cryptState:Ljava/lang/String;
    .restart local v59       #dEncService:Lcom/android/server/DirEncryptService;
    .restart local v62       #dock:Lcom/android/server/DockObserver;
    .restart local v67       #factoryTest:I
    .restart local v74       #lights:Lcom/android/server/LightsService;
    .restart local v78       #map:Landroid/server/MAPRecordService;
    .restart local v84       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v86       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v90       #onlyCore:Z
    .restart local v92       #pm:Landroid/content/pm/IPackageManager;
    .restart local v96       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v100       #shutdownlogger:Lcom/android/server/ShutdownLoggerService;
    .restart local v105       #thermistor:Lcom/android/server/ThermistorObserver;
    .restart local v107       #throttle:Lcom/android/server/ThrottleService;
    .restart local v112       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v114       #usb:Lcom/android/server/usb/UsbService;
    .restart local v119       #wifi:Lcom/android/server/WifiService;
    .restart local v121       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v123       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_10
    :try_start_4d
    const-string v3, "1"

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/16 v90, 0x1

    goto/16 :goto_3

    .line 203
    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 221
    .restart local v69       #firstBoot:Z
    :catch_0
    move-exception v64

    .line 222
    .local v64, e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v64

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_4d} :catch_1

    goto/16 :goto_6

    .line 297
    .end local v58           #cryptState:Ljava/lang/String;
    .end local v64           #e:Ljava/lang/Throwable;
    .end local v69           #firstBoot:Z
    .end local v90           #onlyCore:Z
    :catch_1
    move-exception v64

    move-object/from16 v7, v39

    .end local v39           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v45

    .line 298
    .end local v45           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v64, e:Ljava/lang/RuntimeException;
    :goto_3f
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v64

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 226
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v64           #e:Ljava/lang/RuntimeException;
    .restart local v39       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v45       #battery:Lcom/android/server/BatteryService;
    .restart local v58       #cryptState:Ljava/lang/String;
    .restart local v69       #firstBoot:Z
    .restart local v90       #onlyCore:Z
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 255
    .end local v39           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v45           #battery:Lcom/android/server/BatteryService;
    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #lights:Lcom/android/server/LightsService;
    :cond_13
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_8

    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 267
    :cond_15
    const/4 v3, 0x1

    move/from16 v0, v67

    if-ne v0, v3, :cond_16

    .line 268
    :try_start_4e
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 297
    :catch_2
    move-exception v64

    move-object/from16 v74, v75

    .end local v75           #lights:Lcom/android/server/LightsService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    goto :goto_3f

    .line 270
    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v75       #lights:Lcom/android/server/LightsService;
    :cond_16
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v48, Landroid/server/BluetoothService;

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/RuntimeException; {:try_start_4e .. :try_end_4e} :catch_2

    .line 272
    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .local v48, bluetooth:Landroid/server/BluetoothService;
    :try_start_4f
    const-string v3, "bluetooth"

    move-object/from16 v0, v48

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 273
    invoke-virtual/range {v48 .. v48}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 274
    new-instance v50, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v50

    move-object/from16 v1, v48

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_4f
    .catch Ljava/lang/RuntimeException; {:try_start_4f .. :try_end_4f} :catch_4b

    .line 275
    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v50, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_50
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v50

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 277
    const-string v3, "SystemServer"

    const-string v9, "AvrcpStubService -->"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v44, Landroid/server/AvrcpStubService;

    move-object/from16 v0, v44

    invoke-direct {v0, v4}, Landroid/server/AvrcpStubService;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/RuntimeException; {:try_start_50 .. :try_end_50} :catch_4c

    .line 279
    .end local v43           #avrcp:Landroid/server/AvrcpStubService;
    .local v44, avrcp:Landroid/server/AvrcpStubService;
    :try_start_51
    const-string v3, "bluetooth_avrcp"

    move-object/from16 v0, v44

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 280
    invoke-virtual/range {v48 .. v48}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V

    .line 282
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x111002b

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 283
    new-instance v79, Landroid/server/MAPRecordService;

    move-object/from16 v0, v79

    invoke-direct {v0, v4}, Landroid/server/MAPRecordService;-><init>(Landroid/content/Context;)V
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_51 .. :try_end_51} :catch_4d

    .end local v78           #map:Landroid/server/MAPRecordService;
    .local v79, map:Landroid/server/MAPRecordService;
    move-object/from16 v78, v79

    .end local v79           #map:Landroid/server/MAPRecordService;
    .restart local v78       #map:Landroid/server/MAPRecordService;
    move-object/from16 v43, v44

    .end local v44           #avrcp:Landroid/server/AvrcpStubService;
    .restart local v43       #avrcp:Landroid/server/AvrcpStubService;
    move-object/from16 v49, v50

    .end local v50           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v49       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v47, v48

    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_a

    .line 306
    .end local v58           #cryptState:Ljava/lang/String;
    .end local v69           #firstBoot:Z
    .end local v75           #lights:Lcom/android/server/LightsService;
    .end local v90           #onlyCore:Z
    .restart local v74       #lights:Lcom/android/server/LightsService;
    :catch_3
    move-exception v64

    .line 307
    .local v64, e:Ljava/lang/Throwable;
    :goto_40
    const-string v3, "SystemServer"

    const-string v9, "Failure starting ShutdownloggerService"

    move-object/from16 v0, v64

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 331
    .end local v64           #e:Ljava/lang/Throwable;
    .restart local v40       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v56       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v60       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v65       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v71       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v76       #location:Lcom/android/server/LocationManagerService;
    .restart local v88       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v103       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v109       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v117       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_4
    move-exception v64

    .line 332
    .restart local v64       #e:Ljava/lang/Throwable;
    :goto_41
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 339
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v64

    .line 340
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 346
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v64

    .line 347
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 352
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v64

    .line 353
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 369
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v64

    .line 370
    .restart local v64       #e:Ljava/lang/Throwable;
    :goto_42
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 378
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v64

    .line 379
    .restart local v64       #e:Ljava/lang/Throwable;
    :goto_43
    const-string v3, "SystemServer"

    const-string v9, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v64

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13

    .line 386
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v64

    .line 387
    .restart local v64       #e:Ljava/lang/Throwable;
    :goto_44
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 394
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v64

    .line 395
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 405
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v64

    .line 406
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "Failure starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 413
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v64

    .line 414
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 421
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v64

    .line 422
    .restart local v64       #e:Ljava/lang/Throwable;
    :goto_45
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 429
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v64

    .line 430
    .restart local v64       #e:Ljava/lang/Throwable;
    :goto_46
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 439
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v64

    move-object/from16 v8, v84

    .line 440
    .end local v84           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v64       #e:Ljava/lang/Throwable;
    :goto_47
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 447
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v64

    .line 448
    .restart local v64       #e:Ljava/lang/Throwable;
    :goto_48
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 455
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v64

    .line 456
    .restart local v64       #e:Ljava/lang/Throwable;
    :goto_49
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 473
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v64

    .line 474
    .restart local v64       #e:Ljava/lang/Throwable;
    :goto_4a
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 482
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v64

    .line 483
    .restart local v64       #e:Ljava/lang/Throwable;
    :goto_4b
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 493
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v64

    .line 494
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 502
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v64

    .line 503
    .restart local v64       #e:Ljava/lang/Throwable;
    :goto_4c
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 510
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v64

    .line 511
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 518
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v64

    .line 519
    .restart local v64       #e:Ljava/lang/Throwable;
    :goto_4d
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 528
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v64

    .line 529
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting DirEncryptService"

    move-object/from16 v0, v64

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    const/16 v59, 0x0

    goto/16 :goto_23

    .line 542
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v64

    .line 543
    .restart local v64       #e:Ljava/lang/Throwable;
    :goto_4e
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 550
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v64

    .line 551
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 558
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v64

    .line 559
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 566
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v64

    .line 567
    .restart local v64       #e:Ljava/lang/Throwable;
    :goto_4f
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 573
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v64

    .line 574
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 581
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v64

    .line 582
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 589
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v64

    .line 590
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 597
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v64

    .line 598
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "starting ThermistorObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 606
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v64

    .line 607
    .restart local v64       #e:Ljava/lang/Throwable;
    :goto_50
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 614
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v64

    .line 615
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 622
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v64

    .line 623
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v64

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2e

    .line 630
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v64

    .line 631
    .restart local v64       #e:Ljava/lang/Throwable;
    :goto_51
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 637
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v64

    .line 638
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 644
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v64

    .line 645
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 656
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v64

    .line 657
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 663
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v64

    .line 664
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 669
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_2a
    move-exception v64

    .line 670
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Motion Recognition Service"

    move-object/from16 v0, v64

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_34

    .line 694
    .end local v64           #e:Ljava/lang/Throwable;
    .restart local v111       #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_17
    :try_start_52
    const-string v3, "SystemServer"

    const-string v9, "Tvout Service exist"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Class;

    move-object/from16 v42, v0

    .line 696
    .local v42, arg:[Ljava/lang/Class;
    const/4 v3, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v42, v3

    .line 698
    move-object/from16 v0, v111

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v55

    .line 699
    .local v55, constructor:Ljava/lang/reflect/Constructor;
    const-string v9, "tvoutservice"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v3, v10

    move-object/from16 v0, v55

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v9, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_2b

    goto/16 :goto_35

    .line 701
    .end local v42           #arg:[Ljava/lang/Class;
    .end local v55           #constructor:Ljava/lang/reflect/Constructor;
    .end local v111           #tvoutclass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_2b
    move-exception v64

    .line 702
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Tvout Service"

    move-object/from16 v0, v64

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_35

    .line 728
    .end local v64           #e:Ljava/lang/Throwable;
    .restart local v46       #bisIRDAEnabled:Z
    :catch_2c
    move-exception v64

    .line 729
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting IRDA Service"

    move-object/from16 v0, v64

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_36

    .line 762
    .end local v64           #e:Ljava/lang/Throwable;
    .restart local v91       #packageMgr:Landroid/content/pm/PackageManager;
    :catch_2d
    move-exception v64

    .line 763
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v64

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_37

    .line 772
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_2e
    move-exception v64

    .line 773
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "Failure starting RadioService"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 780
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_2f
    move-exception v64

    .line 781
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_39

    .line 797
    .end local v46           #bisIRDAEnabled:Z
    .end local v64           #e:Ljava/lang/Throwable;
    .end local v91           #packageMgr:Landroid/content/pm/PackageManager;
    .restart local v28       #safeMode:Z
    :cond_18
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_3a

    .line 805
    :catch_30
    move-exception v64

    .line 806
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 819
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_31
    move-exception v64

    .line 820
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3c

    .line 826
    .end local v64           #e:Ljava/lang/Throwable;
    :catch_32
    move-exception v64

    .line 827
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 846
    .end local v64           #e:Ljava/lang/Throwable;
    .restart local v52       #config:Landroid/content/res/Configuration;
    .restart local v80       #metrics:Landroid/util/DisplayMetrics;
    .restart local v116       #w:Landroid/view/WindowManager;
    :catch_33
    move-exception v64

    .line 847
    .restart local v64       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3e

    .line 209
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v28           #safeMode:Z
    .end local v40           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v52           #config:Landroid/content/res/Configuration;
    .end local v56           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v60           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v64           #e:Ljava/lang/Throwable;
    .end local v65           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v71           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v76           #location:Lcom/android/server/LocationManagerService;
    .end local v80           #metrics:Landroid/util/DisplayMetrics;
    .end local v88           #notification:Lcom/android/server/NotificationManagerService;
    .end local v103           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v109           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v116           #w:Landroid/view/WindowManager;
    .end local v117           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v39       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v45       #battery:Lcom/android/server/BatteryService;
    .restart local v58       #cryptState:Ljava/lang/String;
    .restart local v69       #firstBoot:Z
    .restart local v84       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v90       #onlyCore:Z
    :catch_34
    move-exception v3

    goto/16 :goto_5

    .line 630
    .end local v39           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v45           #battery:Lcom/android/server/BatteryService;
    .end local v58           #cryptState:Ljava/lang/String;
    .end local v69           #firstBoot:Z
    .end local v84           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v90           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v41       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v56       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v60       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v65       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v71       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v76       #location:Lcom/android/server/LocationManagerService;
    .restart local v88       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v103       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v109       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v117       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_35
    move-exception v64

    move-object/from16 v40, v41

    .end local v41           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v40       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_51

    .line 606
    .end local v114           #usb:Lcom/android/server/usb/UsbService;
    .restart local v115       #usb:Lcom/android/server/usb/UsbService;
    :catch_36
    move-exception v64

    move-object/from16 v114, v115

    .end local v115           #usb:Lcom/android/server/usb/UsbService;
    .restart local v114       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_50

    .line 566
    .end local v117           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v118       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_37
    move-exception v64

    move-object/from16 v117, v118

    .end local v118           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v117       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_4f

    .line 542
    .end local v56           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v57       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_38
    move-exception v64

    move-object/from16 v56, v57

    .end local v57           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v56       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_4e

    .line 518
    .end local v76           #location:Lcom/android/server/LocationManagerService;
    .restart local v77       #location:Lcom/android/server/LocationManagerService;
    :catch_39
    move-exception v64

    move-object/from16 v76, v77

    .end local v77           #location:Lcom/android/server/LocationManagerService;
    .restart local v76       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_4d

    .line 502
    .end local v88           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v89       #notification:Lcom/android/server/NotificationManagerService;
    :catch_3a
    move-exception v64

    move-object/from16 v88, v89

    .end local v89           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v88       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_4c

    .line 482
    .end local v107           #throttle:Lcom/android/server/ThrottleService;
    .restart local v108       #throttle:Lcom/android/server/ThrottleService;
    :catch_3b
    move-exception v64

    move-object/from16 v107, v108

    .end local v108           #throttle:Lcom/android/server/ThrottleService;
    .restart local v107       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_4b

    .line 473
    .end local v53           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v54       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_3c
    move-exception v64

    move-object/from16 v53, v54

    .end local v54           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v53       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_4a

    .line 455
    .end local v119           #wifi:Lcom/android/server/WifiService;
    .restart local v120       #wifi:Lcom/android/server/WifiService;
    :catch_3d
    move-exception v64

    move-object/from16 v119, v120

    .end local v120           #wifi:Lcom/android/server/WifiService;
    .restart local v119       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_49

    .line 447
    .end local v121           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v122       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_3e
    move-exception v64

    move-object/from16 v121, v122

    .end local v122           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v121       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_48

    .line 439
    :catch_3f
    move-exception v64

    goto/16 :goto_47

    .line 429
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v84       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v85       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_40
    move-exception v64

    move-object/from16 v12, v85

    .end local v85           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_46

    .line 421
    .end local v109           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v110       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_41
    move-exception v64

    move-object/from16 v109, v110

    .end local v110           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v109       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_45

    .line 386
    .end local v103           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v104       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_42
    move-exception v64

    move-object/from16 v103, v104

    .end local v104           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v103       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_44

    .line 378
    .end local v65           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v66       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :catch_43
    move-exception v64

    move-object/from16 v65, v66

    .end local v66           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v65       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_43

    .line 369
    .end local v60           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v61       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_44
    move-exception v64

    move-object/from16 v60, v61

    .end local v61           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v60       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_42

    .line 361
    :catch_45
    move-exception v3

    goto/16 :goto_11

    .line 331
    .end local v71           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v72       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_46
    move-exception v64

    move-object/from16 v71, v72

    .end local v72           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v71       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_41

    .line 306
    .end local v40           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v56           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v60           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v65           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v71           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v76           #location:Lcom/android/server/LocationManagerService;
    .end local v88           #notification:Lcom/android/server/NotificationManagerService;
    .end local v100           #shutdownlogger:Lcom/android/server/ShutdownLoggerService;
    .end local v103           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v109           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v117           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v101       #shutdownlogger:Lcom/android/server/ShutdownLoggerService;
    :catch_47
    move-exception v64

    move-object/from16 v100, v101

    .end local v101           #shutdownlogger:Lcom/android/server/ShutdownLoggerService;
    .restart local v100       #shutdownlogger:Lcom/android/server/ShutdownLoggerService;
    goto/16 :goto_40

    .line 297
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v39       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v45       #battery:Lcom/android/server/BatteryService;
    .restart local v93       #power:Lcom/android/server/PowerManagerService;
    :catch_48
    move-exception v64

    move-object/from16 v7, v39

    .end local v39           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v45

    .end local v45           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v93

    .end local v93           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_3f

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v39       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v45       #battery:Lcom/android/server/BatteryService;
    .restart local v58       #cryptState:Ljava/lang/String;
    .restart local v69       #firstBoot:Z
    .restart local v75       #lights:Lcom/android/server/LightsService;
    .restart local v90       #onlyCore:Z
    :catch_49
    move-exception v64

    move-object/from16 v7, v39

    .end local v39           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v45

    .end local v45           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v74, v75

    .end local v75           #lights:Lcom/android/server/LightsService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3f

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v39       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v75       #lights:Lcom/android/server/LightsService;
    :catch_4a
    move-exception v64

    move-object/from16 v7, v39

    .end local v39           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v74, v75

    .end local v75           #lights:Lcom/android/server/LightsService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3f

    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v48       #bluetooth:Landroid/server/BluetoothService;
    .restart local v75       #lights:Lcom/android/server/LightsService;
    :catch_4b
    move-exception v64

    move-object/from16 v47, v48

    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v74, v75

    .end local v75           #lights:Lcom/android/server/LightsService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3f

    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v48       #bluetooth:Landroid/server/BluetoothService;
    .restart local v50       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v75       #lights:Lcom/android/server/LightsService;
    :catch_4c
    move-exception v64

    move-object/from16 v49, v50

    .end local v50           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v49       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v47, v48

    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v74, v75

    .end local v75           #lights:Lcom/android/server/LightsService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3f

    .end local v43           #avrcp:Landroid/server/AvrcpStubService;
    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v74           #lights:Lcom/android/server/LightsService;
    .restart local v44       #avrcp:Landroid/server/AvrcpStubService;
    .restart local v48       #bluetooth:Landroid/server/BluetoothService;
    .restart local v50       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v75       #lights:Lcom/android/server/LightsService;
    :catch_4d
    move-exception v64

    move-object/from16 v43, v44

    .end local v44           #avrcp:Landroid/server/AvrcpStubService;
    .restart local v43       #avrcp:Landroid/server/AvrcpStubService;
    move-object/from16 v49, v50

    .end local v50           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v49       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v47, v48

    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v74, v75

    .end local v75           #lights:Lcom/android/server/LightsService;
    .restart local v74       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_3f

    .end local v58           #cryptState:Ljava/lang/String;
    .end local v69           #firstBoot:Z
    .end local v90           #onlyCore:Z
    .restart local v40       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v56       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v60       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v65       #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v71       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v76       #location:Lcom/android/server/LocationManagerService;
    .restart local v88       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v103       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v109       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v117       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_19
    move-object/from16 v8, v84

    .end local v84           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_39

    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v43           #avrcp:Landroid/server/AvrcpStubService;
    .end local v47           #bluetooth:Landroid/server/BluetoothService;
    .end local v49           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v56           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v60           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v65           #enterprisePolicy:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v71           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v74           #lights:Lcom/android/server/LightsService;
    .end local v76           #location:Lcom/android/server/LocationManagerService;
    .end local v88           #notification:Lcom/android/server/NotificationManagerService;
    .end local v103           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v109           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v117           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v44       #avrcp:Landroid/server/AvrcpStubService;
    .restart local v48       #bluetooth:Landroid/server/BluetoothService;
    .restart local v50       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v58       #cryptState:Ljava/lang/String;
    .restart local v69       #firstBoot:Z
    .restart local v75       #lights:Lcom/android/server/LightsService;
    .restart local v84       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v90       #onlyCore:Z
    :cond_1a
    move-object/from16 v43, v44

    .end local v44           #avrcp:Landroid/server/AvrcpStubService;
    .restart local v43       #avrcp:Landroid/server/AvrcpStubService;
    move-object/from16 v49, v50

    .end local v50           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v49       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v47, v48

    .end local v48           #bluetooth:Landroid/server/BluetoothService;
    .restart local v47       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_a
.end method
