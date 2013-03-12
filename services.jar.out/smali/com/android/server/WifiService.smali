.class public Lcom/android/server/WifiService;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WifiService$10;,
        Lcom/android/server/WifiService$NotificationEnabledSettingObserver;,
        Lcom/android/server/WifiService$Multicaster;,
        Lcom/android/server/WifiService$DeathRecipient;,
        Lcom/android/server/WifiService$LockList;,
        Lcom/android/server/WifiService$WifiLock;,
        Lcom/android/server/WifiService$WifiStateMachineHandler;,
        Lcom/android/server/WifiService$AsyncServiceHandler;,
        Lcom/android/server/WifiService$HS20_ConType;,
        Lcom/android/server/WifiService$BoosterMode;
    }
.end annotation


# static fields
.field private static final ACTION_DEVICE_IDLE:Ljava/lang/String; = "com.android.server.WifiManager.action.DEVICE_IDLE"

.field private static final BOOSTER_BTCOEX_FLAG:I = 0x2

.field private static final BOOSTER_HOTSPOT3G_FLAG:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DBG_BOOSTER:Z = false

.field private static final DEFAULT_IDLE_MS:J = 0xdbba0L

.field private static final DEFAULT_MPCS_IDLE_MS:J = 0x36ee80L

.field private static final ICON_DUMMY:I = 0x1080713

.field private static final ICON_NETWORKS_AVAILABLE:I = 0x10806b7

.field private static final ICON_NETWORKS_CONNECTED:I = 0x1080711

.field private static final ICON_NETWORKS_DISABLED:I = 0x1080712

.field private static final ICON_NETWORKS_HS20_H_CONNECTED:I = 0x10802b5

.field private static final ICON_NETWORKS_HS20_R_CONNECTED:I = 0x10802b6

.field private static final ICON_NETWORKS_NOT_CONNECTED:I = 0x1080715

.field private static final ICON_NETWORKS_NO_NETWORK:I = 0x1080714

.field private static final IDLE_REQUEST:I = 0x0

.field private static final NUM_SCANS_BEFORE_ACTUALLY_SCANNING:I = 0x3

.field private static final POLL_TRAFFIC_STATS_INTERVAL_MSECS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "WifiService"

.field private static final THRESHOLD_FILE:Ljava/lang/String; = "/data/misc/wifi/.threshold"

.field private static final WIFI_DISABLED:I = 0x0

.field private static final WIFI_DISABLED_AIRPLANE_ON:I = 0x3

.field private static final WIFI_ENABLED:I = 0x1

.field private static final WIFI_ENABLED_AIRPLANE_OVERRIDE:I = 0x2

.field private static mBoosterFLAG:I

.field private static mCurrentMode:Lcom/android/server/WifiService$BoosterMode;


# instance fields
.field private final NOTIFICATION_REPEAT_DELAY_MS:J

.field private allowWifi:Z

.field private allowWifiAp:Z

.field private bEnableWifiSettingsDialog:Z

.field private isBootCompleted:Z

.field private mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mChameleonEnabled:Z

.field private mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/AsyncChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDVFSLock:Landroid/os/PowerManager$DVFSLock;

.field private mDataActivity:I

.field private mDeviceIdle:Z

.field private mDeviceManager:Lcom/android/server/DeviceManager3LMService;

.field private mDomRoamMaxUser:I

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEmergencyCallbackMode:Z

.field private mEnableTrafficStatsPoll:Z

.field private mFullHighPerfLocksAcquired:I

.field private mFullHighPerfLocksReleased:I

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mGsmMaxUser:I

.field private mHs20Noti:Landroid/app/Notification;

.field private mIdleIntent:Landroid/app/PendingIntent;

.field private mIntRoamMaxUser:I

.field private mInterfaceName:Ljava/lang/String;

.field private mIsReceiverRegistered:Z

.field private mIsShowingNotification:Z

.field private mIsShowingVzwNotification:Z

.field private final mLocks:Lcom/android/server/WifiService$LockList;

.field private mLowSignal:Z

.field private mLowSignalNWs:I

.field private mMaxUser:I

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WifiService$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedBooster:Z

.field mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationEnabled:Z

.field private mNotificationEnabledSettingObserver:Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

.field private mNotificationHS20Enabled:Z

.field private mNotificationRepeatTime:J

.field private mNotificationShown:Z

.field private mNumOpenNetworks:I

.field private mNumScansSinceNetworkStateChange:I

.field private mNumVzwNetworks:I

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPluggedType:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRxBytes:J

.field private mRxPkts:J

.field private mScanCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScanLocksAcquired:I

.field private mScanLocksReleased:I

.field private mScreenOff:Z

.field private mSsid:Ljava/lang/String;

.field private mTetheredData:I

.field private mThresholdKbytes:[J

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mTrafficStatsPollToken:I

.field private mTxBytes:J

.field private mTxPkts:J

.field private mVzwNotificationEnabled:Z

.field private mVzwNotificationRepeatTime:J

.field private mVzwNotificationShown:Z

.field private mVzwWifiNotification:Landroid/app/Notification;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiEnabled:Z

.field private final mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

.field private mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiStateMachineHandler:Lcom/android/server/WifiService$WifiStateMachineHandler;

.field private mWifiStatusNoti:Landroid/app/Notification;

.field private mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 116
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/WifiService;->DBG:Z

    .line 160
    sput v1, Lcom/android/server/WifiService;->mBoosterFLAG:I

    .line 175
    sget-object v0, Lcom/android/server/WifiService$BoosterMode;->FullMode:Lcom/android/server/WifiService$BoosterMode;

    sput-object v0, Lcom/android/server/WifiService;->mCurrentMode:Lcom/android/server/WifiService$BoosterMode;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/16 v13, 0xa

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 553
    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    .line 128
    iput-boolean v10, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    .line 131
    new-instance v7, Lcom/android/server/WifiService$LockList;

    invoke-direct {v7, p0, v12}, Lcom/android/server/WifiService$LockList;-><init>(Lcom/android/server/WifiService;Lcom/android/server/WifiService$1;)V

    iput-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    .line 141
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;

    .line 144
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    .line 152
    iput-boolean v10, p0, Lcom/android/server/WifiService;->mNeedBooster:Z

    .line 156
    const/4 v7, 0x3

    new-array v7, v7, [J

    fill-array-data v7, :array_0

    iput-object v7, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    .line 177
    iput-boolean v10, p0, Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z

    .line 178
    iput v10, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    .line 188
    iput-object v12, p0, Lcom/android/server/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 200
    iput-object v12, p0, Lcom/android/server/WifiService;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 230
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7, v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v7, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 232
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v7, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v7, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 236
    iput-boolean v10, p0, Lcom/android/server/WifiService;->mIsReceiverRegistered:Z

    .line 238
    iput-boolean v10, p0, Lcom/android/server/WifiService;->isBootCompleted:Z

    .line 240
    new-instance v7, Landroid/net/NetworkInfo;

    const-string v8, "WIFI"

    const-string v9, ""

    invoke-direct {v7, v11, v10, v8, v9}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 323
    iput-boolean v10, p0, Lcom/android/server/WifiService;->bEnableWifiSettingsDialog:Z

    .line 329
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/WifiService;->mClients:Ljava/util/List;

    .line 528
    iput-boolean v11, p0, Lcom/android/server/WifiService;->allowWifi:Z

    .line 529
    iput-boolean v11, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    .line 532
    iput-boolean v10, p0, Lcom/android/server/WifiService;->mChameleonEnabled:Z

    .line 533
    iput v10, p0, Lcom/android/server/WifiService;->mTetheredData:I

    .line 534
    const-string v7, ""

    iput-object v7, p0, Lcom/android/server/WifiService;->mSsid:Ljava/lang/String;

    .line 535
    iput v13, p0, Lcom/android/server/WifiService;->mMaxUser:I

    .line 536
    iput v11, p0, Lcom/android/server/WifiService;->mGsmMaxUser:I

    .line 537
    iput v13, p0, Lcom/android/server/WifiService;->mDomRoamMaxUser:I

    .line 538
    iput v13, p0, Lcom/android/server/WifiService;->mIntRoamMaxUser:I

    .line 544
    new-instance v7, Landroid/os/WorkSource;

    invoke-direct {v7}, Landroid/os/WorkSource;-><init>()V

    iput-object v7, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 549
    iput-boolean v10, p0, Lcom/android/server/WifiService;->mLowSignal:Z

    .line 550
    iput v10, p0, Lcom/android/server/WifiService;->mLowSignalNWs:I

    .line 1837
    new-instance v7, Lcom/android/server/WifiService$8;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$8;-><init>(Lcom/android/server/WifiService;)V

    iput-object v7, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 3414
    new-instance v7, Lcom/android/server/WifiService$9;

    invoke-direct {v7, p0}, Lcom/android/server/WifiService$9;-><init>(Lcom/android/server/WifiService;)V

    iput-object v7, p0, Lcom/android/server/WifiService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 554
    iput-object p1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    .line 558
    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v8, "enterprise_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v7, p0, Lcom/android/server/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 564
    const-string v7, "network_management"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 565
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    .line 568
    const-string v7, "wifi.interface"

    const-string v8, "wlan0"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    .line 570
    new-instance v7, Landroid/net/wifi/WifiStateMachine;

    iget-object v8, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 571
    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v7, v11}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 572
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 574
    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    iput-object v7, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 575
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-direct {v3, v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 576
    .local v3, idleIntent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v7, v10, v3, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    .line 583
    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/WifiService$1;

    invoke-direct {v8, p0}, Lcom/android/server/WifiService$1;-><init>(Lcom/android/server/WifiService;)V

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 619
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 620
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 621
    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 622
    const-string v7, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 624
    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 625
    const-string v7, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 628
    const-string v7, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 629
    const-string v7, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 640
    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DevicePolicyManager;

    iput-object v7, p0, Lcom/android/server/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 644
    const-string v7, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 647
    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/WifiService$2;

    invoke-direct {v8, p0}, Lcom/android/server/WifiService$2;-><init>(Lcom/android/server/WifiService;)V

    invoke-virtual {v7, v8, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 841
    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/WifiService$4;

    invoke-direct {v8, p0}, Lcom/android/server/WifiService$4;-><init>(Lcom/android/server/WifiService;)V

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 905
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "WifiService"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 906
    .local v6, wifiThread:Landroid/os/HandlerThread;
    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 907
    new-instance v7, Lcom/android/server/WifiService$AsyncServiceHandler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/android/server/WifiService$AsyncServiceHandler;-><init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    .line 908
    new-instance v7, Lcom/android/server/WifiService$WifiStateMachineHandler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/android/server/WifiService$WifiStateMachineHandler;-><init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V

    iput-object v7, p0, Lcom/android/server/WifiService;->mWifiStateMachineHandler:Lcom/android/server/WifiService$WifiStateMachineHandler;

    .line 911
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_networks_available_repeat_delay"

    const/16 v9, 0x384

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    int-to-long v7, v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    iput-wide v7, p0, Lcom/android/server/WifiService;->NOTIFICATION_REPEAT_DELAY_MS:J

    .line 913
    new-instance v7, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-direct {v7, p0, v8}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;-><init>(Lcom/android/server/WifiService;Landroid/os/Handler;)V

    iput-object v7, p0, Lcom/android/server/WifiService;->mNotificationEnabledSettingObserver:Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

    .line 914
    iget-object v7, p0, Lcom/android/server/WifiService;->mNotificationEnabledSettingObserver:Lcom/android/server/WifiService$NotificationEnabledSettingObserver;

    invoke-virtual {v7}, Lcom/android/server/WifiService$NotificationEnabledSettingObserver;->register()V

    .line 918
    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iget-object v8, p0, Lcom/android/server/WifiService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v9, 0x40

    invoke-virtual {v7, v8, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 924
    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 926
    .local v5, powerManager:Landroid/os/PowerManager;
    :try_start_0
    invoke-virtual {v5}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v7

    const/4 v8, 0x0

    aget v4, v7, v8

    .line 927
    .local v4, maxFreq:I
    sget-boolean v7, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "max Frequency : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_0
    if-lez v4, :cond_1

    .line 929
    const/4 v7, 0x1

    const-string v8, "WifiService"

    invoke-virtual {v5, v7, v4, v8}, Landroid/os/PowerManager;->newDVFSLock(IILjava/lang/String;)Landroid/os/PowerManager$DVFSLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/WifiService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    .end local v4           #maxFreq:I
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/android/server/WifiService$7;

    invoke-direct {v8, p0}, Lcom/android/server/WifiService$7;-><init>(Lcom/android/server/WifiService;)V

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.net.wifi.SET_HOME_AP"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 992
    return-void

    .line 931
    :catch_0
    move-exception v1

    .line 932
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 933
    iput-object v12, p0, Lcom/android/server/WifiService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    goto :goto_0

    .line 156
    nop

    :array_0
    .array-data 0x8
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/server/WifiService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/WifiService;->mClients:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/WifiService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->handleAirplaneModeToggled(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mWifiEnabled:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/server/WifiService;->resetNotification()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mNeedBooster:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mNeedBooster:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/server/WifiService;->evaluateTrafficStatsPolling()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/server/WifiService;->checkAndSetNotification()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateResources()V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mIsShowingNotification:Z

    return p1
.end method

.method static synthetic access$1900()I
    .locals 1

    .prologue
    .line 114
    sget v0, Lcom/android/server/WifiService;->mBoosterFLAG:I

    return v0
.end method

.method static synthetic access$1972(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    sget v0, Lcom/android/server/WifiService;->mBoosterFLAG:I

    and-int/2addr v0, p0

    sput v0, Lcom/android/server/WifiService;->mBoosterFLAG:I

    return v0
.end method

.method static synthetic access$1976(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    sget v0, Lcom/android/server/WifiService;->mBoosterFLAG:I

    or-int/2addr v0, p0

    sput v0, Lcom/android/server/WifiService;->mBoosterFLAG:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/WifiService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/server/WifiService;->determineBoosterMode()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/server/WifiService;->handleSecurityPolicy()V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/server/WifiService;->isBootCompleted:Z

    return p1
.end method

.method static synthetic access$2300()Z
    .locals 1

    .prologue
    .line 114
    sget-boolean v0, Lcom/android/server/WifiService;->DBG:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/WifiService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/server/WifiService;->mPluggedType:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/WifiService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput p1, p0, Lcom/android/server/WifiService;->mPluggedType:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/WifiService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$LockList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/WifiService;Landroid/os/IBinder;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    return v0
.end method

.method static synthetic access$408(Lcom/android/server/WifiService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/WifiService;->mTrafficStatsPollToken:I

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/WifiService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/WifiService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->removeMulticasterLocked(II)V

    return-void
.end method

.method static synthetic access$4602(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mNotificationEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/server/WifiService;->notifyOnDataActivity()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/WifiService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/WifiService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private acquireWifiLockLocked(Lcom/android/server/WifiService$WifiLock;)Z
    .locals 6
    .parameter "wifiLock"

    .prologue
    .line 2681
    sget-boolean v3, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireWifiLockLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    :cond_0
    iget-object v3, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->addLock(Lcom/android/server/WifiService$WifiLock;)V
    invoke-static {v3, p1}, Lcom/android/server/WifiService$LockList;->access$4100(Lcom/android/server/WifiService$LockList;Lcom/android/server/WifiService$WifiLock;)V

    .line 2685
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2687
    .local v1, ident:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 2688
    iget v3, p1, Lcom/android/server/WifiService$WifiLock;->mMode:I

    packed-switch v3, :pswitch_data_0

    .line 2703
    :goto_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 2705
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2706
    const/4 v3, 0x1

    .line 2710
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2708
    return v3

    .line 2690
    :pswitch_0
    :try_start_1
    iget v3, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    goto :goto_0

    .line 2707
    :catch_0
    move-exception v0

    .line 2708
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_1

    .line 2693
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    iget v3, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2710
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 2697
    :pswitch_2
    :try_start_2
    iget v3, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 2688
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkAndSetNotification()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3062
    iget-boolean v4, p0, Lcom/android/server/WifiService;->mNotificationEnabled:Z

    if-nez v4, :cond_1

    .line 3129
    :cond_0
    :goto_0
    return-void

    .line 3065
    :cond_1
    iget-object v4, p0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    .line 3066
    .local v3, state:Landroid/net/NetworkInfo$State;
    sget-object v4, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_2

    sget-object v4, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_5

    .line 3069
    :cond_2
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v2

    .line 3070
    .local v2, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_5

    .line 3071
    iput v6, p0, Lcom/android/server/WifiService;->mNumOpenNetworks:I

    .line 3075
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_4

    .line 3076
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 3080
    .local v1, scanResult:Landroid/net/wifi/ScanResult;
    iget-object v4, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "[ESS]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3082
    iget v4, p0, Lcom/android/server/WifiService;->mNumOpenNetworks:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mNumOpenNetworks:I

    .line 3075
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3099
    .end local v1           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_4
    iget v4, p0, Lcom/android/server/WifiService;->mNumOpenNetworks:I

    if-lez v4, :cond_5

    .line 3100
    iget v4, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    .line 3108
    iget-boolean v4, p0, Lcom/android/server/WifiService;->mNotificationEnabled:Z

    if-eqz v4, :cond_0

    .line 3109
    const/4 v4, 0x1

    iget v5, p0, Lcom/android/server/WifiService;->mNumOpenNetworks:I

    invoke-direct {p0, v4, v5, v6, v6}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    goto :goto_0

    .line 3124
    .end local v0           #i:I
    .end local v2           #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_5
    invoke-direct {p0, v6, v6, v6, v6}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    goto :goto_0
.end method

.method private determineBoosterMode()V
    .locals 3

    .prologue
    .line 3042
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBoosterFLAG : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/WifiService;->mBoosterFLAG:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3043
    sget v0, Lcom/android/server/WifiService;->mBoosterFLAG:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3044
    sget-object v0, Lcom/android/server/WifiService$BoosterMode;->BTCoexMode:Lcom/android/server/WifiService$BoosterMode;

    sput-object v0, Lcom/android/server/WifiService;->mCurrentMode:Lcom/android/server/WifiService$BoosterMode;

    .line 3053
    :goto_0
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current booster mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/WifiService;->mCurrentMode:Lcom/android/server/WifiService$BoosterMode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    return-void

    .line 3046
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    sget v0, Lcom/android/server/WifiService;->mBoosterFLAG:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3048
    sget-object v0, Lcom/android/server/WifiService$BoosterMode;->Hotspot3GMode:Lcom/android/server/WifiService$BoosterMode;

    sput-object v0, Lcom/android/server/WifiService;->mCurrentMode:Lcom/android/server/WifiService$BoosterMode;

    goto :goto_0

    .line 3050
    :cond_1
    sget-object v0, Lcom/android/server/WifiService$BoosterMode;->FullMode:Lcom/android/server/WifiService$BoosterMode;

    sput-object v0, Lcom/android/server/WifiService;->mCurrentMode:Lcom/android/server/WifiService$BoosterMode;

    goto :goto_0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .locals 3

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    return-void
.end method

.method private evaluateTrafficStatsPolling()V
    .locals 5

    .prologue
    const v4, 0x25015

    const/4 v3, 0x0

    .line 2921
    iget-boolean v1, p0, Lcom/android/server/WifiService;->mNeedBooster:Z

    if-eqz v1, :cond_0

    .line 2922
    invoke-direct {p0}, Lcom/android/server/WifiService;->determineBoosterMode()V

    .line 2923
    iget-object v1, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    const/4 v2, 0x1

    invoke-static {v1, v4, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 2925
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2941
    :goto_0
    return-void

    .line 2927
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    invoke-static {v1, v4, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 2929
    .restart local v0       #msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private getPersistedWifiState()I
    .locals 5

    .prologue
    .line 1035
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1037
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "wifi_on"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1042
    :goto_0
    return v2

    .line 1038
    :catch_0
    move-exception v1

    .line 1039
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "WifiService"

    const-string v4, "SettingNotFoundException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/4 v2, 0x0

    .line 1041
    .local v2, state:I
    const-string v3, "wifi_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private handleAirplaneModeToggled(Z)V
    .locals 2
    .parameter "airplaneEnabled"

    .prologue
    .line 1072
    if-eqz p1, :cond_1

    .line 1074
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mWifiEnabled:Z

    if-eqz v0, :cond_0

    .line 1075
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->persistWifiState(I)V

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1079
    :cond_1
    invoke-direct {p0}, Lcom/android/server/WifiService;->testAndClearWifiSavedState()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1081
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->persistWifiState(I)V

    goto :goto_0
.end method

.method private handleSecurityPolicy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2006
    iget-object v1, p0, Lcom/android/server/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/WifiService;->allowWifi:Z

    .line 2007
    iget-object v1, p0, Lcom/android/server/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    .line 2008
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSecurityPolicy()     allowWifi ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/WifiService;->allowWifi:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")     allowWifiAp ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    iget-boolean v1, p0, Lcom/android/server/WifiService;->allowWifi:Z

    if-nez v1, :cond_0

    .line 2010
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiEnabledState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 2011
    iget-boolean v1, p0, Lcom/android/server/WifiService;->allowWifi:Z

    invoke-virtual {p0, v1}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 2012
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2013
    .local v0, wifiToastIntent:Landroid/content/Intent;
    const-string v1, "info_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2014
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2017
    .end local v0           #wifiToastIntent:Landroid/content/Intent;
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    if-nez v1, :cond_1

    .line 2018
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    .line 2019
    const/4 v1, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 2020
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2021
    .restart local v0       #wifiToastIntent:Landroid/content/Intent;
    const-string v1, "info_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2022
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2025
    .end local v0           #wifiToastIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private handleWifiToggled(Z)V
    .locals 4
    .parameter "wifiEnabled"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1055
    iget-object v3, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 1056
    .local v0, airplaneEnabled:Z
    :goto_0
    if-eqz p1, :cond_2

    .line 1057
    if-eqz v0, :cond_1

    .line 1058
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/WifiService;->persistWifiState(I)V

    .line 1069
    :goto_1
    return-void

    .end local v0           #airplaneEnabled:Z
    :cond_0
    move v0, v2

    .line 1055
    goto :goto_0

    .line 1060
    .restart local v0       #airplaneEnabled:Z
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/WifiService;->persistWifiState(I)V

    goto :goto_1

    .line 1067
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/WifiService;->persistWifiState(I)V

    goto :goto_1
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2119
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneSensitive()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isAirplaneSensitive()Z
    .locals 3

    .prologue
    .line 2100
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2102
    .local v0, airplaneModeRadios:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isAirplaneToggleable()Z
    .locals 3

    .prologue
    .line 2107
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2109
    .local v0, toggleableRadios:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSecuredAp(I)Z
    .locals 7
    .parameter "networkId"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3393
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 3394
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_3

    .line 3395
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 3396
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v5, p1, :cond_0

    .line 3397
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3411
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    return v3

    .line 3400
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3404
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v4

    if-nez v5, :cond_1

    move v3, v4

    .line 3407
    goto :goto_0

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    move v3, v4

    .line 3411
    goto :goto_0
.end method

.method private noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V
    .locals 2
    .parameter "wifiLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2657
    iget v0, p1, Lcom/android/server/WifiService$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 2666
    :goto_0
    return-void

    .line 2660
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 2663
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScanWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 2657
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V
    .locals 2
    .parameter "wifiLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2669
    iget v0, p1, Lcom/android/server/WifiService$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 2678
    :goto_0
    return-void

    .line 2672
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 2675
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScanWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 2669
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private notifyOnDataActivity()V
    .locals 24

    .prologue
    .line 2945
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/WifiService;->mTxPkts:J

    .local v12, preTxPkts:J
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/WifiService;->mRxPkts:J

    .line 2946
    .local v8, preRxPkts:J
    const/4 v4, 0x0

    .line 2948
    .local v4, dataActivity:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/net/TrafficStats;->getTxPackets(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WifiService;->mTxPkts:J

    .line 2949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/net/TrafficStats;->getRxPackets(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WifiService;->mRxPkts:J

    .line 2951
    const-wide/16 v20, 0x0

    cmp-long v20, v12, v20

    if-gtz v20, :cond_0

    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-lez v20, :cond_5

    .line 2952
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WifiService;->mTxPkts:J

    move-wide/from16 v20, v0

    sub-long v16, v20, v12

    .line 2953
    .local v16, sent:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WifiService;->mRxPkts:J

    move-wide/from16 v20, v0

    sub-long v14, v20, v8

    .line 2954
    .local v14, received:J
    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-lez v20, :cond_1

    .line 2955
    or-int/lit8 v4, v4, 0x2

    .line 2957
    :cond_1
    const-wide/16 v20, 0x0

    cmp-long v20, v14, v20

    if-lez v20, :cond_2

    .line 2958
    or-int/lit8 v4, v4, 0x1

    .line 2962
    :cond_2
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/WifiService;->mTxBytes:J

    .local v10, preTxBytes:J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/WifiService;->mRxBytes:J

    .line 2963
    .local v6, preRxBytes:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/server/WifiService;->mCurrentMode:Lcom/android/server/WifiService$BoosterMode;

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/WifiService$BoosterMode;->ordinal()I

    move-result v21

    aget-wide v20, v20, v21

    const-wide/16 v22, 0x400

    mul-long v18, v20, v22

    .line 2966
    .local v18, threshold:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/net/TrafficStats;->getTxBytes(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WifiService;->mTxBytes:J

    .line 2967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/net/TrafficStats;->getRxBytes(Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/WifiService;->mRxBytes:J

    .line 2970
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WifiService;->mTxBytes:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v10

    cmp-long v20, v20, v18

    if-gtz v20, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/WifiService;->mRxBytes:J

    move-wide/from16 v20, v0

    sub-long v20, v20, v6

    cmp-long v20, v20, v18

    if-lez v20, :cond_4

    .line 2971
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    .line 2973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x7d0

    invoke-virtual/range {v20 .. v22}, Landroid/os/PowerManager$DVFSLock;->acquire(J)V

    .line 2977
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WifiService;->mDataActivity:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v4, v0, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WifiService;->mScreenOff:Z

    move/from16 v20, v0

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    sget-object v21, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 2979
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/WifiService;->mDataActivity:I

    .line 2981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mClients:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/util/AsyncChannel;

    .line 2982
    .local v3, client:Lcom/android/internal/util/AsyncChannel;
    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/WifiService;->mDataActivity:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    goto :goto_0

    .line 2997
    .end local v3           #client:Lcom/android/internal/util/AsyncChannel;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #preRxBytes:J
    .end local v10           #preTxBytes:J
    .end local v14           #received:J
    .end local v16           #sent:J
    .end local v18           #threshold:J
    :cond_5
    return-void
.end method

.method private persistWifiState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1087
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1088
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1089
    const-string v1, "wifi_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1090
    return-void
.end method

.method private persistWifiState(Z)V
    .locals 5
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1093
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1094
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v2

    .line 1095
    .local v0, airplane:Z
    :goto_0
    if-eqz p1, :cond_2

    .line 1096
    if-eqz v0, :cond_1

    .line 1097
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1105
    :goto_1
    const-string v2, "wifi_on"

    iget-object v3, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1106
    return-void

    .end local v0           #airplane:Z
    :cond_0
    move v0, v3

    .line 1094
    goto :goto_0

    .line 1099
    .restart local v0       #airplane:Z
    :cond_1
    iget-object v3, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1

    .line 1102
    :cond_2
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_1
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .line 2085
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2086
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2087
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2088
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2089
    const-string v1, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2090
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2091
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2096
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2097
    return-void
.end method

.method private releaseWifiLockLocked(Landroid/os/IBinder;)Z
    .locals 7
    .parameter "lock"

    .prologue
    .line 2751
    iget-object v4, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;
    invoke-static {v4, p1}, Lcom/android/server/WifiService$LockList;->access$4300(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;

    move-result-object v3

    .line 2753
    .local v3, wifiLock:Lcom/android/server/WifiService$WifiLock;
    sget-boolean v4, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseWifiLockLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    :cond_0
    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 2757
    .local v0, hadLock:Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2759
    .local v1, ident:J
    if-eqz v0, :cond_1

    .line 2760
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/WifiService;->noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 2761
    iget v4, v3, Lcom/android/server/WifiService$WifiLock;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 2775
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2779
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2782
    return v0

    .line 2755
    .end local v0           #hadLock:Z
    .end local v1           #ident:J
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 2763
    .restart local v0       #hadLock:Z
    .restart local v1       #ident:J
    :pswitch_0
    :try_start_1
    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    goto :goto_1

    .line 2777
    :catch_0
    move-exception v4

    goto :goto_2

    .line 2766
    :pswitch_1
    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2779
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 2769
    :pswitch_2
    :try_start_2
    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 2761
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private removeMulticasterLocked(II)V
    .locals 5
    .parameter "i"
    .parameter "uid"

    .prologue
    .line 2888
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$Multicaster;

    .line 2890
    .local v1, removed:Lcom/android/server/WifiService$Multicaster;
    if-eqz v1, :cond_0

    .line 2891
    invoke-virtual {v1}, Lcom/android/server/WifiService$Multicaster;->unlinkDeathRecipient()V

    .line 2893
    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 2894
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    .line 2897
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2899
    .local v0, ident:Ljava/lang/Long;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2902
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2904
    return-void

    .line 2902
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2900
    :catch_0
    move-exception v2

    .line 2902
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method private declared-synchronized reportStartWorkSource()V
    .locals 3

    .prologue
    .line 2034
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    .line 2035
    iget-boolean v1, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-eqz v1, :cond_0

    .line 2036
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/WifiService$LockList;->access$3100(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2037
    iget-object v2, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/WifiService$LockList;->access$3100(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$WifiLock;

    iget-object v1, v1, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 2036
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2040
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->updateBatteryWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2041
    monitor-exit p0

    return-void

    .line 2034
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private resetNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/WifiService;->mNotificationRepeatTime:J

    .line 3137
    iput v2, p0, Lcom/android/server/WifiService;->mNumScansSinceNetworkStateChange:I

    .line 3138
    invoke-direct {p0, v2, v2, v2, v2}, Lcom/android/server/WifiService;->setNotificationVisible(ZIZI)V

    .line 3139
    return-void
.end method

.method private resetVzwNotification()V
    .locals 2

    .prologue
    .line 3143
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/WifiService;->mVzwNotificationRepeatTime:J

    .line 3144
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->showVzwWifiNotification(Z)V

    .line 3145
    return-void
.end method

.method private setDeviceIdleAndUpdateWifi(Z)V
    .locals 0
    .parameter "deviceIdle"

    .prologue
    .line 2028
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    .line 2029
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 2030
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V

    .line 2031
    return-void
.end method

.method private setNotificationVisible(ZIZI)V
    .locals 10
    .parameter "visible"
    .parameter "numNetworks"
    .parameter "force"
    .parameter "delay"

    .prologue
    const v9, 0x10806b7

    const/4 v8, 0x0

    .line 3166
    if-nez p1, :cond_1

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mNotificationShown:Z

    if-nez v4, :cond_1

    if-nez p3, :cond_1

    .line 3222
    :cond_0
    :goto_0
    return-void

    .line 3171
    :cond_1
    iput p2, p0, Lcom/android/server/WifiService;->mLowSignalNWs:I

    .line 3174
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 3178
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-nez p1, :cond_2

    .line 3218
    invoke-virtual {v2, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3220
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mIsShowingNotification:Z

    .line 3221
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mNotificationShown:Z

    goto :goto_0

    .line 3182
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/WifiService;->mNotificationRepeatTime:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 3194
    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    if-nez v4, :cond_3

    .line 3196
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    .line 3197
    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    .line 3198
    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iput v9, v4, Landroid/app/Notification;->icon:I

    .line 3199
    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 3200
    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v8, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3202
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3203
    .local v0, deleteIntent:Landroid/content/Intent;
    const-string v4, "nid"

    invoke-virtual {v0, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3204
    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 3207
    .end local v0           #deleteIntent:Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1130011

    invoke-virtual {v4, v5, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 3209
    .local v3, title:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1130012

    invoke-virtual {v4, v5, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 3211
    .local v1, details:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3212
    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v3, v1, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 3214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/WifiService;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/WifiService;->mNotificationRepeatTime:J

    .line 3216
    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v2, v9, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1
.end method

.method private setThresholdValues()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3002
    const/4 v0, 0x0

    .line 3004
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/data/misc/wifi/.threshold"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3005
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3007
    .local v4, values:[Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 3008
    iget-object v5, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v5, v6

    .line 3009
    iget-object v5, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v5, v6

    .line 3010
    iget-object v5, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v6, 0x2

    const/4 v7, 0x2

    aget-object v7, v4, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v5, v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 3024
    :cond_0
    sget-boolean v5, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v5, :cond_1

    .line 3025
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Threshold[FullMode] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    aget-wide v7, v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Threshold[Hotspot3G] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    aget-wide v7, v7, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Threshold[BTcoex] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    aget-wide v7, v7, v11

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    :cond_1
    if-eqz v1, :cond_2

    .line 3031
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_0
    move-object v0, v1

    .line 3037
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v4           #values:[Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_3
    :goto_1
    return-void

    .line 3012
    :catch_0
    move-exception v3

    .line 3013
    .local v3, ignore:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    sget-boolean v5, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v5, :cond_4

    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3014
    :cond_4
    iget-object v5, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v6, 0x0

    aget-wide v5, v5, v6

    cmp-long v5, v5, v12

    if-gez v5, :cond_5

    .line 3015
    iget-object v5, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v6, 0x0

    const-string v7, "1024"

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v5, v6

    .line 3017
    :cond_5
    iget-object v5, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v6, 0x1

    aget-wide v5, v5, v6

    cmp-long v5, v5, v12

    if-gez v5, :cond_6

    .line 3018
    iget-object v5, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v6, 0x1

    const-string v7, "128"

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v5, v6

    .line 3020
    :cond_6
    iget-object v5, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v6, 0x2

    aget-wide v5, v5, v6

    cmp-long v5, v5, v12

    if-gez v5, :cond_7

    .line 3021
    iget-object v5, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    const/4 v6, 0x2

    const-string v7, "128"

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    aput-wide v7, v5, v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3024
    :cond_7
    sget-boolean v5, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v5, :cond_8

    .line 3025
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Threshold[FullMode] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    aget-wide v7, v7, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Threshold[Hotspot3G] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    aget-wide v7, v7, v10

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Threshold[BTcoex] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    aget-wide v7, v7, v11

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    :cond_8
    if-eqz v0, :cond_3

    .line 3031
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 3032
    :catch_1
    move-exception v2

    .line 3033
    .local v2, e:Ljava/io/IOException;
    const-string v5, "WifiService"

    const-string v6, "Failed to close .threshold file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3024
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ignore:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_3
    sget-boolean v6, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v6, :cond_9

    .line 3025
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[FullMode] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    aget-wide v8, v8, v9

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[Hotspot3G] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    aget-wide v8, v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3027
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Threshold[BTcoex] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/WifiService;->mThresholdKbytes:[J

    aget-wide v8, v8, v11

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " KB"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    :cond_9
    if-eqz v0, :cond_a

    .line 3031
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 3024
    :cond_a
    :goto_4
    throw v5

    .line 3032
    :catch_2
    move-exception v2

    .line 3033
    .restart local v2       #e:Ljava/io/IOException;
    const-string v6, "WifiService"

    const-string v7, "Failed to close .threshold file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3032
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v4       #values:[Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 3033
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "WifiService"

    const-string v6, "Failed to close .threshold file"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3024
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #values:[Ljava/lang/String;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 3012
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method private shouldWifiBeEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1047
    iget-object v2, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1048
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1048
    goto :goto_0

    .line 1050
    :cond_2
    iget-object v2, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private showVzwWifiNotification(Z)V
    .locals 10
    .parameter "visible"

    .prologue
    const/16 v9, 0x146e

    const/4 v8, 0x0

    .line 3227
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showVzwWifiNotification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 3230
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_2

    .line 3231
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mVzwNotificationRepeatTime "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/WifiService;->mVzwNotificationRepeatTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/WifiService;->mVzwNotificationRepeatTime:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 3234
    const-string v4, "WifiService"

    const-string v5, "not showing notification"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    :goto_0
    return-void

    .line 3238
    :cond_0
    iget-object v4, p0, Lcom/android/server/WifiService;->mVzwWifiNotification:Landroid/app/Notification;

    if-nez v4, :cond_1

    .line 3240
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/android/server/WifiService;->mVzwWifiNotification:Landroid/app/Notification;

    .line 3241
    iget-object v4, p0, Lcom/android/server/WifiService;->mVzwWifiNotification:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    .line 3242
    iget-object v4, p0, Lcom/android/server/WifiService;->mVzwWifiNotification:Landroid/app/Notification;

    const v5, 0x10806b7

    iput v5, v4, Landroid/app/Notification;->icon:I

    .line 3243
    iget-object v4, p0, Lcom/android/server/WifiService;->mVzwWifiNotification:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 3244
    iget-object v4, p0, Lcom/android/server/WifiService;->mVzwWifiNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.settings.WIFI_SETTINGS_STATUS"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v8, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3246
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.net.wifi.SEC_VZW_NOTIFICATION_CANCEL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3247
    .local v0, deleteIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/WifiService;->mVzwWifiNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v0, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 3250
    .end local v0           #deleteIntent:Landroid/content/Intent;
    :cond_1
    const-string v3, "VerizonWiFi available"

    .line 3251
    .local v3, title:Ljava/lang/CharSequence;
    const-string v1, "Click to Connect to VerizonWiFi"

    .line 3252
    .local v1, details:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/WifiService;->mVzwWifiNotification:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3253
    iget-object v4, p0, Lcom/android/server/WifiService;->mVzwWifiNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/WifiService;->mVzwWifiNotification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v3, v1, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 3255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/WifiService;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/WifiService;->mVzwNotificationRepeatTime:J

    .line 3257
    iget-object v4, p0, Lcom/android/server/WifiService;->mVzwWifiNotification:Landroid/app/Notification;

    invoke-virtual {v2, v9, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 3261
    .end local v1           #details:Ljava/lang/CharSequence;
    .end local v3           #title:Ljava/lang/CharSequence;
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mIsShowingVzwNotification:Z

    .line 3262
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mVzwNotificationShown:Z

    goto :goto_0

    .line 3259
    :cond_2
    invoke-virtual {v2, v9}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method private testAndClearWifiSavedState()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1022
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1023
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 1025
    .local v1, wifiSavedState:I
    :try_start_0
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 1026
    if-ne v1, v2, :cond_0

    .line 1027
    const-string v4, "wifi_saved_state"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    :cond_0
    :goto_0
    if-ne v1, v2, :cond_1

    :goto_1
    return v2

    :cond_1
    move v2, v3

    goto :goto_1

    .line 1028
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private updateResources()V
    .locals 7

    .prologue
    .line 3266
    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mIsShowingNotification:Z

    if-eqz v4, :cond_0

    .line 3267
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 3268
    .local v2, notificationManager:Landroid/app/NotificationManager;
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1130011

    iget v6, p0, Lcom/android/server/WifiService;->mNumOpenNetworks:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 3270
    .local v3, title:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1130012

    iget v6, p0, Lcom/android/server/WifiService;->mNumOpenNetworks:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 3272
    .local v0, details:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iput-object v3, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3273
    iget-object v4, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    iget-object v6, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v5, v3, v0, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 3274
    const v4, 0x10806b7

    iget-object v5, p0, Lcom/android/server/WifiService;->mNotification:Landroid/app/Notification;

    invoke-virtual {v2, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 3276
    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    .end local v3           #title:Ljava/lang/CharSequence;
    :cond_0
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStatusNoti:Landroid/app/Notification;

    if-eqz v4, :cond_1

    .line 3281
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3285
    :goto_0
    return-void

    .line 3282
    :catch_0
    move-exception v1

    .line 3283
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v4, "WifiService"

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateWifiState()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2044
    iget-object v5, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->hasLocks()Z
    invoke-static {v5}, Lcom/android/server/WifiService$LockList;->access$3200(Lcom/android/server/WifiService$LockList;)Z

    move-result v0

    .line 2045
    .local v0, lockHeld:Z
    const/4 v1, 0x1

    .line 2048
    .local v1, strongestLockMode:I
    iget-boolean v5, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    if-eqz v5, :cond_3

    .line 2049
    const/4 v2, 0x0

    .line 2054
    .local v2, wifiShouldBeStarted:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 2055
    iget-object v5, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->getStrongestLockMode()I
    invoke-static {v5}, Lcom/android/server/WifiService$LockList;->access$3300(Lcom/android/server/WifiService$LockList;)I

    move-result v1

    .line 2058
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-nez v5, :cond_1

    if-ne v1, v7, :cond_1

    .line 2059
    const/4 v1, 0x1

    .line 2063
    :cond_1
    iget-object v5, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2064
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 2067
    :cond_2
    invoke-direct {p0}, Lcom/android/server/WifiService;->shouldWifiBeEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2068
    if-eqz v2, :cond_8

    .line 2069
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 2070
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 2071
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    if-ne v1, v7, :cond_6

    move v5, v4

    :goto_1
    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiStateMachine;->setScanOnlyMode(Z)V

    .line 2073
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-boolean v6, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v5, v4, v6}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    .line 2074
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v6, 0x3

    if-ne v1, v6, :cond_7

    :goto_2
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiStateMachine;->setHighPerfModeEnabled(Z)V

    .line 2082
    :goto_3
    return-void

    .line 2051
    .end local v2           #wifiShouldBeStarted:Z
    :cond_3
    iget-boolean v5, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-eqz v5, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    move v2, v4

    .restart local v2       #wifiShouldBeStarted:Z
    :goto_4
    goto :goto_0

    .end local v2           #wifiShouldBeStarted:Z
    :cond_5
    move v2, v3

    goto :goto_4

    .restart local v2       #wifiShouldBeStarted:Z
    :cond_6
    move v5, v3

    .line 2071
    goto :goto_1

    :cond_7
    move v4, v3

    .line 2074
    goto :goto_2

    .line 2077
    :cond_8
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-boolean v5, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v4, v3, v5}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    goto :goto_3

    .line 2080
    :cond_9
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    goto :goto_3
.end method


# virtual methods
.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .parameter "binder"
    .parameter "tag"

    .prologue
    .line 2848
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 2850
    iget-object v3, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v3

    .line 2851
    :try_start_0
    iget v2, p0, Lcom/android/server/WifiService;->mMulticastEnabled:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/WifiService;->mMulticastEnabled:I

    .line 2852
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    new-instance v4, Lcom/android/server/WifiService$Multicaster;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/server/WifiService$Multicaster;-><init>(Lcom/android/server/WifiService;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2857
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->stopFilteringMulticastV4Packets()V

    .line 2858
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2860
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2861
    .local v1, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2863
    .local v0, ident:Ljava/lang/Long;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2866
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2868
    return-void

    .line 2858
    .end local v0           #ident:Ljava/lang/Long;
    .end local v1           #uid:I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2866
    .restart local v0       #ident:Ljava/lang/Long;
    .restart local v1       #uid:I
    :catchall_1
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 2864
    :catch_0
    move-exception v2

    .line 2866
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .locals 6
    .parameter "binder"
    .parameter "lockMode"
    .parameter "tag"
    .parameter "ws"

    .prologue
    .line 2633
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2634
    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_1

    .line 2637
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument, lockMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    sget-boolean v1, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2639
    :cond_0
    const/4 v1, 0x0

    .line 2652
    :goto_0
    return v1

    .line 2641
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 2642
    const/4 p4, 0x0

    .line 2644
    :cond_2
    if-eqz p4, :cond_3

    .line 2645
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WifiService;->enforceWakeSourcePermission(II)V

    .line 2647
    :cond_3
    if-nez p4, :cond_4

    .line 2648
    new-instance p4, Landroid/os/WorkSource;

    .end local p4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p4, v1}, Landroid/os/WorkSource;-><init>(I)V

    .line 2650
    .restart local p4
    :cond_4
    new-instance v0, Lcom/android/server/WifiService$WifiLock;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WifiService$WifiLock;-><init>(Lcom/android/server/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 2651
    .local v0, wifiLock:Lcom/android/server/WifiService$WifiLock;
    iget-object v2, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v2

    .line 2652
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->acquireWifiLockLocked(Lcom/android/server/WifiService$WifiLock;)Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 2653
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "config"

    .prologue
    .line 1464
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1472
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 1476
    :goto_0
    return v0

    .line 1475
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1
    .parameter "bssid"

    .prologue
    .line 1674
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1676
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->addToBlacklist(Ljava/lang/String;)V

    .line 1677
    return-void
.end method

.method public callSECApi(Landroid/os/Message;)I
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 2181
    if-nez p1, :cond_1

    move v4, v5

    .line 2508
    :cond_0
    :goto_0
    :sswitch_0
    return v4

    .line 2184
    :cond_1
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    move v4, v5

    .line 2508
    goto :goto_0

    .line 2189
    :sswitch_1
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2190
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v4

    goto :goto_0

    .line 2192
    :sswitch_2
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2193
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v4

    goto :goto_0

    .line 2196
    :sswitch_3
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->getAccessPointNumConnectedSta()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 2197
    :catch_0
    move-exception v2

    .line 2198
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    move v4, v5

    .line 2199
    goto :goto_0

    .line 2203
    .end local v2           #e:Landroid/os/RemoteException;
    :sswitch_4
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2204
    .local v0, args:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/server/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v5, "mac"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/os/INetworkManagementService;->setAccessPointDisassocSta(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    goto :goto_0

    .line 2205
    .end local v0           #args:Landroid/os/Bundle;
    :catch_1
    move-exception v2

    .line 2206
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2211
    .end local v2           #e:Landroid/os/RemoteException;
    :sswitch_5
    :try_start_2
    iget-object v3, p0, Lcom/android/server/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->readWhiteList()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    goto :goto_0

    .line 2212
    :catch_2
    move-exception v2

    .line 2213
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2218
    .end local v2           #e:Landroid/os/RemoteException;
    :sswitch_6
    :try_start_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2219
    .restart local v0       #args:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/server/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    const-string v5, "maxClient"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/os/INetworkManagementService;->setMaxClient(I)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v4

    goto :goto_0

    .line 2220
    .end local v0           #args:Landroid/os/Bundle;
    :catch_3
    move-exception v2

    .line 2221
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2226
    .end local v2           #e:Landroid/os/RemoteException;
    :sswitch_7
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2227
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    goto :goto_0

    .line 2231
    :sswitch_8
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2232
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->checkDnsQuery()V

    goto :goto_0

    .line 2238
    :sswitch_9
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2239
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v4

    goto :goto_0

    .line 2244
    :sswitch_a
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2245
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v4

    goto/16 :goto_0

    :sswitch_b
    move v4, v5

    .line 2251
    goto/16 :goto_0

    :sswitch_c
    move v4, v5

    .line 2266
    goto/16 :goto_0

    :sswitch_d
    move v4, v5

    .line 2278
    goto/16 :goto_0

    :sswitch_e
    move v4, v5

    .line 2282
    goto/16 :goto_0

    :sswitch_f
    move v4, v5

    .line 2292
    goto/16 :goto_0

    .line 2295
    :sswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2307
    .restart local v0       #args:Landroid/os/Bundle;
    goto/16 :goto_0

    .line 2311
    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2313
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v3, "bEnable"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 2326
    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2327
    .restart local v0       #args:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "bEnable"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiStateMachine;->CWsetWifiScreenEnable(Z)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    move v4, v3

    goto/16 :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    .line 2331
    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_13
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->CWgetWifiScreenEnable()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_2
    move v4, v3

    goto/16 :goto_0

    :cond_3
    move v3, v4

    goto :goto_2

    .line 2335
    :sswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2343
    .restart local v0       #args:Landroid/os/Bundle;
    goto/16 :goto_0

    .line 2347
    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2349
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v3, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SEC_COMMAND_ID_CW_PERSIST_WIFI_ENABLED  enabled = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "enabled"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    const-string v3, "enabled"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/WifiService;->persistWifiState(Z)V

    goto/16 :goto_0

    .line 2356
    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_16
    const-string v5, "WifiService"

    const-string v6, "SEC_COMMAND_ID_CW_HANDLE_DORMANCY  called"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    invoke-direct {p0, v3}, Lcom/android/server/WifiService;->setDeviceIdleAndUpdateWifi(Z)V

    goto/16 :goto_0

    .line 2362
    :sswitch_17
    const-string v3, "WifiService"

    const-string v4, "SEC_COMMAND_ID_CW_GET_STATE called"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget v4, v3, Landroid/net/wifi/WifiStateMachine;->mCWState:I

    goto/16 :goto_0

    .line 2368
    :sswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2369
    .restart local v0       #args:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const-string v5, "netId"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiStateMachine;->unlockMobNetwork(I)V

    goto/16 :goto_0

    .line 2373
    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_19
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2374
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v4

    goto/16 :goto_0

    .line 2378
    :sswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2380
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v5, "enable"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2381
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiEnabledState()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    .line 2382
    invoke-virtual {p0, v3}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 2383
    :cond_4
    const-string v3, "WifiService"

    const-string v5, "WiFi Enabled with p2p -> Stop Scan, Stop Assoc"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    :goto_3
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    .line 2385
    :cond_5
    const-string v3, "WifiService"

    const-string v5, "WiFi Eanbled with p2p -> disable"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2392
    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2393
    .restart local v0       #args:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const-string v5, "mode"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/net/wifi/WifiStateMachine;->setRvfMode(I)V

    goto/16 :goto_0

    .line 2397
    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_1c
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->getRvfMode()I

    move-result v4

    goto/16 :goto_0

    .line 2400
    :sswitch_1d
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    move-result v4

    goto/16 :goto_0

    .line 2428
    :sswitch_1e
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callSECApi - id : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2431
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v3, :cond_6

    .line 2432
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v3, v4, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I

    move-result v4

    goto/16 :goto_0

    .line 2434
    :cond_6
    const-string v3, "WifiService"

    const-string v4, "mWifiStateMachineChannel is not initialized"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    .line 2435
    goto/16 :goto_0

    :sswitch_1f
    move v4, v5

    .line 2457
    goto/16 :goto_0

    :sswitch_20
    move v4, v5

    .line 2475
    goto/16 :goto_0

    .line 2480
    :sswitch_21
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->getDhcpRenewAfterRoamingMode()I

    move-result v4

    goto/16 :goto_0

    .line 2488
    :sswitch_22
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v5, "mode"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiStateMachine;->setDhcpRenewAfterRoamingMode(I)I

    move-result v4

    goto/16 :goto_0

    .line 2496
    :sswitch_23
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2497
    const-string v3, "persist.service.wifi_band"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto/16 :goto_0

    .line 2499
    :sswitch_24
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2500
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 2501
    .local v1, band:I
    if-ltz v1, :cond_7

    const/4 v3, 0x2

    if-le v1, v3, :cond_8

    :cond_7
    move v4, v5

    .line 2502
    goto/16 :goto_0

    .line 2504
    :cond_8
    const-string v3, "persist.service.wifi_band"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2184
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_10
        0x7 -> :sswitch_11
        0x8 -> :sswitch_12
        0x9 -> :sswitch_13
        0xa -> :sswitch_14
        0xb -> :sswitch_15
        0xc -> :sswitch_16
        0xd -> :sswitch_17
        0xe -> :sswitch_6
        0xf -> :sswitch_2
        0x10 -> :sswitch_7
        0x11 -> :sswitch_9
        0x12 -> :sswitch_19
        0x13 -> :sswitch_a
        0x14 -> :sswitch_b
        0x15 -> :sswitch_c
        0x16 -> :sswitch_d
        0x18 -> :sswitch_f
        0x19 -> :sswitch_8
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_18
        0x1e -> :sswitch_23
        0x1f -> :sswitch_24
        0x20 -> :sswitch_1d
        0x22 -> :sswitch_e
        0x23 -> :sswitch_e
        0x64 -> :sswitch_1e
        0x65 -> :sswitch_1e
        0x66 -> :sswitch_1e
        0x67 -> :sswitch_1e
        0x68 -> :sswitch_1e
        0x69 -> :sswitch_1e
        0x6a -> :sswitch_1e
        0x6b -> :sswitch_1e
        0x6d -> :sswitch_1e
        0x82 -> :sswitch_1e
        0x83 -> :sswitch_1e
        0x84 -> :sswitch_1e
        0x85 -> :sswitch_1e
        0x86 -> :sswitch_1e
        0x87 -> :sswitch_1e
        0x88 -> :sswitch_1e
        0x89 -> :sswitch_1e
        0x96 -> :sswitch_1e
        0x97 -> :sswitch_1e
        0xa1 -> :sswitch_1e
        0xa2 -> :sswitch_1e
        0xa3 -> :sswitch_1e
        0xaa -> :sswitch_1e
        0xab -> :sswitch_1e
        0xac -> :sswitch_1f
        0xad -> :sswitch_1f
        0xae -> :sswitch_20
        0xaf -> :sswitch_20
        0xb4 -> :sswitch_21
        0xb5 -> :sswitch_22
    .end sparse-switch
.end method

.method public callSECStringApi(Landroid/os/Message;)Ljava/lang/String;
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 2512
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 2545
    :goto_0
    return-object v0

    .line 2514
    :sswitch_0
    const-string v0, ""

    goto :goto_0

    .line 2520
    :sswitch_1
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callSECStringApi - id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2523
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_0

    .line 2524
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2526
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2535
    :sswitch_2
    const-string v1, "WifiService"

    const-string v2, "callSECStringApi - SEC_COMMAND_ID_GET_SCAN_RESULTS_EX"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_1

    .line 2538
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2540
    :cond_1
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2512
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x21 -> :sswitch_2
        0x6c -> :sswitch_1
        0xa0 -> :sswitch_1
    .end sparse-switch
.end method

.method public checkAndStartWifi()V
    .locals 4

    .prologue
    .line 1002
    iget-boolean v1, p0, Lcom/android/server/WifiService;->isBootCompleted:Z

    if-nez v1, :cond_0

    .line 1019
    :goto_0
    return-void

    .line 1005
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mAirplaneModeOn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1006
    iget-object v1, p0, Lcom/android/server/WifiService;->mPersistWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1008
    invoke-direct {p0}, Lcom/android/server/WifiService;->shouldWifiBeEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/WifiService;->testAndClearWifiSavedState()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 1009
    .local v0, wifiEnabled:Z
    :goto_1
    const-string v2, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiService starting up with Wi-Fi "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_4

    const-string v1, "enabled"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 1016
    :cond_2
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->makeWifiWatchdogStateMachine(Landroid/content/Context;)Landroid/net/wifi/WifiWatchdogStateMachine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    goto :goto_0

    .line 1008
    .end local v0           #wifiEnabled:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1009
    .restart local v0       #wifiEnabled:Z
    :cond_4
    const-string v1, "disabled"

    goto :goto_2
.end method

.method public clearBlacklist()V
    .locals 1

    .prologue
    .line 1684
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1686
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->clearBlacklist()V

    .line 1687
    return-void
.end method

.method public disableNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 1532
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1533
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    .line 1537
    :goto_0
    return v0

    .line 1536
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 3

    .prologue
    .line 1419
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1420
    sget-boolean v0, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1421
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect: pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    :goto_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->disconnectCommand()V

    .line 1426
    return-void

    .line 1423
    :cond_0
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect: pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v8, 0x0

    .line 2125
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 2127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Permission Denial: can\'t dump WifiService from from pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2177
    :goto_0
    return-void

    .line 2132
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wi-Fi is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stay-awake conditions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "stay_on_while_plugged_in"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2136
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2138
    const-string v4, "Internal state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2139
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2140
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2141
    const-string v4, "Latest scan results:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2142
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v3

    .line 2143
    .local v3, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 2144
    const-string v4, "  BSSID              Frequency   RSSI  Flags             SSID"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2145
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 2146
    .local v1, r:Landroid/net/wifi/ScanResult;
    const-string v5, "  %17s  %9d  %5d  %-16s  %s%n"

    const/4 v4, 0x5

    new-array v6, v4, [Ljava/lang/Object;

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v4, v6, v8

    const/4 v4, 0x1

    iget v7, v1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x2

    iget v7, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v4, 0x3

    iget-object v7, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    aput-object v7, v6, v4

    const/4 v7, 0x4

    iget-object v4, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, ""

    :goto_2
    aput-object v4, v6, v7

    invoke-virtual {p2, v5, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_1

    :cond_1
    iget-object v4, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_2

    .line 2154
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Landroid/net/wifi/ScanResult;
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2155
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Locks acquired: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " full, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " full high perf, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scan"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Locks released: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " full, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " full high perf, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " scan"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2161
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2162
    const-string v4, "Locks held:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2163
    iget-object v4, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v4, p2}, Lcom/android/server/WifiService$LockList;->access$3400(Lcom/android/server/WifiService$LockList;Ljava/io/PrintWriter;)V

    .line 2165
    const-string v4, "Scan count since last plugged in"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2166
    iget-object v5, p0, Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;

    monitor-enter v5

    .line 2167
    :try_start_0
    iget-object v4, p0, Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2168
    .local v2, sc:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UID: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " Scan count: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 2170
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #sc:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2172
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2173
    const-string v4, "WifiWatchdogStateMachine dump"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2174
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v4, p2}, Landroid/net/wifi/WifiWatchdogStateMachine;->dump(Ljava/io/PrintWriter;)V

    .line 2175
    const-string v4, "WifiStateMachine dump"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2176
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 1515
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1516
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/WifiStateMachine;->syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z

    move-result v0

    .line 1521
    :goto_0
    return v0

    .line 1520
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    const/4 v0, 0x0

    goto :goto_0
.end method

.method enforceWakeSourcePermission(II)V
    .locals 3
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 2625
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 2630
    :goto_0
    return-void

    .line 2628
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1714
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1715
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1449
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1450
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncGetConfiguredNetworks(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    .line 1454
    :goto_0
    return-object v0

    .line 1453
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 1546
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1551
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCountryRev()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1823
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1824
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetCountryRev()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 1

    .prologue
    .line 1636
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1637
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getFrequencyBand()I
    .locals 1

    .prologue
    .line 1619
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1620
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getFrequencyBand()I

    move-result v0

    return v0
.end method

.method public getFullRoamScanPeriod()I
    .locals 1

    .prologue
    .line 1787
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1788
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetFullRoamScanPeriod()I

    move-result v0

    return v0
.end method

.method public getRoamBand()I
    .locals 1

    .prologue
    .line 1805
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1806
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetRoamBand()I

    move-result v0

    return v0
.end method

.method public getRoamDelta()I
    .locals 1

    .prologue
    .line 1751
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1752
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetRoamDelta()I

    move-result v0

    return v0
.end method

.method public getRoamScanPeriod()I
    .locals 1

    .prologue
    .line 1769
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1770
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetRoamScanPeriod()I

    move-result v0

    return v0
.end method

.method public getRoamTrigger()I
    .locals 1

    .prologue
    .line 1733
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1734
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetRoamTrigger()I

    move-result v0

    return v0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1560
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1561
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "netID"

    .prologue
    .line 1833
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1834
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApChameleonSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/android/server/WifiService;->mSsid:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 1378
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1379
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApEnabledState()I
    .locals 1

    .prologue
    .line 1369
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1370
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    return v0
.end method

.method public getWifiApStaList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1403
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getAccessPointStaList()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1406
    :goto_0
    return-object v1

    .line 1404
    :catch_0
    move-exception v0

    .line 1405
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1406
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiEnabledState()I
    .locals 1

    .prologue
    .line 1290
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1291
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    return v0
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1698
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1699
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1700
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/WifiService;->mAsyncServiceHandler:Lcom/android/server/WifiService$AsyncServiceHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getWifiStateMachineMessenger()Landroid/os/Messenger;
    .locals 1

    .prologue
    .line 1705
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1706
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1707
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    return-object v0
.end method

.method public initializeMulticastFiltering()V
    .locals 2

    .prologue
    .line 2835
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 2837
    iget-object v1, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 2839
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2840
    monitor-exit v1

    .line 2845
    :goto_0
    return-void

    .line 2842
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    .line 2844
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDualBandSupported()Z
    .locals 1

    .prologue
    .line 1627
    const/4 v0, 0x1

    return v0
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .prologue
    .line 2907
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2909
    iget-object v1, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 2910
    :try_start_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2911
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pingSupplicant()Z
    .locals 2

    .prologue
    .line 1113
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1114
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1115
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v0

    .line 1118
    :goto_0
    return v0

    .line 1117
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reassociate()V
    .locals 1

    .prologue
    .line 1440
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1441
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reassociateCommand()V

    .line 1442
    return-void
.end method

.method public reconnect()V
    .locals 1

    .prologue
    .line 1432
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1433
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    .line 1434
    return-void
.end method

.method public releaseMulticastLock()V
    .locals 6

    .prologue
    .line 2871
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 2873
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2874
    .local v3, uid:I
    iget-object v5, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v5

    .line 2875
    :try_start_0
    iget v4, p0, Lcom/android/server/WifiService;->mMulticastDisabled:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mMulticastDisabled:I

    .line 2876
    iget-object v4, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 2877
    .local v2, size:I
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 2878
    iget-object v4, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$Multicaster;

    .line 2879
    .local v1, m:Lcom/android/server/WifiService$Multicaster;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/WifiService$Multicaster;->getUid()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 2880
    invoke-direct {p0, v0, v3}, Lcom/android/server/WifiService;->removeMulticasterLocked(II)V

    .line 2877
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2883
    .end local v1           #m:Lcom/android/server/WifiService$Multicaster;
    :cond_1
    monitor-exit v5

    .line 2884
    return-void

    .line 2883
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "lock"

    .prologue
    .line 2742
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2743
    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v1

    .line 2744
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2745
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 1487
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1499
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 1500
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    .line 1503
    :goto_0
    return v0

    .line 1502
    :cond_0
    const-string v0, "WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveConfiguration()Z
    .locals 3

    .prologue
    .line 1571
    const/4 v0, 0x1

    .line 1572
    .local v0, result:Z
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1573
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_0

    .line 1574
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v1

    .line 1577
    :goto_0
    return v1

    .line 1576
    :cond_0
    const-string v1, "WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 3
    .parameter "countryCode"
    .parameter "persist"

    .prologue
    .line 1591
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiService trying to set country code to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with persist set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1594
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    .line 1595
    return-void
.end method

.method public setCountryRev(Ljava/lang/String;)Z
    .locals 1
    .parameter "countryRev"

    .prologue
    .line 1814
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1815
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetCountryRev(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setFrequencyBand(IZ)V
    .locals 3
    .parameter "band"
    .parameter "persist"

    .prologue
    .line 1607
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1608
    invoke-virtual {p0}, Lcom/android/server/WifiService;->isDualBandSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1612
    :goto_0
    return-void

    .line 1609
    :cond_0
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiService trying to set frequency band to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with persist set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand(IZ)V

    goto :goto_0
.end method

.method public setFullRoamScanPeriod(I)Z
    .locals 1
    .parameter "fullRoamScanPeriod"

    .prologue
    .line 1778
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1779
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetFullRoamScanPeriod(I)Z

    move-result v0

    return v0
.end method

.method public setRoamBand(I)Z
    .locals 1
    .parameter "roamBand"

    .prologue
    .line 1796
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1797
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetRoamBand(I)Z

    move-result v0

    return v0
.end method

.method public setRoamDelta(I)Z
    .locals 1
    .parameter "roamDelta"

    .prologue
    .line 1742
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1743
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetRoamDelta(I)Z

    move-result v0

    return v0
.end method

.method public setRoamScanPeriod(I)Z
    .locals 1
    .parameter "roamScanPeriod"

    .prologue
    .line 1760
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1761
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetRoamScanPeriod(I)Z

    move-result v0

    return v0
.end method

.method public setRoamTrigger(I)Z
    .locals 1
    .parameter "roamTrigger"

    .prologue
    .line 1724
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1725
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->syncSetRoamTrigger(I)Z

    move-result v0

    return v0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "wifiConfig"

    .prologue
    .line 1387
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1390
    iget-object v0, p0, Lcom/android/server/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1398
    :cond_0
    :goto_0
    return-void

    .line 1395
    :cond_1
    if-eqz p1, :cond_0

    .line 1397
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 5
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    .line 1302
    if-eqz p2, :cond_0

    .line 1311
    :cond_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1314
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/android/server/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1358
    :cond_1
    :goto_0
    return-void

    .line 1317
    :cond_2
    iget-object v2, p0, Lcom/android/server/WifiService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1318
    const/4 p1, 0x0

    .line 1323
    :cond_3
    if-eqz p2, :cond_4

    .line 1324
    iget-object v2, p0, Lcom/android/server/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    .line 1325
    iget-boolean v2, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    if-nez v2, :cond_4

    .line 1326
    const-string v2, "WifiService"

    const-string v3, "Wi-Fi AP is not allowed (Policy)"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1328
    .local v1, wifiToastIntent:Landroid/content/Intent;
    const-string v2, "info_type"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1329
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1344
    .end local v1           #wifiToastIntent:Landroid/content/Intent;
    :cond_4
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1346
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/WifiService;->mNeedBooster:Z

    .line 1347
    if-eqz p2, :cond_1

    .line 1348
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 1349
    .local v0, netType:I
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "netType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    const/16 v2, 0xd

    if-ne v0, v2, :cond_5

    .line 1351
    sget v2, Lcom/android/server/WifiService;->mBoosterFLAG:I

    and-int/lit8 v2, v2, -0x2

    sput v2, Lcom/android/server/WifiService;->mBoosterFLAG:I

    .line 1355
    :goto_1
    invoke-direct {p0}, Lcom/android/server/WifiService;->setThresholdValues()V

    goto :goto_0

    .line 1353
    :cond_5
    sget v2, Lcom/android/server/WifiService;->mBoosterFLAG:I

    or-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/WifiService;->mBoosterFLAG:I

    goto :goto_1
.end method

.method public declared-synchronized setWifiEnabled(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1172
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/sec/enterprise/WifiPolicyCache;->isWifiAllowed(Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1173
    const-string v4, "WifiService"

    const-string v5, "Wi-Fi state change is not allowed"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1248
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 1179
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1180
    sget-boolean v5, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v5, :cond_2

    .line 1181
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWifiEnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    :goto_1
    if-eqz p1, :cond_3

    .line 1189
    iget-object v5, p0, Lcom/android/server/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/WifiService;->allowWifi:Z

    .line 1190
    iget-boolean p1, p0, Lcom/android/server/WifiService;->allowWifi:Z

    .line 1191
    iget-boolean v5, p0, Lcom/android/server/WifiService;->allowWifi:Z

    if-nez v5, :cond_3

    .line 1192
    const-string v4, "WifiService"

    const-string v5, "Wi-Fi is not allowed (Policy)"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1194
    .local v2, wifiToastIntent:Landroid/content/Intent;
    const-string v4, "info_type"

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1195
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1172
    .end local v2           #wifiToastIntent:Landroid/content/Intent;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1184
    :cond_2
    :try_start_2
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setWifiEnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1211
    :cond_3
    sget-boolean v5, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v5, :cond_4

    .line 1212
    const-string v5, "WifiService"

    const-string v6, "Invoking mWifiStateMachine.setWifiEnabled\n"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :cond_4
    if-eqz p1, :cond_5

    .line 1216
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    .line 1219
    :cond_5
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->sendShowEnableWarningDialogBroadcast()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1222
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 1225
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/WifiService;->mNeedBooster:Z

    .line 1226
    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/android/server/WifiService;->setThresholdValues()V

    .line 1234
    :cond_6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1235
    .local v0, ident:J
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->handleWifiToggled(Z)V

    .line 1236
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1238
    if-eqz p1, :cond_8

    .line 1239
    iget-boolean v3, p0, Lcom/android/server/WifiService;->mIsReceiverRegistered:Z

    if-nez v3, :cond_7

    .line 1240
    invoke-direct {p0}, Lcom/android/server/WifiService;->registerForBroadcasts()V

    .line 1241
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/WifiService;->mIsReceiverRegistered:Z

    :cond_7
    :goto_2
    move v3, v4

    .line 1248
    goto/16 :goto_0

    .line 1243
    :cond_8
    iget-boolean v3, p0, Lcom/android/server/WifiService;->mIsReceiverRegistered:Z

    if-eqz v3, :cond_7

    .line 1244
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1245
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/WifiService;->mIsReceiverRegistered:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public showHS20WifiNotification(Lcom/android/server/WifiService$HS20_ConType;Landroid/net/wifi/WifiConfiguration;)V
    .locals 13
    .parameter "type"
    .parameter "config"

    .prologue
    const/4 v12, 0x1

    const v11, 0x10802b6

    const v10, 0x10802b5

    const/4 v9, 0x0

    .line 3339
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showHS20WifiNotification   is  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3340
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 3341
    .local v2, notificationManager:Landroid/app/NotificationManager;
    sget-object v5, Lcom/android/server/WifiService$HS20_ConType;->HS20_DISCONNECTED:Lcom/android/server/WifiService$HS20_ConType;

    if-eq p1, v5, :cond_6

    .line 3342
    iget-object v5, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    if-nez v5, :cond_0

    .line 3343
    new-instance v5, Landroid/app/Notification;

    invoke-direct {v5}, Landroid/app/Notification;-><init>()V

    iput-object v5, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    .line 3344
    iget-object v5, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    const-wide/16 v6, 0x0

    iput-wide v6, v5, Landroid/app/Notification;->when:J

    .line 3345
    iget-object v5, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->defaults:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v5, Landroid/app/Notification;->defaults:I

    .line 3346
    iget-object v5, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    const/4 v6, 0x2

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 3347
    iget-object v5, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.net.wifi.SEC_LAUNCH_OPERTOR_URL"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v9, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3351
    :cond_0
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 3352
    .local v3, r:Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 3353
    .local v4, title:Ljava/lang/String;
    const/4 v1, 0x0

    .line 3354
    .local v1, message:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 3356
    .local v0, mWifiInfo:Landroid/net/wifi/WifiInfo;
    sget-object v5, Lcom/android/server/WifiService$HS20_ConType;->HS20_CONNECTED_HSP:Lcom/android/server/WifiService$HS20_ConType;

    if-ne p1, v5, :cond_2

    .line 3357
    iget-object v5, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    iput v10, v5, Landroid/app/Notification;->icon:I

    .line 3361
    :goto_0
    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 3362
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x1040514

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3366
    :goto_1
    iget-object v5, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    iput-object v4, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3367
    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 3368
    const v5, 0x1040512

    new-array v6, v12, [Ljava/lang/Object;

    iget-object v7, p2, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 3372
    :goto_2
    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 3373
    iget-object v5, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6, v4, v1, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 3375
    :cond_1
    :try_start_0
    sget-object v5, Lcom/android/server/WifiService$HS20_ConType;->HS20_CONNECTED_HSP:Lcom/android/server/WifiService$HS20_ConType;

    if-ne p1, v5, :cond_5

    .line 3376
    const v5, 0x10802b5

    iget-object v6, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    invoke-virtual {v2, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3380
    :goto_3
    iput-boolean v12, p0, Lcom/android/server/WifiService;->mNotificationHS20Enabled:Z

    .line 3389
    .end local v0           #mWifiInfo:Landroid/net/wifi/WifiInfo;
    .end local v1           #message:Ljava/lang/String;
    .end local v3           #r:Landroid/content/res/Resources;
    .end local v4           #title:Ljava/lang/String;
    :goto_4
    return-void

    .line 3359
    .restart local v0       #mWifiInfo:Landroid/net/wifi/WifiInfo;
    .restart local v1       #message:Ljava/lang/String;
    .restart local v3       #r:Landroid/content/res/Resources;
    .restart local v4       #title:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    iput v11, v5, Landroid/app/Notification;->icon:I

    goto :goto_0

    .line 3364
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " @ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 3370
    :cond_4
    const v5, 0x1040513

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 3378
    :cond_5
    const v5, 0x10802b6

    :try_start_1
    iget-object v6, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    invoke-virtual {v2, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 3379
    :catch_0
    move-exception v5

    goto :goto_3

    .line 3382
    .end local v0           #mWifiInfo:Landroid/net/wifi/WifiInfo;
    .end local v1           #message:Ljava/lang/String;
    .end local v3           #r:Landroid/content/res/Resources;
    .end local v4           #title:Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    if-eqz v5, :cond_7

    if-eqz v2, :cond_7

    .line 3383
    invoke-virtual {v2, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3384
    invoke-virtual {v2, v11}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3385
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/WifiService;->mHs20Noti:Landroid/app/Notification;

    .line 3387
    :cond_7
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mNotificationHS20Enabled:Z

    goto :goto_4
.end method

.method public showOngoingWifiNotification(I)V
    .locals 13
    .parameter "notificationId"

    .prologue
    const v12, 0x104050f

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 3289
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showOngoingWifiNotification id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 3291
    .local v1, notificationManager:Landroid/app/NotificationManager;
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStatusNoti:Landroid/app/Notification;

    if-nez v6, :cond_0

    .line 3292
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Lcom/android/server/WifiService;->mWifiStatusNoti:Landroid/app/Notification;

    .line 3293
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStatusNoti:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 3294
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStatusNoti:Landroid/app/Notification;

    const/4 v7, -0x2

    iput v7, v6, Landroid/app/Notification;->priority:I

    .line 3295
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStatusNoti:Landroid/app/Notification;

    iget v7, v6, Landroid/app/Notification;->defaults:I

    and-int/lit8 v7, v7, -0x2

    iput v7, v6, Landroid/app/Notification;->defaults:I

    .line 3296
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStatusNoti:Landroid/app/Notification;

    iput v11, v6, Landroid/app/Notification;->flags:I

    .line 3297
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStatusNoti:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_ON"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v10, v8, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3301
    :cond_0
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3302
    .local v2, r:Landroid/content/res/Resources;
    const/4 v4, 0x0

    .line 3303
    .local v4, title:Ljava/lang/String;
    const/4 v0, 0x0

    .line 3304
    .local v0, message:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 3328
    :goto_0
    :pswitch_0
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStatusNoti:Landroid/app/Notification;

    iput p1, v6, Landroid/app/Notification;->icon:I

    .line 3329
    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 3330
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStatusNoti:Landroid/app/Notification;

    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStatusNoti:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7, v4, v0, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 3332
    :cond_1
    const v6, 0x1080713

    :try_start_0
    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiStatusNoti:Landroid/app/Notification;

    invoke-virtual {v1, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3335
    :goto_1
    return-void

    .line 3306
    :pswitch_1
    const v6, 0x104050a

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3307
    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3308
    goto :goto_0

    .line 3310
    :pswitch_2
    const v6, 0x104050c

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3311
    const v6, 0x104050d

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3312
    goto :goto_0

    .line 3314
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 3315
    .local v5, wifiInfo:Landroid/net/wifi/WifiInfo;
    const v6, 0x1040511

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3316
    .local v3, secure:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/WifiService;->isSecuredAp(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3317
    const v6, 0x1040510

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3318
    :cond_2
    const v6, 0x104050e

    new-array v7, v11, [Ljava/lang/Object;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x1

    aput-object v3, v7, v8

    invoke-virtual {v2, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3319
    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3320
    goto :goto_0

    .line 3323
    .end local v3           #secure:Ljava/lang/String;
    .end local v5           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :pswitch_4
    const v6, 0x1040508

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3324
    const v6, 0x1040509

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3333
    :catch_0
    move-exception v6

    goto :goto_1

    .line 3304
    :pswitch_data_0
    .packed-switch 0x1080711
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public shutdown()Z
    .locals 1

    .prologue
    .line 1253
    const/4 v0, 0x1

    return v0
.end method

.method public startScan(Z)V
    .locals 6
    .parameter "forceActive"

    .prologue
    .line 1126
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1127
    sget-boolean v2, Lcom/android/server/WifiService;->DBG:Z

    if-eqz v2, :cond_1

    .line 1128
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startScan: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1136
    .local v1, uid:I
    const/4 v0, 0x0

    .line 1137
    .local v0, count:I
    iget-object v3, p0, Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;

    monitor-enter v3

    .line 1138
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1139
    iget-object v2, p0, Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1141
    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mScanCount:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1143
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, p1}, Landroid/net/wifi/WifiStateMachine;->startScan(Z)V

    .line 1144
    return-void

    .line 1131
    .end local v0           #count:I
    .end local v1           #uid:I
    :cond_1
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startScan: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1142
    .restart local v0       #count:I
    .restart local v1       #uid:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public startWifi()V
    .locals 3

    .prologue
    .line 1645
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1651
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    .line 1652
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    .line 1653
    return-void
.end method

.method public stopWifi()V
    .locals 3

    .prologue
    .line 1660
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1665
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mEmergencyCallbackMode:Z

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(ZZ)V

    .line 1666
    return-void
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 9
    .parameter "lock"
    .parameter "ws"

    .prologue
    .line 2715
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 2716
    .local v4, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 2717
    .local v3, pid:I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 2718
    const/4 p2, 0x0

    .line 2720
    :cond_0
    if-eqz p2, :cond_1

    .line 2721
    invoke-virtual {p0, v4, v3}, Lcom/android/server/WifiService;->enforceWakeSourcePermission(II)V

    .line 2723
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2725
    .local v0, ident:J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2726
    :try_start_1
    iget-object v6, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I
    invoke-static {v6, p1}, Lcom/android/server/WifiService$LockList;->access$4200(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)I

    move-result v2

    .line 2727
    .local v2, index:I
    if-gez v2, :cond_2

    .line 2728
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "Wifi lock not active"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2734
    .end local v2           #index:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2735
    :catch_0
    move-exception v6

    .line 2737
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2739
    return-void

    .line 2730
    .restart local v2       #index:I
    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/WifiService$LockList;->access$3100(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WifiService$WifiLock;

    .line 2731
    .local v5, wl:Lcom/android/server/WifiService$WifiLock;
    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 2732
    if-eqz p2, :cond_3

    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_1
    iput-object v6, v5, Lcom/android/server/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    .line 2733
    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 2734
    monitor-exit v7

    goto :goto_0

    .line 2732
    :cond_3
    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, v4}, Landroid/os/WorkSource;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2737
    .end local v2           #index:I
    .end local v5           #wl:Lcom/android/server/WifiService$WifiLock;
    :catchall_1
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method
