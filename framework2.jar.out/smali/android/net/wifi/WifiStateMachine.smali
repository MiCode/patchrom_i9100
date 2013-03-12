.class public Landroid/net/wifi/WifiStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;,
        Landroid/net/wifi/WifiStateMachine$TetheredState;,
        Landroid/net/wifi/WifiStateMachine$TetheringState;,
        Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;,
        Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;,
        Landroid/net/wifi/WifiStateMachine$SoftApStartedState;,
        Landroid/net/wifi/WifiStateMachine$SoftApStartingState;,
        Landroid/net/wifi/WifiStateMachine$WpsRunningState;,
        Landroid/net/wifi/WifiStateMachine$DisconnectedState;,
        Landroid/net/wifi/WifiStateMachine$DisconnectingState;,
        Landroid/net/wifi/WifiStateMachine$ConnectedState;,
        Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;,
        Landroid/net/wifi/WifiStateMachine$ObtainingIpState;,
        Landroid/net/wifi/WifiStateMachine$L2ConnectedState;,
        Landroid/net/wifi/WifiStateMachine$ConnectModeState;,
        Landroid/net/wifi/WifiStateMachine$ScanModeState;,
        Landroid/net/wifi/WifiStateMachine$DriverStoppedState;,
        Landroid/net/wifi/WifiStateMachine$DriverStoppingState;,
        Landroid/net/wifi/WifiStateMachine$DriverStartedState;,
        Landroid/net/wifi/WifiStateMachine$DriverStartingState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;,
        Landroid/net/wifi/WifiStateMachine$DriverFailedState;,
        Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;,
        Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;,
        Landroid/net/wifi/WifiStateMachine$DriverLoadedState;,
        Landroid/net/wifi/WifiStateMachine$DriverLoadingState;,
        Landroid/net/wifi/WifiStateMachine$InitialState;,
        Landroid/net/wifi/WifiStateMachine$DefaultState;,
        Landroid/net/wifi/WifiStateMachine$WifiMobility;,
        Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    }
.end annotation


# static fields
.field private static final ACTION_DELAYED_DRIVER_STOP:Ljava/lang/String; = "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

.field private static final ACTION_START_SCAN:Ljava/lang/String; = "com.android.server.WifiManager.action.START_SCAN"

.field static final BASE:I = 0x20000

.field static final CMD_ADD_OR_UPDATE_NETWORK:I = 0x20034

.field static final CMD_BLACKLIST_NETWORK:I = 0x20038

.field static final CMD_BLUETOOTH_ADAPTER_STATE_CHANGE:I = 0x2001f

.field static final CMD_CLEAR_BLACKLIST:I = 0x20039

.field static final CMD_CLEAR_SUSPEND_OPTIMIZATIONS:I = 0x20057

.field static final CMD_DELAYED_STOP_DRIVER:I = 0x20012

.field public static final CMD_DISABLE_P2P:I = 0x20084

.field static final CMD_DISCONNECT:I = 0x2004a

.field static final CMD_DRIVER_START_TIMED_OUT:I = 0x20013

.field static final CMD_ENABLE_ALL_NETWORKS:I = 0x20037

.field static final CMD_ENABLE_BACKGROUND_SCAN:I = 0x2005b

.field static final CMD_ENABLE_NETWORK:I = 0x20036

.field public static final CMD_ENABLE_P2P:I = 0x20083

.field static final CMD_ENABLE_RSSI_POLL:I = 0x20052

.field static final CMD_FORGET_NETWORK:I = 0x25004

.field static final CMD_GET_CONFIGURED_NETWORKS:I = 0x2003b

.field static final CMD_INIT_SCAN_INTERVAL:I = 0x2007d

.field static final CMD_KEYSTORE_REQUIRED_EVENT:I = 0x20118

.field static final CMD_LOAD_DRIVER:I = 0x20001

.field static final CMD_LOAD_DRIVER_FAILURE:I = 0x20004

.field static final CMD_LOAD_DRIVER_SUCCESS:I = 0x20003

.field static final CMD_NO_NETWORKS_PERIODIC_SCAN:I = 0x20058

.field static final CMD_PING_SUPPLICANT:I = 0x20033

.field static final CMD_REASSOCIATE:I = 0x2004c

.field static final CMD_RECONNECT:I = 0x2004b

.field static final CMD_REMOVE_NETWORK:I = 0x20035

.field static final CMD_REQUEST_AP_CONFIG:I = 0x2001b

.field static final CMD_RESET_SUPPLICANT_STATE:I = 0x2006f

.field static final CMD_RESPONSE_AP_CONFIG:I = 0x2001c

.field static final CMD_RSSI_POLL:I = 0x20053

.field static final CMD_SAVE_CONFIG:I = 0x2003a

.field static final CMD_SEC_API:I = 0x2012d

.field static final CMD_SEC_STRING_API:I = 0x2012e

.field public static final CMD_SEND_DHCP_RELEASE:I = 0x200a1

.field static final CMD_SET_AP_CONFIG:I = 0x20019

.field static final CMD_SET_AP_CONFIG_COMPLETED:I = 0x2001a

.field static final CMD_SET_COUNTRY_CODE:I = 0x20050

.field static final CMD_SET_FREQUENCY_BAND:I = 0x2005a

.field static final CMD_SET_HIGH_PERF_MODE:I = 0x2004d

.field static final CMD_SET_SCAN_MODE:I = 0x20048

.field static final CMD_SET_SCAN_TYPE:I = 0x20049

.field static final CMD_SET_SUSPEND_OPTIMIZATIONS:I = 0x20056

.field static final CMD_START_AP:I = 0x20015

.field static final CMD_START_AP_FAILURE:I = 0x20017

.field static final CMD_START_AP_SUCCESS:I = 0x20016

.field static final CMD_START_DRIVER:I = 0x2000d

.field static final CMD_START_PACKET_FILTERING:I = 0x20054

.field static final CMD_START_SCAN:I = 0x20047

.field static final CMD_START_SUPPLICANT:I = 0x2000b

.field static final CMD_STATIC_IP_FAILURE:I = 0x20010

.field static final CMD_STATIC_IP_SUCCESS:I = 0x2000f

.field static final CMD_STOP_AP:I = 0x20018

.field static final CMD_STOP_DRIVER:I = 0x2000e

.field static final CMD_STOP_PACKET_FILTERING:I = 0x20055

.field static final CMD_STOP_SUPPLICANT:I = 0x2000c

.field static final CMD_STOP_SUPPLICANT_FAILED:I = 0x20011

.field static final CMD_TETHER_NOTIFICATION_TIMED_OUT:I = 0x2001e

.field static final CMD_TETHER_STATE_CHANGE:I = 0x2001d

.field static final CMD_UNLOAD_DRIVER:I = 0x20002

.field static final CMD_UNLOAD_DRIVER_FAILURE:I = 0x20006

.field static final CMD_UNLOAD_DRIVER_FOR_CONCURRENT:I = 0x20097

.field static final CMD_UNLOAD_DRIVER_SUCCESS:I = 0x20005

.field private static final CONNECT_MODE:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static DEFAULT_MAX_DHCP_RETRIES:I = 0x0

.field private static final DELAYED_STOP_COUNTER:Ljava/lang/String; = "DelayedStopCounter"

.field private static final DRIVER_START_TIME_OUT_MSECS:I = 0x2710

.field private static final DRIVER_STOP_REQUEST:I = 0x0

.field private static final EVENTLOG_SUPPLICANT_STATE_CHANGED:I = 0xc367

.field private static final EVENTLOG_WIFI_EVENT_HANDLED:I = 0xc366

.field private static final EVENTLOG_WIFI_STATE_CHANGED:I = 0xc365

.field private static final EVENT_IMS_REQUEST_TIMEOUT:I = 0x20

.field private static final FAILURE:I = -0x1

.field private static final IN_ECM_STATE:I = 0x1

.field private static final JB_STYLE:Z = true

.field private static final MAX_RSSI:I = 0x100

.field private static final MIN_INTERVAL_ENABLE_ALL_NETWORKS_MS:I = 0x927c0

.field private static final MIN_RSSI:I = -0xc8

.field static final MULTICAST_V4:I = 0x0

.field static final MULTICAST_V6:I = 0x1

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI"

.field private static final NOT_IN_ECM_STATE:I = 0x0

.field private static final P2P_DISABLE_USER_ACCEPT:I = 0x20007

.field private static final P2P_DISABLE_USER_REJECT:I = 0x20008

.field public static final P2P_ENABLE_PROCEED:I = 0x2008e

.field private static final POLL_RSSI_INTERVAL_MSECS:I = 0xbb8

.field private static final SCAN_ACTIVE:I = 0x1

.field private static final SCAN_ONLY_MODE:I = 0x2

.field private static final SCAN_PASSIVE:I = 0x2

.field private static final SCAN_REQUEST:I = 0x0

.field private static final SCAN_RESULT_CACHE_SIZE:I = 0x50

.field static final SECURITY_EAP:I = 0x3

.field static final SECURITY_NONE:I = 0x0

.field static final SECURITY_PSK:I = 0x2

.field static final SECURITY_WEP:I = 0x1

.field private static final SHOW_EAP_MESSAGE_EVENT:I = 0x2007c

.field private static final SOFTAP_IFACE:Ljava/lang/String; = "wl0.1"

.field private static final SUCCESS:I = 0x1

.field private static final SUPPLICANT_RESTART_INTERVAL_MSECS:I = 0x1388

.field private static final SUPPLICANT_RESTART_TRIES:I = 0x5

.field private static final TAG:Ljava/lang/String; = "WifiStateMachine"

.field private static final TETHER_NOTIFICATION_TIME_OUT_MSECS:I = 0x1388

.field private static final TIME_IN_MS_IMS_REQUEST_TIMEOUT:I = 0xfa0

#the value of this static final field might be set in the static constructor
.field public static final WIFI_CONNECT_THRESHOLD:I = 0x0

.field private static final WIFI_DISCONNECT_RSSI_COUNT:I = 0x5

#the value of this static final field might be set in the static constructor
.field public static final WIFI_DISCONNECT_THRESHOLD:I = 0x0

.field public static final WIFI_ENABLE_PENDING:I = 0x2008d

.field private static WIFI_MOBILITY_AP_TO_STORE:I

.field public static WispLogoffUrl:Ljava/lang/String;

.field public static bCwAirPlaneMode:Z

.field public static bCwPlaneModeDiff:Z

.field private static isWifiApEnabling:Z

.field private static sDnsPropNames:[Ljava/lang/String;

.field private static final scanResultPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final CW_WIFI_AIRPLANE_MODE:I

.field private final CW_WIFI_DEVICE_SHUTDOWN:I

.field private final CW_WIFI_DORMANCY:I

.field private final CW_WIFI_FORGET_AP:I

.field private final CW_WIFI_SWITCH_AP:I

.field private final CW_WIFI_TURNED_OFF:I

.field private final CW_WIFI_TURNED_OFF_WifiEnabler:I

.field private bEnableWifiSettingsDialog:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAverageRSSI:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackgroundScanSupported:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothConnectionActive:Z

.field public mCWState:I

.field private mCWToWiFiEventReceiver:Landroid/content/BroadcastReceiver;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnectModeState:Lcom/android/internal/util/State;

.field private mConnectedState:Lcom/android/internal/util/State;

.field private mContext:Landroid/content/Context;

.field private mCwHandler:Landroid/os/Handler;

.field private final mDefaultFrameworkScanIntervalMs:I

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDelayedStopCounter:I

.field private mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

.field private mDhcpRenewAfterRoamingMode:I

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private mDisconnectedState:Lcom/android/internal/util/State;

.field private mDisconnectingState:Lcom/android/internal/util/State;

.field private mDriverFailedState:Lcom/android/internal/util/State;

.field private mDriverLoadedState:Lcom/android/internal/util/State;

.field private mDriverLoadingState:Lcom/android/internal/util/State;

.field private mDriverStartToken:I

.field private mDriverStartedState:Lcom/android/internal/util/State;

.field private mDriverStartingState:Lcom/android/internal/util/State;

.field private final mDriverStopDelayMs:I

.field private mDriverStopIntent:Landroid/app/PendingIntent;

.field private mDriverStoppedState:Lcom/android/internal/util/State;

.field private mDriverStoppingState:Lcom/android/internal/util/State;

.field private mDriverUnloadedState:Lcom/android/internal/util/State;

.field private mDriverUnloadingState:Lcom/android/internal/util/State;

.field private mEapTlsInProgress:Z

.field private mEnableBackgroundScan:Z

.field private mEnableRssiPolling:Z

.field private mEnableShowApEvent:Z

.field private mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mHighPerfMode:Z

.field private mImsRssiPollingEnabled:Z

.field private mInDelayedStop:Z

.field private mInitialState:Lcom/android/internal/util/State;

.field private mInterfaceName:Ljava/lang/String;

.field private mIsRunning:Z

.field private mIsScanMode:Z

.field private mL2ConnectedState:Lcom/android/internal/util/State;

.field private final mLastApEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLastBssid:Ljava/lang/String;

.field private mLastEnableAllNetworksTime:J

.field private final mLastEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLastNetworkId:I

.field private final mLastRunningWifiUids:Landroid/os/WorkSource;

.field private mLastSignalLevel:I

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mObtainingIpState:Lcom/android/internal/util/State;

.field private final mP2pSupported:Z

.field private mPeriodicScanToken:I

.field private mPowerSaveEnabled:Z

.field private final mPrimaryDeviceType:Ljava/lang/String;

.field private mRVFMode:I

.field private mReconnectCount:I

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mReportedRunning:Z

.field private mRssiPollToken:I

.field private final mRunningWifiUids:Landroid/os/WorkSource;

.field private mScanIntent:Landroid/app/PendingIntent;

.field private mScanModeState:Lcom/android/internal/util/State;

.field private final mScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScanResultIsPending:Z

.field private mScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenFilter:Landroid/content/IntentFilter;

.field private mScreenOff:Z

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSetScanActive:Z

.field private mSignalLevelBroadcastCount:I

.field private mSkipScanAssoc:Z

.field private mSoftApStartedState:Lcom/android/internal/util/State;

.field private mSoftApStartingState:Lcom/android/internal/util/State;

.field private mSoftApStoppingState:Lcom/android/internal/util/State;

.field private mSupplicantRestartCount:I

.field private mSupplicantScanIntervalMs:J

.field private mSupplicantStartedState:Lcom/android/internal/util/State;

.field private mSupplicantStartingState:Lcom/android/internal/util/State;

.field private mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

.field private mSupplicantStopFailureToken:I

.field private mSupplicantStoppingState:Lcom/android/internal/util/State;

.field private mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTetherInterfaceName:Ljava/lang/String;

.field private mTetherToken:I

.field private mTetheredState:Lcom/android/internal/util/State;

.field private mTetheringState:Lcom/android/internal/util/State;

.field private mVerifyingLinkState:Lcom/android/internal/util/State;

.field private mWaitForP2pDisableState:Lcom/android/internal/util/State;

.field private mWaitForUserActionState:Lcom/android/internal/util/State;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;

.field private mWifiMonitor:Landroid/net/wifi/WifiMonitor;

.field private mWifiNative:Landroid/net/wifi/WifiNative;

.field private mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pState:I

.field private mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWpsInProgress:Z

.field private mWpsRunningState:Lcom/android/internal/util/State;

.field private mdisableOthers:Z

.field private mstoppingnetid:I

.field private mstoppingtype:I

.field t_dialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    .line 138
    const/4 v0, 0x0

    sput-object v0, Landroid/net/wifi/WifiStateMachine;->WispLogoffUrl:Ljava/lang/String;

    .line 140
    sput-boolean v1, Landroid/net/wifi/WifiStateMachine;->bCwAirPlaneMode:Z

    .line 141
    sput-boolean v1, Landroid/net/wifi/WifiStateMachine;->bCwPlaneModeDiff:Z

    .line 194
    const-string v0, "\t+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiStateMachine;->scanResultPattern:Ljava/util/regex/Pattern;

    .line 228
    sput-boolean v1, Landroid/net/wifi/WifiStateMachine;->isWifiApEnabling:Z

    .line 275
    const/4 v0, 0x5

    sput v0, Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_TO_STORE:I

    .line 520
    const/16 v0, 0x9

    sput v0, Landroid/net/wifi/WifiStateMachine;->DEFAULT_MAX_DHCP_RETRIES:I

    .line 626
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableThresholdDuringDisconnection"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/net/wifi/WifiStateMachine;->WIFI_DISCONNECT_THRESHOLD:I

    .line 627
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableThresholdDuringConnection"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Landroid/net/wifi/WifiStateMachine;->WIFI_CONNECT_THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "wlanInterface"

    .prologue
    .line 920
    const-string v7, "WifiStateMachine"

    invoke-direct {p0, v7}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 153
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->CW_WIFI_TURNED_OFF:I

    .line 154
    const/4 v7, 0x1

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->CW_WIFI_FORGET_AP:I

    .line 155
    const/4 v7, 0x2

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->CW_WIFI_DORMANCY:I

    .line 156
    const/4 v7, 0x3

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->CW_WIFI_SWITCH_AP:I

    .line 157
    const/4 v7, 0x4

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->CW_WIFI_TURNED_OFF_WifiEnabler:I

    .line 158
    const/4 v7, 0x5

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->CW_WIFI_AIRPLANE_MODE:I

    .line 159
    const/4 v7, 0x6

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->CW_WIFI_DEVICE_SHUTDOWN:I

    .line 161
    const/4 v7, -0x1

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mCWState:I

    .line 167
    const/4 v7, -0x1

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mstoppingnetid:I

    .line 168
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mdisableOthers:Z

    .line 169
    const/4 v7, -0x1

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I

    .line 172
    new-instance v7, Landroid/net/wifi/WifiStateMachine$1;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$1;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mCwHandler:Landroid/os/Handler;

    .line 205
    const/4 v7, -0x1

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 209
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    .line 210
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    .line 211
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    .line 212
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    .line 213
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z

    .line 214
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    .line 216
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mSetScanActive:Z

    .line 218
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mHighPerfMode:Z

    .line 220
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    .line 222
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mEnableShowApEvent:Z

    .line 225
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mScreenOff:Z

    .line 229
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mRVFMode:I

    .line 246
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    .line 248
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    .line 256
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    .line 264
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I

    .line 269
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I

    .line 295
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 298
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 301
    new-instance v7, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v7}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 305
    new-instance v7, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v7}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    .line 306
    new-instance v7, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v7}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    .line 479
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mEapTlsInProgress:Z

    .line 506
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z

    .line 509
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    .line 523
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mPowerSaveEnabled:Z

    .line 555
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z

    .line 561
    new-instance v7, Landroid/net/wifi/WifiStateMachine$DefaultState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$DefaultState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 563
    new-instance v7, Landroid/net/wifi/WifiStateMachine$InitialState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$InitialState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    .line 565
    new-instance v7, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadingState:Lcom/android/internal/util/State;

    .line 567
    new-instance v7, Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/State;

    .line 569
    new-instance v7, Landroid/net/wifi/WifiStateMachine$DriverFailedState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$DriverFailedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverFailedState:Lcom/android/internal/util/State;

    .line 571
    new-instance v7, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadingState:Lcom/android/internal/util/State;

    .line 573
    new-instance v7, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;

    .line 575
    new-instance v7, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    .line 577
    new-instance v7, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    .line 579
    new-instance v7, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    .line 581
    new-instance v7, Landroid/net/wifi/WifiStateMachine$DriverStartingState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$DriverStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    .line 583
    new-instance v7, Landroid/net/wifi/WifiStateMachine$DriverStartedState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$DriverStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    .line 585
    new-instance v7, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    .line 587
    new-instance v7, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    .line 589
    new-instance v7, Landroid/net/wifi/WifiStateMachine$ScanModeState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$ScanModeState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    .line 591
    new-instance v7, Landroid/net/wifi/WifiStateMachine$ConnectModeState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    .line 593
    new-instance v7, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$L2ConnectedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    .line 595
    new-instance v7, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$ObtainingIpState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    .line 597
    new-instance v7, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$VerifyingLinkState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;

    .line 599
    new-instance v7, Landroid/net/wifi/WifiStateMachine$ConnectedState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$ConnectedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    .line 601
    new-instance v7, Landroid/net/wifi/WifiStateMachine$DisconnectingState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$DisconnectingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    .line 603
    new-instance v7, Landroid/net/wifi/WifiStateMachine$DisconnectedState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    .line 605
    new-instance v7, Landroid/net/wifi/WifiStateMachine$WpsRunningState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$WpsRunningState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    .line 608
    new-instance v7, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    .line 610
    new-instance v7, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    .line 612
    new-instance v7, Landroid/net/wifi/WifiStateMachine$TetheringState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$TetheringState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    .line 614
    new-instance v7, Landroid/net/wifi/WifiStateMachine$TetheredState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$TetheredState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    .line 616
    new-instance v7, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStoppingState:Lcom/android/internal/util/State;

    .line 620
    new-instance v7, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    .line 621
    new-instance v7, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$WaitForUserActionState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForUserActionState:Lcom/android/internal/util/State;

    .line 625
    new-instance v7, Ljava/util/Vector;

    const/4 v8, 0x5

    invoke-direct {v7, v8}, Ljava/util/Vector;-><init>(I)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mAverageRSSI:Ljava/util/Vector;

    .line 855
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 865
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v8, 0xb

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 867
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 868
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastApEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 882
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    .line 887
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    .line 892
    new-instance v7, Landroid/os/WorkSource;

    invoke-direct {v7}, Landroid/os/WorkSource;-><init>()V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    .line 897
    new-instance v7, Landroid/os/WorkSource;

    invoke-direct {v7}, Landroid/os/WorkSource;-><init>()V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    .line 903
    const/4 v7, 0x1

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pState:I

    .line 904
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->t_dialog:Landroid/app/AlertDialog;

    .line 908
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->bEnableWifiSettingsDialog:Z

    .line 913
    const/4 v7, 0x0

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpRenewAfterRoamingMode:I

    .line 917
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mImsRssiPollingEnabled:Z

    .line 2552
    new-instance v7, Landroid/net/wifi/WifiStateMachine$10;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$10;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mCWToWiFiEventReceiver:Landroid/content/BroadcastReceiver;

    .line 922
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    .line 923
    iput-object p2, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 925
    new-instance v7, Landroid/net/NetworkInfo;

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v10, "WIFI"

    const-string v11, ""

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 926
    const-string v7, "batteryinfo"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 928
    const-string v7, "network_management"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 929
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    .line 931
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.wifi.direct"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z

    .line 934
    new-instance v7, Landroid/net/wifi/WifiNative;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/net/wifi/WifiNative;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    .line 935
    new-instance v7, Landroid/net/wifi/WifiConfigStore;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-direct {v7, p1, v8}, Landroid/net/wifi/WifiConfigStore;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiNative;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    .line 936
    new-instance v7, Landroid/net/wifi/WifiMonitor;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-direct {v7, p0, v8}, Landroid/net/wifi/WifiMonitor;-><init>(Lcom/android/internal/util/StateMachine;Landroid/net/wifi/WifiNative;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    .line 937
    new-instance v7, Landroid/net/DhcpInfoInternal;

    invoke-direct {v7}, Landroid/net/DhcpInfoInternal;-><init>()V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    .line 938
    new-instance v7, Landroid/net/wifi/WifiInfo;

    invoke-direct {v7}, Landroid/net/wifi/WifiInfo;-><init>()V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 939
    new-instance v7, Landroid/net/wifi/SupplicantStateTracker;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-direct {v7, p1, p0, v8, v9}, Landroid/net/wifi/SupplicantStateTracker;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfigStore;Landroid/os/Handler;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    .line 941
    new-instance v7, Landroid/net/LinkProperties;

    invoke-direct {v7}, Landroid/net/LinkProperties;-><init>()V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 943
    sget v7, Landroid/net/wifi/WifiStateMachine;->WIFI_CONNECT_THRESHOLD:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 944
    new-instance v7, Landroid/net/wifi/WifiStateMachine$WifiMobility;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$WifiMobility;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;

    .line 946
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/net/wifi/WifiApConfigStore;->makeWifiApConfigStore(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/wifi/WifiApConfigStore;

    move-result-object v6

    .line 948
    .local v6, wifiApConfigStore:Landroid/net/wifi/WifiApConfigStore;
    invoke-virtual {v6}, Landroid/net/wifi/WifiApConfigStore;->loadApConfiguration()V

    .line 949
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v6}, Landroid/net/wifi/WifiApConfigStore;->getMessenger()Landroid/os/Messenger;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    .line 951
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 952
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->clear()V

    .line 953
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 954
    const/4 v7, -0x1

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 955
    const/4 v7, -0x1

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 957
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    .line 958
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.android.server.WifiManager.action.START_SCAN"

    const/4 v8, 0x0

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 959
    .local v5, scanIntent:Landroid/content/Intent;
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v5, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;

    .line 961
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e000c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    .line 964
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e000d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStopDelayMs:I

    .line 970
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1110010

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    .line 973
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040037

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;

    .line 978
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 979
    .local v1, cwintentFilter:Landroid/content/IntentFilter;
    const-string v7, "android.cw.STATE_CHANGE"

    invoke-virtual {v1, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 980
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mCWToWiFiEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 989
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/sec/enterprise/WifiPolicy;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    .line 991
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 992
    .local v3, intentFilter:Landroid/content/IntentFilter;
    const-string v7, "edm.intent.action.enable"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 993
    const-string v7, "edm.intent.action.disable"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 995
    const-string v7, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 996
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/net/wifi/WifiStateMachine$2;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$2;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    invoke-virtual {v7, v8, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1016
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/net/wifi/WifiStateMachine$3;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$3;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1028
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/net/wifi/WifiStateMachine$4;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$4;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "com.android.server.WifiManager.action.START_SCAN"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1058
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/net/wifi/WifiStateMachine$7;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$7;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1072
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mScreenFilter:Landroid/content/IntentFilter;

    .line 1073
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mScreenFilter:Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1074
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mScreenFilter:Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1075
    new-instance v7, Landroid/net/wifi/WifiStateMachine$8;

    invoke-direct {v7, p0}, Landroid/net/wifi/WifiStateMachine$8;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 1110
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mScreenFilter:Landroid/content/IntentFilter;

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1112
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/net/wifi/WifiStateMachine$9;

    invoke-direct {v8, p0}, Landroid/net/wifi/WifiStateMachine$9;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "com.android.server.WifiManager.action.DELAYED_DRIVER_STOP"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1122
    new-instance v7, Landroid/util/LruCache;

    const/16 v8, 0x50

    invoke-direct {v7, v8}, Landroid/util/LruCache;-><init>(I)V

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    .line 1124
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1125
    .local v4, powerManager:Landroid/os/PowerManager;
    const/4 v7, 0x1

    const-string v8, "WifiStateMachine"

    invoke-virtual {v4, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1127
    const/4 v7, 0x1

    const-string v8, "WifiSuspend"

    invoke-virtual {v4, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1128
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1130
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1131
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1132
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadingState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1133
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1134
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverFailedState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1137
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadingState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1138
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1139
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1140
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1141
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1142
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1143
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1144
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1145
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1146
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1148
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1149
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mL2ConnectedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1150
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1151
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1152
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1153
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1154
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1155
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1156
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1157
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1158
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1159
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1160
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStoppingState:Lcom/android/internal/util/State;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7, v8}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1164
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1166
    const/16 v7, 0x64

    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->setProcessedMessagesSize(I)V

    .line 1167
    sget-boolean v7, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->setDbg(Z)V

    .line 1170
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->start()V

    .line 1174
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v8, "wifip2p"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 1175
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pManager;->getMessenger()Landroid/os/Messenger;

    move-result-object v10

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 1179
    :try_start_0
    const-string v7, "1"

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Landroid/net/wifi/WifiStateMachine;->DEFAULT_MAX_DHCP_RETRIES:I

    .line 1180
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DEFAULT_MAX_DHCP_RETRIES is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Landroid/net/wifi/WifiStateMachine;->DEFAULT_MAX_DHCP_RETRIES:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1184
    :goto_0
    return-void

    .line 1181
    :catch_0
    move-exception v2

    .line 1182
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v7, "WifiStateMachine"

    const-string v8, "DEFAULT_MAX_DHCP_RETRIES is 9"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private CheckDhcpRenew()Z
    .locals 3

    .prologue
    .line 2674
    const/4 v0, 0x0

    .line 2681
    .local v0, ret:Z
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckDhcpRenew return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2682
    :cond_0
    return v0
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCwHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 131
    sget v0, Landroid/net/wifi/WifiStateMachine;->WIFI_MOBILITY_AP_TO_STORE:I

    return v0
.end method

.method static synthetic access$1000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSuspendWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$10000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$10200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10300(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mSetScanActive:Z

    return v0
.end method

.method static synthetic access$10302(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mSetScanActive:Z

    return p1
.end method

.method static synthetic access$10400(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$10500(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I

    return v0
.end method

.method static synthetic access$10508(Landroid/net/wifi/WifiStateMachine;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I

    return v0
.end method

.method static synthetic access$10600(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$10602(Landroid/net/wifi/WifiStateMachine;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$10700(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStopDelayMs:I

    return v0
.end method

.method static synthetic access$10800(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$10900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I

    return v0
.end method

.method static synthetic access$11000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I

    return p1
.end method

.method static synthetic access$11100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11202(Landroid/net/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$11500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$11700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$11900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->cwStopWifiAfterCWDreg()V

    return-void
.end method

.method static synthetic access$12000(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z

    return v0
.end method

.method static synthetic access$12002(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z

    return p1
.end method

.method static synthetic access$12100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12302(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mEapTlsInProgress:Z

    return p1
.end method

.method static synthetic access$12400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$12500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWpsRunningState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$12700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12800(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchFrequency()I

    move-result v0

    return v0
.end method

.method static synthetic access$12900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$13000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mObtainingIpState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$13100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13300(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method static synthetic access$13308(Landroid/net/wifi/WifiStateMachine;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method static synthetic access$13400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object v0
.end method

.method static synthetic access$13402(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method static synthetic access$13500(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpInfoInternal;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V

    return-void
.end method

.method static synthetic access$13600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$13700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$13800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mVerifyingLinkState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$13900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mstoppingnetid:I

    return v0
.end method

.method static synthetic access$14000(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration()V

    return-void
.end method

.method static synthetic access$1402(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mstoppingnetid:I

    return p1
.end method

.method static synthetic access$14100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$14400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$14500(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->configureLinkProperties()V

    return-void
.end method

.method static synthetic access$14600(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    return-void
.end method

.method static synthetic access$14700(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->CheckDhcpRenew()Z

    move-result v0

    return v0
.end method

.method static synthetic access$14800(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V

    return-void
.end method

.method static synthetic access$14900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiStateMachine$WifiMobility;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15000(Landroid/net/wifi/WifiStateMachine;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$15100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$15400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$15500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15700(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->waitForDhcpRelease(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$15800(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    return-void
.end method

.method static synthetic access$15900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$16000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$16100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$16200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$16300(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$16400(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    return v0
.end method

.method static synthetic access$16500(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I

    return v0
.end method

.method static synthetic access$16504(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mPeriodicScanToken:I

    return v0
.end method

.method static synthetic access$16600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$16700(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$16800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$16900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$17000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$17100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$17200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$17300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$17400(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$17600(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mRVFMode:I

    return v0
.end method

.method static synthetic access$17700(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$17800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$17900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return v0
.end method

.method static synthetic access$18000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1802(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return p1
.end method

.method static synthetic access$18100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$18200(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->startTethering(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$18300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$18400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$18500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$18600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$18700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$18800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$18900(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$19000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$19200(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    return v0
.end method

.method static synthetic access$19204(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    return v0
.end method

.method static synthetic access$19300(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$19400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$19500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$19700(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->stopTethering()V

    return-void
.end method

.method static synthetic access$19800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$19900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$20000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return v0
.end method

.method static synthetic access$2102(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return p1
.end method

.method static synthetic access$2200(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    return v0
.end method

.method static synthetic access$2202(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    return p1
.end method

.method static synthetic access$2300(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mHighPerfMode:Z

    return v0
.end method

.method static synthetic access$2302(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mHighPerfMode:Z

    return p1
.end method

.method static synthetic access$2400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$2500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 131
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    return v0
.end method

.method static synthetic access$3000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V

    return-void
.end method

.method static synthetic access$3300(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V

    return-void
.end method

.method static synthetic access$3400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverFailedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic access$4100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4500(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$502(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pState:I

    return p1
.end method

.method static synthetic access$5100(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mPrimaryDeviceType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5200(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z

    return v0
.end method

.method static synthetic access$5300(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return v0
.end method

.method static synthetic access$5302(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return p1
.end method

.method static synthetic access$5304(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return v0
.end method

.method static synthetic access$5400(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    return-object v0
.end method

.method static synthetic access$5500(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5502(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5600(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    return v0
.end method

.method static synthetic access$5602(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    return p1
.end method

.method static synthetic access$5702(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    return p1
.end method

.method static synthetic access$5800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$5900(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    return v0
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6100(Landroid/net/wifi/WifiStateMachine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    return-void
.end method

.method static synthetic access$6200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$6300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$6600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$6700(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z

    return v0
.end method

.method static synthetic access$6702(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z

    return p1
.end method

.method static synthetic access$6800(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$6900(Landroid/net/wifi/WifiStateMachine;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 131
    iget-wide v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J

    return-wide v0
.end method

.method static synthetic access$6902(Landroid/net/wifi/WifiStateMachine;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-wide p1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J

    return-wide p1
.end method

.method static synthetic access$700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$7100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7200(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V

    return-void
.end method

.method static synthetic access$7300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setScanResults(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7500(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast()V

    return-void
.end method

.method static synthetic access$7600(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    return v0
.end method

.method static synthetic access$7602(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    return p1
.end method

.method static synthetic access$7700(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableShowApEvent:Z

    return v0
.end method

.method static synthetic access$7800(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendShowApDialogBroadcast()V

    return-void
.end method

.method static synthetic access$7900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendActionFrameVSWESReceivedBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8000(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$802(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$8100(Landroid/net/wifi/WifiStateMachine;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->edmRemoveNetwork(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8200(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    return v0
.end method

.method static synthetic access$8204(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    return v0
.end method

.method static synthetic access$8300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$8600(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I

    return v0
.end method

.method static synthetic access$8604(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartToken:I

    return v0
.end method

.method static synthetic access$8700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mBackgroundScanSupported:Z

    return v0
.end method

.method static synthetic access$9000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9202(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$9300(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z

    return v0
.end method

.method static synthetic access$9302(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z

    return p1
.end method

.method static synthetic access$9400(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setCountryCode()V

    return-void
.end method

.method static synthetic access$9500(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand()V

    return-void
.end method

.method static synthetic access$9600(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 131
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$9700(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$9800(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerSaveEnabled:Z

    return v0
.end method

.method static synthetic access$9900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 131
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 2

    .prologue
    .line 1803
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 1804
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    .line 1806
    :cond_0
    return-void
.end method

.method private checkAverageRSSI(Ljava/lang/Integer;)Z
    .locals 7
    .parameter "value"

    .prologue
    const/4 v6, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2111
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2112
    .local v1, temporar:Ljava/lang/Integer;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAverageRSSI:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v2, v6, :cond_0

    .line 2113
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAverageRSSI:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move v2, v3

    .line 2128
    :goto_0
    return v2

    .line 2116
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v6, :cond_1

    .line 2117
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAverageRSSI:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2116
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2119
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2120
    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_2

    .line 2121
    const-string v2, "AverRSSI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "temporar average = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v5, -0x53

    if-le v2, v5, :cond_3

    .line 2124
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAverageRSSI:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    move v2, v3

    .line 2125
    goto :goto_0

    .line 2127
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAverageRSSI:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    move v2, v4

    .line 2128
    goto :goto_0
.end method

.method private configureLinkProperties()V
    .locals 3

    .prologue
    .line 2209
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2210
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2217
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 2218
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    .line 2219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "netId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Link configured: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2222
    :cond_0
    return-void

    .line 2212
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-enter v1

    .line 2213
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2214
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2215
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfigStore;->getProxyProperties(I)Landroid/net/ProxyProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    goto :goto_0

    .line 2214
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    const/16 v2, 0x22

    .line 2338
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2339
    const-string p0, ""

    .line 2346
    .end local p0
    .local v0, lastPos:I
    :cond_0
    :goto_0
    return-object p0

    .line 2342
    .end local v0           #lastPos:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 2343
    .restart local v0       #lastPos:I
    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 2346
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private cwStopWifiAfterCWDreg()V
    .locals 3

    .prologue
    .line 2528
    const-string v0, "WifiStateMachine"

    const-string v1, "CW_SISO : WifiStateTracker : cwStopWifiAfterCWDreg start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    const v0, 0x2000c

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2530
    const v0, 0x20002

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2531
    const-string v0, "WifiStateMachine"

    const-string v1, "CW_SISO : WifiStateTracker : cwStopWifiAfterCWDreg done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    return-void
.end method

.method private edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .parameter "config"
    .parameter "pid"

    .prologue
    const/4 v1, 0x0

    .line 6094
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-eq p2, v2, :cond_0

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6116
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 6098
    .restart local p1
    :cond_1
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v4, "ssid"

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6103
    .local v0, netSSID:Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/WifiPolicyCache;->getAllowUserProfiles()Z

    move-result v2

    if-nez v2, :cond_3

    move-object p1, v1

    .line 6104
    goto :goto_0

    .line 6098
    .end local v0           #netSSID:Ljava/lang/String;
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 6105
    .restart local v0       #netSSID:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/sec/enterprise/WifiPolicyCache;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6106
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object p1, v1

    .line 6109
    goto :goto_0

    .line 6112
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v1, p1, v0}, Landroid/sec/enterprise/WifiPolicy;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private edmRemoveNetwork(II)Z
    .locals 5
    .parameter "netId"
    .parameter "pid"

    .prologue
    .line 6127
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const-string v4, "ssid"

    invoke-virtual {v3, p1, v4}, Landroid/net/wifi/WifiNative;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6128
    .local v0, auxSSID:Ljava/lang/String;
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/sec/enterprise/WifiPolicyCache;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v1

    .line 6129
    .local v1, isEnterprise:Z
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/WifiPolicyCache;->getAllowUserChanges()Z

    move-result v2

    .line 6132
    .local v2, isUserChangesAllowed:Z
    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-eq p2, v3, :cond_0

    .line 6133
    if-eqz v2, :cond_1

    .line 6135
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    invoke-virtual {v3, v0}, Landroid/sec/enterprise/WifiPolicy;->removeNetworkConfiguration(Ljava/lang/String;)Z

    .line 6140
    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 6137
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private fetchFrequency()I
    .locals 2

    .prologue
    .line 2106
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->callSECApiVoid(I)I

    move-result v0

    return v0
.end method

.method private fetchRssiAndLinkSpeedNative()V
    .locals 15

    .prologue
    const/4 v14, 0x3

    const/16 v13, -0xc8

    const/4 v12, -0x1

    .line 2136
    const/4 v6, -0x1

    .line 2137
    .local v6, newRssi:I
    const/4 v5, -0x1

    .line 2139
    .local v5, newLinkSpeed:I
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v10}, Landroid/net/wifi/WifiNative;->signalPoll()Ljava/lang/String;

    move-result-object v9

    .line 2141
    .local v9, signalPoll:Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 2142
    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2143
    .local v4, lines:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 2144
    .local v3, line:Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2145
    .local v8, prop:[Ljava/lang/String;
    array-length v10, v8

    const/4 v11, 0x2

    if-ge v10, v11, :cond_1

    .line 2143
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2147
    :cond_1
    const/4 v10, 0x0

    :try_start_0
    aget-object v10, v8, v10

    const-string v11, "RSSI"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2148
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    .line 2149
    :cond_2
    const/4 v10, 0x0

    aget-object v10, v8, v10

    const-string v11, "LINKSPEED"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2150
    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_1

    .line 2158
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #lines:[Ljava/lang/String;
    .end local v8           #prop:[Ljava/lang/String;
    :cond_3
    sget-boolean v10, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v10, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fetchRssiAndLinkSpeedNative - newRSSI:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", newLinkSpeed:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2160
    :cond_4
    if-eq v6, v12, :cond_c

    if-ge v13, v6, :cond_c

    const/16 v10, 0x100

    if-ge v6, v10, :cond_c

    .line 2164
    if-lez v6, :cond_5

    add-int/lit16 v6, v6, -0x100

    .line 2165
    :cond_5
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10, v6}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 2166
    sget v10, Landroid/net/wifi/WifiStateMachine;->WIFI_DISCONNECT_THRESHOLD:I

    if-eq v10, v12, :cond_6

    .line 2167
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/net/wifi/WifiStateMachine;->checkAverageRSSI(Ljava/lang/Integer;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2168
    sget-boolean v10, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v10, :cond_6

    .line 2169
    const-string v10, "AverRSSI"

    const-string v11, "average rssi is high enough, doing nothing"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    :cond_6
    :goto_2
    const/4 v10, 0x5

    invoke-static {v6, v10}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v7

    .line 2190
    .local v7, newSignalLevel:I
    iget v10, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    if-ne v7, v10, :cond_7

    iget v10, p0, Landroid/net/wifi/WifiStateMachine;->mSignalLevelBroadcastCount:I

    if-ge v10, v14, :cond_8

    .line 2191
    :cond_7
    invoke-direct {p0, v6}, Landroid/net/wifi/WifiStateMachine;->sendRssiChangeBroadcast(I)V

    .line 2192
    iget v10, p0, Landroid/net/wifi/WifiStateMachine;->mSignalLevelBroadcastCount:I

    if-ge v10, v14, :cond_8

    .line 2193
    iget v10, p0, Landroid/net/wifi/WifiStateMachine;->mSignalLevelBroadcastCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Landroid/net/wifi/WifiStateMachine;->mSignalLevelBroadcastCount:I

    .line 2194
    sget-boolean v10, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v10, :cond_8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Force RSSI Broadcast "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Landroid/net/wifi/WifiStateMachine;->mSignalLevelBroadcastCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/3"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2197
    :cond_8
    iput v7, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 2203
    .end local v7           #newSignalLevel:I
    :goto_3
    if-eq v5, v12, :cond_9

    .line 2204
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10, v5}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 2206
    :cond_9
    return-void

    .line 2172
    :cond_a
    sget-boolean v10, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v10, :cond_b

    .line 2173
    const-string v10, "AverRSSI"

    const-string v11, "average rssi is too low, disconnectiong network"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    :cond_b
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->disconnectCommand()V

    .line 2176
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v10}, Landroid/net/wifi/WifiNative;->reconnect()Z

    goto :goto_2

    .line 2199
    :cond_c
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v10, v13}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 2200
    const-string v10, "set default RSSI: -200"

    invoke-direct {p0, v10}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_3

    .line 2152
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #lines:[Ljava/lang/String;
    .restart local v8       #prop:[Ljava/lang/String;
    :catch_0
    move-exception v10

    goto/16 :goto_1
.end method

.method private getMaxDhcpRetries()I
    .locals 3

    .prologue
    .line 2225
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_max_dhcp_retry_count"

    sget v2, Landroid/net/wifi/WifiStateMachine;->DEFAULT_MAX_DHCP_RETRIES:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 2649
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0
.end method

.method private handleFailedIpConfiguration()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 2862
    const-string v1, "IP configuration failed"

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 2864
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 2865
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 2870
    sget v0, Landroid/net/wifi/WifiStateMachine;->DEFAULT_MAX_DHCP_RETRIES:I

    .line 2871
    .local v0, maxRetries:I
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max retries : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2873
    :cond_0
    if-lez v0, :cond_1

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    if-le v1, v0, :cond_1

    .line 2874
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times, Disabling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 2876
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 2878
    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    .line 2880
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine;->sendErrorBroadcast(I)V

    .line 2887
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->disconnect()Z

    .line 2888
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v1}, Landroid/net/wifi/WifiNative;->reconnect()Z

    .line 2889
    return-void
.end method

.method private handleNetworkDisconnect()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 2722
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Stopping DHCP and clearing IP"

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2727
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    if-eqz v1, :cond_1

    .line 2730
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->handlePostDhcpSetup()V

    .line 2732
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v2, 0x30002

    invoke-virtual {v1, v2}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 2733
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    invoke-virtual {v1}, Landroid/net/DhcpStateMachine;->quit()V

    .line 2734
    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    .line 2738
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 2739
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2745
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 2746
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 2747
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiInfo;->setSSID(Ljava/lang/String;)V

    .line 2748
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 2749
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/16 v2, -0xc8

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 2750
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 2751
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 2754
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 2758
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 2759
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 2762
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 2765
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->clear()V

    .line 2767
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2768
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfigStore;->clearIpConfiguration(I)V

    .line 2771
    :cond_2
    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 2772
    iput v5, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 2773
    return-void

    .line 2740
    :catch_0
    move-exception v0

    .line 2741
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to clear addresses or disable ipv6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V
    .locals 5
    .parameter "dhcpInfoInternal"

    .prologue
    const/4 v4, 0x0

    .line 2817
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-enter v3

    .line 2818
    :try_start_0
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    .line 2819
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2820
    const/4 v2, -0x1

    iput v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 2821
    iput v4, p0, Landroid/net/wifi/WifiStateMachine;->mSignalLevelBroadcastCount:I

    .line 2822
    iput v4, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    .line 2823
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v2, v3, p1}, Landroid/net/wifi/WifiConfigStore;->setIpConfiguration(ILandroid/net/DhcpInfoInternal;)V

    .line 2824
    iget-object v2, p1, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 2825
    .local v0, addr:Ljava/net/InetAddress;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 2826
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/DhcpInfoInternal;->hasMeteredHint()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 2827
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v3, :cond_2

    .line 2829
    invoke-virtual {p1}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    .line 2830
    .local v1, linkProperties:Landroid/net/LinkProperties;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiConfigStore;->getProxyProperties(I)Landroid/net/ProxyProperties;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 2831
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 2832
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2833
    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    .line 2834
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Link configuration changed for netId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2837
    :cond_0
    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 2838
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    .line 2859
    .end local v1           #linkProperties:Landroid/net/LinkProperties;
    :cond_1
    :goto_0
    return-void

    .line 2819
    .end local v0           #addr:Ljava/net/InetAddress;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2857
    .restart local v0       #addr:Ljava/net/InetAddress;
    :cond_2
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->configureLinkProperties()V

    goto :goto_0
.end method

.method private handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 4
    .parameter "message"

    .prologue
    .line 2687
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/StateChangeResult;

    .line 2688
    .local v1, stateChangeResult:Landroid/net/wifi/StateChangeResult;
    iget-object v0, v1, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 2693
    .local v0, state:Landroid/net/wifi/SupplicantState;
    const v2, 0xc367

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v3

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2694
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 2696
    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2697
    iget-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z

    if-eqz v2, :cond_1

    .line 2698
    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SupplicantState.isConnecting WpsInprogress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2699
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mWpsInProgress:Z

    .line 2701
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget v3, v1, Landroid/net/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 2706
    :goto_0
    sget-object v2, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    if-ne v0, v2, :cond_2

    .line 2708
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, v1, Landroid/net/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 2710
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, v1, Landroid/net/wifi/StateChangeResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setSSID(Ljava/lang/String;)V

    .line 2712
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(Landroid/os/Message;)V

    .line 2714
    return-object v0

    .line 2703
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    goto :goto_0
.end method

.method private isWifiTethered(Ljava/util/ArrayList;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1885
    .local p1, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 1887
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 1888
    .local v6, wifiRegexs:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1889
    .local v3, intf:Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 1890
    .local v5, regex:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1891
    const/4 v7, 0x1

    .line 1896
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #intf:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #regex:Ljava/lang/String;
    :goto_1
    return v7

    .line 1889
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #intf:Ljava/lang/String;
    .restart local v4       #len$:I
    .restart local v5       #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1896
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #intf:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #regex:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 6037
    const-string v0, "WifiStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6038
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 6045
    const-string v0, "WifiStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6046
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 6041
    const-string v0, "WifiStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6042
    return-void
.end method

.method private obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;
    .locals 2
    .parameter "srcMsg"

    .prologue
    .line 6031
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 6032
    .local v0, msg:Landroid/os/Message;
    iget v1, p1, Landroid/os/Message;->arg2:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 6033
    return-object v0
.end method

.method private parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;
    .locals 13
    .parameter "line"

    .prologue
    .line 1980
    const/4 v0, 0x0

    .line 1981
    .local v0, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz p1, :cond_1

    .line 1986
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    monitor-enter v11

    .line 1987
    :try_start_0
    sget-object v10, Landroid/net/wifi/WifiStateMachine;->scanResultPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v8

    .line 1988
    .local v8, result:[Ljava/lang/String;
    const/4 v10, 0x3

    array-length v12, v8

    if-gt v10, v12, :cond_6

    array-length v10, v8

    const/4 v12, 0x5

    if-gt v10, v12, :cond_6

    .line 1989
    const/4 v10, 0x0

    aget-object v2, v8, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1994
    .local v2, bssid:Ljava/lang/String;
    const/4 v10, 0x1

    :try_start_1
    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1995
    .local v5, frequency:I
    const/4 v10, 0x2

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .line 1999
    .local v4, level:I
    if-lez v4, :cond_0

    add-int/lit16 v4, v4, -0x100

    .line 2015
    :cond_0
    :goto_0
    :try_start_2
    array-length v10, v8

    const/4 v12, 0x4

    if-ne v10, v12, :cond_3

    .line 2016
    const/4 v10, 0x3

    aget-object v10, v8, v10

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v12, 0x5b

    if-ne v10, v12, :cond_2

    .line 2017
    const/4 v10, 0x3

    aget-object v3, v8, v10

    .line 2018
    .local v3, flags:Ljava/lang/String;
    const-string v1, ""

    .line 2034
    .local v1, ssid:Ljava/lang/String;
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2035
    .local v7, key:Ljava/lang/String;
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v10, v7}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2036
    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .local v9, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v9, :cond_5

    .line 2037
    :try_start_3
    iput v4, v9, Landroid/net/wifi/ScanResult;->level:I

    .line 2038
    iput-object v1, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 2039
    iput-object v3, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 2040
    iput v5, v9, Landroid/net/wifi/ScanResult;->frequency:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v9

    .line 2058
    .end local v1           #ssid:Ljava/lang/String;
    .end local v2           #bssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    .end local v4           #level:I
    .end local v5           #frequency:I
    .end local v7           #key:Ljava/lang/String;
    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    :goto_2
    :try_start_4
    monitor-exit v11

    .line 2061
    .end local v8           #result:[Ljava/lang/String;
    :cond_1
    return-object v0

    .line 2000
    .restart local v2       #bssid:Ljava/lang/String;
    .restart local v8       #result:[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 2001
    .local v6, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    .line 2002
    .restart local v5       #frequency:I
    const/4 v4, 0x0

    .restart local v4       #level:I
    goto :goto_0

    .line 2020
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v3, ""

    .line 2021
    .restart local v3       #flags:Ljava/lang/String;
    const/4 v10, 0x3

    aget-object v1, v8, v10

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_1

    .line 2023
    .end local v1           #ssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    :cond_3
    array-length v10, v8

    const/4 v12, 0x5

    if-ne v10, v12, :cond_4

    .line 2024
    const/4 v10, 0x3

    aget-object v3, v8, v10

    .line 2025
    .restart local v3       #flags:Ljava/lang/String;
    const/4 v10, 0x4

    aget-object v1, v8, v10

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_1

    .line 2029
    .end local v1           #ssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    :cond_4
    const-string v3, ""

    .line 2030
    .restart local v3       #flags:Ljava/lang/String;
    const-string v1, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_1

    .line 2043
    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v7       #key:Ljava/lang/String;
    .restart local v9       #scanResult:Landroid/net/wifi/ScanResult;
    :cond_5
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_8

    .line 2044
    new-instance v0, Landroid/net/wifi/ScanResult;

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2047
    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    :try_start_6
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v10, v7, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2058
    .end local v1           #ssid:Ljava/lang/String;
    .end local v2           #bssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    .end local v4           #level:I
    .end local v5           #frequency:I
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #result:[Ljava/lang/String;
    :catchall_0
    move-exception v10

    :goto_3
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v10

    .line 2051
    .restart local v8       #result:[Ljava/lang/String;
    :cond_6
    :try_start_7
    sget-boolean v10, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v10, :cond_7

    .line 2052
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Misformatted scan result text with "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v12, v8

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " fields: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 2055
    :cond_7
    const-string v10, "There are misformatted scan results"

    invoke-direct {p0, v10}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 2058
    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v1       #ssid:Ljava/lang/String;
    .restart local v2       #bssid:Ljava/lang/String;
    .restart local v3       #flags:Ljava/lang/String;
    .restart local v4       #level:I
    .restart local v5       #frequency:I
    .restart local v7       #key:Ljava/lang/String;
    .restart local v9       #scanResult:Landroid/net/wifi/ScanResult;
    :catchall_1
    move-exception v10

    move-object v0, v9

    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    goto :goto_3

    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v9       #scanResult:Landroid/net/wifi/ScanResult;
    :cond_8
    move-object v0, v9

    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    goto :goto_2
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .locals 2
    .parameter "msg"
    .parameter "what"

    .prologue
    .line 6002
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 6006
    :goto_0
    return-void

    .line 6003
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 6004
    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 6005
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .locals 2
    .parameter "msg"
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 6009
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 6014
    :goto_0
    return-void

    .line 6010
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 6011
    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 6012
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 6013
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 2
    .parameter "msg"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 6017
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v1, :cond_0

    .line 6022
    :goto_0
    return-void

    .line 6018
    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessageWithArg2(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 6019
    .local v0, dstMsg:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->what:I

    .line 6020
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6021
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    goto :goto_0
.end method

.method private sendActionFrameVSWESReceivedBroadcast(Ljava/lang/String;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 2326
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    .line 2327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action Frame VS WES Received data [\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2330
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.ACTION_FRAME_VS_WES_RECEIVED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2331
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ActionFrameVSWESData"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2332
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2333
    return-void
.end method

.method private sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 2305
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 2312
    :goto_0
    return-void

    .line 2308
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2309
    :catch_0
    move-exception v0

    .line 2310
    .local v0, e:Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send broadcast before boot - action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendBroadcastToCW(II)V
    .locals 4
    .parameter "nOperationType"
    .parameter "nStoppingType"

    .prologue
    .line 2463
    new-instance v1, Landroid/content/Intent;

    const-string v2, "WiFiToCWEvent"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2465
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "WifiStateMachine"

    const-string v3, "CW_SISO: sendNetworkStateChangeBroadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    const-string v2, "CWOperationType"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2468
    const-string v2, "stopCWDueToWiFI"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2470
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 2471
    .local v0, bssid:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2472
    const-string v2, "bssid"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2473
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2474
    return-void
.end method

.method private sendErrorBroadcast(I)V
    .locals 4
    .parameter "errorCode"

    .prologue
    .line 2263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendErrorBroadcast code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 2264
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2265
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2266
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2267
    const-string v1, "wifiInfo"

    new-instance v2, Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {v2, v3}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2268
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    .line 2269
    return-void
.end method

.method private sendLinkConfigurationChangedBroadcast()V
    .locals 4

    .prologue
    .line 2272
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2273
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2274
    const-string v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2275
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    .line 2276
    return-void
.end method

.method private sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    .locals 4
    .parameter "bssid"

    .prologue
    .line 2249
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2250
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2251
    const-string v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v2, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2252
    const-string v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2253
    if-eqz p1, :cond_0

    .line 2254
    const-string v1, "bssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2255
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_2

    .line 2257
    :cond_1
    const-string v1, "wifiInfo"

    new-instance v2, Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {v2, v3}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2259
    :cond_2
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendStickyBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    .line 2260
    return-void
.end method

.method private sendRssiChangeBroadcast(I)V
    .locals 2
    .parameter "newRssi"

    .prologue
    .line 2242
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2243
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2244
    const-string v1, "newRssi"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2245
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    .line 2246
    return-void
.end method

.method private sendScanResultsAvailableBroadcast()V
    .locals 2

    .prologue
    .line 2231
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2232
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2233
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    .line 2234
    return-void
.end method

.method private sendShowApDialogBroadcast()V
    .locals 2

    .prologue
    .line 2287
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SHOW_AP_LIST_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2288
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2289
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    .line 2290
    return-void
.end method

.method private sendStickyBroadcastFromWifiStateMachine(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 2315
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 2322
    :goto_0
    return-void

    .line 2318
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2319
    :catch_0
    move-exception v0

    .line 2320
    .local v0, e:Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send sticky broadcast before boot - action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendSupplicantConnectionChangedBroadcast(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    .line 2279
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2280
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2281
    const-string v1, "connected"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2282
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    .line 2283
    return-void
.end method

.method private setCountryCode()V
    .locals 3

    .prologue
    .line 1903
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_country_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1905
    .local v0, countryCode:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1906
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    .line 1910
    :cond_0
    return-void
.end method

.method private setFrequencyBand()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1917
    invoke-virtual {p0, v0, v0}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand(IZ)V

    .line 1923
    return-void
.end method

.method private setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 2638
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    .line 2639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDetailed state, old ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and new state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 2643
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 2644
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 2646
    :cond_1
    return-void
.end method

.method private setScanResults(Ljava/lang/String;)V
    .locals 9
    .parameter "scanResults"

    .prologue
    .line 2070
    if-nez p1, :cond_0

    .line 2103
    :goto_0
    return-void

    .line 2074
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2076
    .local v4, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v2, 0x0

    .line 2078
    .local v2, lineCount:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 2081
    .local v6, scanResultsLen:I
    const/4 v1, 0x0

    .local v1, lineBeg:I
    const/4 v3, 0x0

    .local v3, lineEnd:I
    :goto_1
    if-gt v3, v6, :cond_5

    .line 2082
    if-eq v3, v6, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_2

    .line 2083
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 2085
    const/4 v7, 0x1

    if-ne v2, v7, :cond_3

    .line 2086
    add-int/lit8 v1, v3, 0x1

    .line 2081
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2089
    :cond_3
    if-le v3, v1, :cond_4

    .line 2090
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2091
    .local v0, line:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v5

    .line 2092
    .local v5, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v5, :cond_4

    .line 2093
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2098
    .end local v0           #line:Ljava/lang/String;
    .end local v5           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_4
    add-int/lit8 v1, v3, 0x1

    goto :goto_2

    .line 2102
    :cond_5
    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    goto :goto_0
.end method

.method private setWifiApState(I)V
    .locals 5
    .parameter "wifiApState"

    .prologue
    .line 1950
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 1953
    .local v2, previousWifiApState:I
    const/16 v3, 0xd

    if-ne p1, v3, :cond_2

    .line 1954
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1963
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1965
    sget-boolean v3, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifiApState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApStateByName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 1967
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1968
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x800

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1969
    const-string v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1970
    const-string v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1971
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->sendStickyBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    .line 1972
    return-void

    .line 1955
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const/16 v3, 0xb

    if-ne p1, v3, :cond_0

    .line 1956
    :try_start_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1958
    :catch_0
    move-exception v0

    .line 1959
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "Failed to note battery stats in wifi"

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setWifiState(I)V
    .locals 5
    .parameter "wifiState"

    .prologue
    .line 1926
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 1929
    .local v2, previousWifiState:I
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    .line 1930
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1938
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1940
    sget-boolean v3, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWifiState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 1942
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1943
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x800

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1944
    const-string v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1945
    const-string v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1946
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->sendStickyBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    .line 1947
    return-void

    .line 1931
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 1932
    :try_start_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1934
    :catch_0
    move-exception v0

    .line 1935
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "Failed to note battery stats in wifi"

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 2899
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/net/wifi/WifiStateMachine$11;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiStateMachine$11;-><init>(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2918
    return-void
.end method

.method private startTethering(Ljava/util/ArrayList;)Z
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 1810
    const/4 v8, 0x0

    .line 1812
    .local v8, wifiAvailable:Z
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 1814
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v11}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v9

    .line 1816
    .local v9, wifiRegexs:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1817
    .local v5, intf:Ljava/lang/String;
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v7, v0, v3

    .line 1818
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1820
    const/4 v4, 0x0

    .line 1822
    .local v4, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v11, v5}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v4

    .line 1823
    if-eqz v4, :cond_1

    .line 1824
    const-string v11, "WifiStateMachine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "startTethering, mRVFMode = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Landroid/net/wifi/WifiStateMachine;->mRVFMode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    new-instance v11, Landroid/net/LinkAddress;

    const-string v12, "192.168.43.1"

    invoke-static {v12}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v4, v11}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 1838
    invoke-virtual {v4}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 1840
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v11, v5, v4}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1847
    :cond_1
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v11, v5}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_3

    .line 1848
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error tethering on "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1857
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #ifcg:Landroid/net/InterfaceConfiguration;
    .end local v5           #intf:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    :cond_2
    :goto_1
    return v10

    .line 1842
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #ifcg:Landroid/net/InterfaceConfiguration;
    .restart local v5       #intf:Ljava/lang/String;
    .restart local v6       #len$:I
    .restart local v7       #regex:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1843
    .local v1, e:Ljava/lang/Exception;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error configuring interface "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 1851
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    iput-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    .line 1852
    const/4 v10, 0x1

    goto :goto_1

    .line 1817
    .end local v4           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0
.end method

.method private stopTethering()V
    .locals 5

    .prologue
    .line 1862
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 1866
    const/4 v1, 0x0

    .line 1868
    .local v1, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    .line 1869
    if-eqz v1, :cond_0

    .line 1870
    new-instance v2, Landroid/net/LinkAddress;

    const-string v3, "0.0.0.0"

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v1, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 1872
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1878
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1879
    const-string v2, "Untether initiate failed!"

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1881
    :cond_1
    return-void

    .line 1874
    :catch_0
    move-exception v0

    .line 1875
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error resetting interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private waitForDhcpRelease(I)I
    .locals 8
    .parameter "maxSecWait"

    .prologue
    const/16 v6, 0x14

    .line 6146
    const/16 v4, 0xc8

    .line 6147
    .local v4, sleepTime:I
    if-le p1, v6, :cond_0

    move p1, v6

    .end local p1
    :cond_0
    mul-int/lit16 v6, p1, 0x3e8

    div-int v2, v6, v4

    .line 6148
    .local v2, repeats:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "init.svc.dhcpcd_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6151
    .local v1, key:Ljava/lang/String;
    const/4 v6, 0x1

    if-ge v2, v6, :cond_3

    .line 6152
    const/4 v2, 0x1

    move v3, v2

    .line 6154
    .end local v2           #repeats:I
    .local v3, repeats:I
    :goto_0
    add-int/lit8 v2, v3, -0x1

    .end local v3           #repeats:I
    .restart local v2       #repeats:I
    if-lez v3, :cond_2

    .line 6155
    sget-boolean v6, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v6, :cond_1

    .line 6156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "waitForDhcpRelease repeats: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 6159
    :cond_1
    int-to-long v6, v4

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6165
    :goto_1
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6167
    .local v5, value:Ljava/lang/String;
    const-string v6, "stopped"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 6168
    const/4 v6, 0x0

    .line 6171
    .end local v5           #value:Ljava/lang/String;
    :goto_2
    return v6

    .line 6161
    :catch_0
    move-exception v0

    .line 6162
    .local v0, ex:Ljava/lang/InterruptedException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "waitForDhcpRelease sleep exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 6171
    .end local v0           #ex:Ljava/lang/InterruptedException;
    :cond_2
    const/4 v6, -0x1

    goto :goto_2

    :cond_3
    move v3, v2

    .end local v2           #repeats:I
    .restart local v3       #repeats:I
    goto :goto_0
.end method


# virtual methods
.method public CWdisableWifi(Z)Z
    .locals 3
    .parameter "flag"

    .prologue
    const/4 v0, 0x0

    .line 2352
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->cwEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2353
    const-string v1, "WifiStateMachine"

    const-string v2, "handleMessage: CW_SISO :MESSAGE_DISABLE_WIFI: is CW !!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    if-eqz p1, :cond_2

    .line 2355
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->CWgetWifiScreenEnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2356
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->cwStop(I)V

    .line 2363
    :goto_0
    const-string v0, "WifiStateMachine"

    const-string v1, "handleMessage: CW_SISO :MESSAGE_DISABLE_WIFI: is Done !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    :goto_1
    const/4 v0, 0x1

    :cond_0
    return v0

    .line 2362
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->cwStop(I)V

    goto :goto_0

    .line 2364
    :cond_2
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->bCwAirPlaneMode:Z

    if-eqz v0, :cond_3

    .line 2365
    const-string v0, "WifiStateMachine"

    const-string v1, "handleMessage: CW_SISO :Airplanemode is on set persist wifi enabled to true!!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2366
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->cwStop(I)V

    goto :goto_1

    .line 2369
    :cond_3
    const-string v0, "WifiStateMachine"

    const-string v1, "handleMessage: CW_SISO : Else Case NOT Handled!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public CWgetWifiScreenEnable()Z
    .locals 3

    .prologue
    .line 2380
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CWgetWifiScreenEnable return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->bEnableWifiSettingsDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->bEnableWifiSettingsDialog:Z

    return v0
.end method

.method public CWsetWifiScreenEnable(Z)Z
    .locals 3
    .parameter "bEnable"

    .prologue
    .line 2386
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CWsetWifiScreenEnable set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "old value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->bEnableWifiSettingsDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->bEnableWifiSettingsDialog:Z

    .line 2388
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->bEnableWifiSettingsDialog:Z

    return v0
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1
    .parameter "bssid"

    .prologue
    .line 1553
    const v0, 0x20038

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1554
    return-void
.end method

.method public declared-synchronized callSECApi(Landroid/os/Message;)I
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x3

    const/4 v1, -0x1

    .line 2985
    monitor-enter p0

    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v4, :sswitch_data_0

    .line 3082
    :cond_0
    :goto_0
    :sswitch_0
    monitor-exit p0

    return v1

    .line 2987
    :sswitch_1
    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 2990
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2991
    .local v0, args:Landroid/os/Bundle;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 v2, 0x1

    const-string v3, "enable"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v1

    goto :goto_0

    .line 2996
    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_2
    const v1, 0x2007d

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    move v1, v2

    .line 2997
    goto :goto_0

    .line 3000
    :sswitch_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 3003
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3004
    .restart local v0       #args:Landroid/os/Bundle;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v2, 0x9

    const-string v3, "enable"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v1

    goto :goto_0

    .line 3009
    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_4
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 3012
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3013
    .restart local v0       #args:Landroid/os/Bundle;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v2, 0xe

    const-string v3, "enable"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v1

    goto :goto_0

    .line 3018
    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3019
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v1, "enable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableShowApEvent:Z

    move v1, v2

    .line 3020
    goto :goto_0

    .line 3024
    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_6
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 3027
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3028
    .restart local v0       #args:Landroid/os/Bundle;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v2, 0xa

    const-string v3, "ampdu"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiNative;->callSECApiInt(II)I

    move-result v1

    goto/16 :goto_0

    .line 3041
    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3042
    .restart local v0       #args:Landroid/os/Bundle;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v2, 0xb

    const-string v3, "stop"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v1

    goto/16 :goto_0

    .line 3047
    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_8
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 3050
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3051
    .restart local v0       #args:Landroid/os/Bundle;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v2, 0xc

    const-string v3, "enable"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v1

    goto/16 :goto_0

    .line 3056
    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3057
    .restart local v0       #args:Landroid/os/Bundle;
    const-string v1, "enable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    .line 3058
    const-string v1, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiManager.SEC_COMMAND_ID_SET_WIFI_ENABLED_WITH_P2P mSkipScanAssoc : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v4, 0xd

    iget-boolean v5, p0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    if-nez v5, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v1, v4, v2}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v1

    goto/16 :goto_0

    .line 3063
    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_a
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 3066
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3067
    .restart local v0       #args:Landroid/os/Bundle;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v2, 0x10

    const-string v3, "enable"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I

    move-result v1

    goto/16 :goto_0

    .line 3072
    .end local v0           #args:Landroid/os/Bundle;
    :sswitch_b
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 3075
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 3076
    .restart local v0       #args:Landroid/os/Bundle;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/16 v2, 0x11

    const-string v3, "enable"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiNative;->callSECApiBoolean(IZ)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto/16 :goto_0

    .line 2985
    .end local v0           #args:Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xf -> :sswitch_3
        0x10 -> :sswitch_5
        0x11 -> :sswitch_6
        0x12 -> :sswitch_7
        0x13 -> :sswitch_8
        0x18 -> :sswitch_0
        0x1a -> :sswitch_9
        0x20 -> :sswitch_4
        0x22 -> :sswitch_a
        0x23 -> :sswitch_b
    .end sparse-switch
.end method

.method public checkAndAllowOtherSsid(Ljava/lang/String;)Z
    .locals 5
    .parameter "ssid"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2393
    const/4 v0, 0x0

    .line 2394
    .local v0, nAllowAllSSID:Z
    const/4 v1, 0x1

    .line 2396
    .local v1, nOnlySISOTestSSID:Z
    if-eqz v0, :cond_1

    .line 2408
    :cond_0
    :goto_0
    return v2

    .line 2399
    :cond_1
    if-eqz v1, :cond_2

    .line 2400
    const-string v4, "SKTRCS"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 2404
    goto :goto_0

    .line 2407
    :cond_2
    const-string v2, "WifiStateMachine"

    const-string v4, " IMS SERVICE : checkAllowOtherSsid: doesnot allow any SSID other than CTC"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 2408
    goto :goto_0
.end method

.method public checkScanNet()V
    .locals 1

    .prologue
    .line 1457
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;

    if-eqz v0, :cond_0

    .line 1458
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->checkScanResults()V

    .line 1462
    :goto_0
    return-void

    .line 1460
    :cond_0
    const-string v0, "checkScanNet: mWifiMobility is null"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearBlacklist()V
    .locals 1

    .prologue
    .line 1561
    const v0, 0x20039

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1562
    return-void
.end method

.method public cwDataOff()V
    .locals 3

    .prologue
    .line 2509
    const-string v1, "WifiStateMachine"

    const-string v2, "CW_SISO : WifiStateTracker : cwStartCommand true stoppingtype entered "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mCWState:I

    if-lez v1, :cond_0

    .line 2515
    new-instance v0, Landroid/content/Intent;

    const-string v1, "QuickMenu_DataOnOff"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2517
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "dataState"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2518
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2523
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    const-string v1, "WifiStateMachine"

    const-string v2, "CW_SISO : WifiStateTracker : cwStartCommand true stoppingtype exited "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    return-void

    .line 2520
    :cond_0
    const-string v1, "WifiStateMachine"

    const-string v2, "CW_SISO : cwDataOff CW State is NONE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cwDataOn()V
    .locals 3

    .prologue
    .line 2493
    const-string v1, "WifiStateMachine"

    const-string v2, "CW_SISO : WifiStateTracker : cwStartCommand true stoppingtype entered "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mCWState:I

    if-lez v1, :cond_0

    .line 2498
    new-instance v0, Landroid/content/Intent;

    const-string v1, "QuickMenu_DataOnOff"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2500
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "dataState"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2501
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2505
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    const-string v1, "WifiStateMachine"

    const-string v2, "CW_SISO : WifiStateTracker : cwStartCommand true stoppingtype exited "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    return-void

    .line 2503
    :cond_0
    const-string v1, "WifiStateMachine"

    const-string v2, "CW_SISO : cwDataOn CW State is NONE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cwEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2413
    const/4 v0, 0x0

    .line 2414
    .local v0, WiFi_ssidWithQuotes:Ljava/lang/String;
    const-string v4, "WifiStateMachine"

    const-string v5, "CW_SISO : WifiStateMachine: cwEnabled enter"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    iget v4, p0, Landroid/net/wifi/WifiStateMachine;->mCWState:I

    if-lez v4, :cond_5

    .line 2416
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 2417
    .local v2, wifiMgr:Landroid/net/wifi/WifiManager;
    if-nez v2, :cond_0

    const-string v4, "WifiStateMachine"

    const-string v5, "CW_SISO : wifiMgr is NULL!!! "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    .end local v2           #wifiMgr:Landroid/net/wifi/WifiManager;
    :goto_0
    return v3

    .line 2420
    .restart local v2       #wifiMgr:Landroid/net/wifi/WifiManager;
    :cond_0
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2421
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2422
    .local v1, activeSSID:Ljava/lang/String;
    const-string v4, "WifiStateMachine"

    const-string v5, "CW_SISO : activeSSID is retreived"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    if-eqz v1, :cond_3

    .line 2424
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2427
    invoke-static {v0}, Landroid/net/wifi/WifiManager;->checkCTCSsid(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->checkAndAllowOtherSsid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2428
    :cond_1
    const-string v3, "WifiStateMachine"

    const-string v4, "CW_SISO : WifiStateMachine: cwEnabled true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    const/4 v3, 0x1

    goto :goto_0

    .line 2431
    :cond_2
    const-string v4, "WifiStateMachine"

    const-string v5, "CW_SISO : WifiStateMachine : cwEnabled Not SKTRCS"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2435
    :cond_3
    const-string v4, "WifiStateMachine"

    const-string v5, "CW_SISO : WifiStateMachine : cwEnabled .activeSSID() == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2439
    .end local v1           #activeSSID:Ljava/lang/String;
    :cond_4
    const-string v4, "WifiStateMachine"

    const-string v5, "CW_SISO : WifiStateMachine : cwEnabled .getSSID() == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2443
    .end local v2           #wifiMgr:Landroid/net/wifi/WifiManager;
    :cond_5
    const-string v4, "WifiStateMachine"

    const-string v5, "CW_SISO : WifiStateMachine : cwEnabled false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cwGetForgetnwkID()I
    .locals 3

    .prologue
    .line 2541
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CW_SISO : WifiStateTracker : cwGetForgetnwkID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mstoppingnetid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mstoppingnetid:I

    return v0
.end method

.method public cwSetDisableOthers(Z)V
    .locals 3
    .parameter "ID"

    .prologue
    .line 2546
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CW_SISO : WifiStateTracker : cwSetDisableOthers "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mdisableOthers:Z

    .line 2548
    return-void
.end method

.method public cwSetForgetnwkID(I)V
    .locals 3
    .parameter "netID"

    .prologue
    .line 2536
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CW_SISO : WifiStateTracker : cwSetForgetnwkID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mstoppingnetid:I

    .line 2538
    return-void
.end method

.method public cwStartCommand(I)V
    .locals 0
    .parameter "nRetryMethod"

    .prologue
    .line 2489
    return-void
.end method

.method public cwStop(I)V
    .locals 4
    .parameter "stoppingtype"

    .prologue
    .line 2449
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mCWState:I

    if-lez v1, :cond_0

    .line 2450
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CW_SISO : WifiStateTracker : cwStop true stoppingtype "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I

    .line 2453
    const/4 v1, 0x1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mstoppingtype:I

    invoke-direct {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastToCW(II)V

    .line 2455
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mCwHandler:Landroid/os/Handler;

    const/16 v2, 0x20

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2456
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mCwHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2459
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public disconnectCommand()V
    .locals 1

    .prologue
    .line 1438
    const v0, 0x2004a

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1439
    return-void
.end method

.method public enableAllNetworks()V
    .locals 1

    .prologue
    .line 1585
    const v0, 0x20037

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1586
    return-void
.end method

.method public enableBackgroundScanCommand(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 1581
    const v2, 0x2005b

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1582
    return-void

    :cond_0
    move v0, v1

    .line 1581
    goto :goto_0
.end method

.method public enableRssiPolling(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 1577
    const v2, 0x20052

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1578
    return-void

    :cond_0
    move v0, v1

    .line 1577
    goto :goto_0
.end method

.method public forgetNetwork(I)V
    .locals 2
    .parameter "netId"

    .prologue
    .line 1573
    const v0, 0x25004

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1574
    return-void
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1678
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfigStore;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpRenewAfterRoamingMode()I
    .locals 3

    .prologue
    .line 2664
    const-string v0, "WifiStateMachine"

    const-string v1, "getDhcpRenewAfterRoamingMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDhcpRenewAfterRoamingMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpRenewAfterRoamingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpRenewAfterRoamingMode:I

    return v0
.end method

.method public getFrequencyBand()I
    .locals 1

    .prologue
    .line 1671
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1191
    new-instance v0, Landroid/os/Messenger;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getRvfMode()I
    .locals 1

    .prologue
    .line 1322
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mRVFMode:I

    return v0
.end method

.method public getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "netID"

    .prologue
    .line 1686
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiConfigStore;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public handleEapTlsFinish(Z)V
    .locals 4
    .parameter "isTerminating"

    .prologue
    const/4 v3, 0x1

    .line 6054
    iget-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mEapTlsInProgress:Z

    if-ne v2, v3, :cond_1

    .line 6055
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    .line 6056
    .local v1, suppState:Landroid/net/wifi/SupplicantState;
    sget-object v2, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    if-eq v1, v2, :cond_0

    sget-object v2, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eq v2, v3, :cond_0

    if-eqz p1, :cond_1

    .line 6060
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mEapTlsInProgress:Z

    .line 6061
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6062
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "edm.intent.action.lock"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6063
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6066
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #suppState:Landroid/net/wifi/SupplicantState;
    :cond_1
    return-void
.end method

.method handleEapTlsKeystoreRequired()V
    .locals 1

    .prologue
    .line 6077
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->disconnectCommand()V

    .line 6081
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEapTlsInProgress:Z

    .line 6082
    return-void
.end method

.method handlePostDhcpSetup()V
    .locals 2

    .prologue
    .line 2808
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerSaveEnabled:Z

    .line 2809
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerSaveEnabled:Z

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setPowerSave(Z)V

    .line 2812
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceMode(I)Z

    .line 2814
    return-void
.end method

.method handlePreDhcpSetup()V
    .locals 2

    .prologue
    .line 2776
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    if-nez v0, :cond_0

    .line 2794
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceMode(I)Z

    .line 2799
    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerSaveEnabled:Z

    if-eqz v0, :cond_1

    .line 2800
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerSaveEnabled:Z

    .line 2801
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerSaveEnabled:Z

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiNative;->setPowerSave(Z)V

    .line 2803
    :cond_1
    return-void
.end method

.method notifyEapTlsKeystoreRequired()V
    .locals 1

    .prologue
    .line 6071
    const v0, 0x20118

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 6072
    return-void
.end method

.method notifyShowEapMessageDialog(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 2922
    const v0, 0x2007c

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2923
    return-void
.end method

.method public reassociateCommand()V
    .locals 1

    .prologue
    .line 1467
    const v0, 0x2004c

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1468
    return-void
.end method

.method public reconnectCommand()V
    .locals 1

    .prologue
    .line 1445
    const v0, 0x2004b

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1446
    return-void
.end method

.method protected recordProcessedMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v0, 0x0

    .line 1770
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    if-ne v1, v2, :cond_1

    .line 1771
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1785
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_1

    .line 1794
    const/4 v0, 0x1

    :sswitch_0
    return v0

    .line 1771
    nop

    :sswitch_data_0
    .sparse-switch
        0x20001 -> :sswitch_0
        0x2000b -> :sswitch_0
        0x2000d -> :sswitch_0
        0x20037 -> :sswitch_0
        0x20048 -> :sswitch_0
        0x2004d -> :sswitch_0
        0x20056 -> :sswitch_0
        0x20057 -> :sswitch_0
        0x2005b -> :sswitch_0
    .end sparse-switch

    .line 1785
    :sswitch_data_1
    .sparse-switch
        0x20012 -> :sswitch_0
        0x20047 -> :sswitch_0
        0x20052 -> :sswitch_0
        0x20053 -> :sswitch_0
        0x21017 -> :sswitch_0
        0x24005 -> :sswitch_0
    .end sparse-switch
.end method

.method public sendBluetoothAdapterStateChange(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1693
    const v0, 0x2001f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1694
    return-void
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 2238
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    .line 2239
    return-void
.end method

.method public sendShowEnableWarningDialogBroadcast()Z
    .locals 3

    .prologue
    .line 2293
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 2295
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_ENABLE_WARNING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2296
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2297
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendBroadcastFromWifiStateMachine(Landroid/content/Intent;)V

    .line 2298
    const/4 v1, 0x1

    .line 2300
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 4
    .parameter "countryCode"
    .parameter "persist"

    .prologue
    .line 1634
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_WLAN_SEC_5GhZ_COUNTRY_CODE"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TN"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CountryISO"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "IL"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CountryISO"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1637
    :cond_0
    const-string v1, "ro.csc.countryiso_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1638
    .local v0, temp:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1639
    move-object p1, v0

    .line 1641
    :cond_1
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[setCountryCode] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    if-nez p1, :cond_2

    .line 1651
    .end local v0           #temp:Ljava/lang/String;
    :goto_0
    return-void

    .line 1645
    :cond_2
    if-eqz p2, :cond_3

    .line 1646
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_country_code"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1650
    :cond_3
    const v1, 0x20050

    invoke-virtual {p0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setDhcpRenewAfterRoamingMode(I)I
    .locals 3
    .parameter "mode"

    .prologue
    .line 2654
    const-string v0, "WifiStateMachine"

    const-string v1, "setDhcpRenewAfterRoamingMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpRenewAfterRoamingMode:I

    .line 2658
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDhcpRenewAfterRoamingMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpRenewAfterRoamingMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpRenewAfterRoamingMode:I

    return v0
.end method

.method public setDriverStart(ZZ)V
    .locals 3
    .parameter "enable"
    .parameter "ecm"

    .prologue
    const/4 v1, 0x0

    .line 1398
    if-eqz p1, :cond_0

    .line 1399
    const v0, 0x2000d

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1403
    :goto_0
    return-void

    .line 1401
    :cond_0
    const v2, 0x2000e

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public setFrequencyBand(IZ)V
    .locals 2
    .parameter "band"
    .parameter "persist"

    .prologue
    .line 1659
    if-eqz p2, :cond_0

    .line 1660
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_frequency_band"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1664
    :cond_0
    const v0, 0x2005a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1665
    return-void
.end method

.method public setHighPerfModeEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 1625
    const v2, 0x2004d

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1626
    return-void

    :cond_0
    move v0, v1

    .line 1625
    goto :goto_0
.end method

.method public setRvfMode(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1318
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mRVFMode:I

    .line 1319
    return-void
.end method

.method public setScanOnlyMode(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const v2, 0x20048

    const/4 v1, 0x0

    .line 1409
    if-eqz p1, :cond_0

    .line 1410
    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1414
    :goto_0
    return-void

    .line 1412
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setScanType(Z)V
    .locals 3
    .parameter "active"

    .prologue
    const v2, 0x20049

    const/4 v1, 0x0

    .line 1420
    if-eqz p1, :cond_0

    .line 1421
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1425
    :goto_0
    return-void

    .line 1423
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 1307
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x20019

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 1308
    return-void
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 4
    .parameter "wifiConfig"
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1278
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastApEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1279
    if-eqz p2, :cond_0

    .line 1282
    invoke-static {v3}, Landroid/net/wifi/WifiNative;->setFwType(I)Z

    .line 1283
    const-string v0, "setWifiApEnabled : WifiNative.setFwType(1)"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 1285
    sput-boolean v3, Landroid/net/wifi/WifiStateMachine;->isWifiApEnabling:Z

    .line 1287
    const v0, 0x20001

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1288
    const v0, 0x20015

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1304
    :goto_0
    return-void

    .line 1290
    :cond_0
    sput-boolean v2, Landroid/net/wifi/WifiStateMachine;->isWifiApEnabling:Z

    .line 1300
    const v0, 0x20018

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1302
    const v0, 0x20002

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setWifiEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 1219
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1220
    if-eqz p1, :cond_0

    .line 1223
    invoke-static {v2}, Landroid/net/wifi/WifiNative;->setFwType(I)Z

    .line 1224
    const-string v0, "setWifiEnabled : WifiNative.setFwType(0)"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 1229
    const v0, 0x20001

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1230
    const v0, 0x2000b

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1272
    :goto_0
    return-void

    .line 1232
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 1233
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStopIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1235
    :cond_1
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mSkipScanAssoc:Z

    .line 1236
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x20084

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 1237
    :cond_2
    const v0, 0x2000c

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1239
    const v0, 0x20002

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1269
    iput v2, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpRenewAfterRoamingMode:I

    goto :goto_0
.end method

.method public startFilteringMulticastV4Packets()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1592
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1593
    const v0, 0x20054

    invoke-virtual {p0, v0, v2, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1594
    return-void
.end method

.method public startFilteringMulticastV6Packets()V
    .locals 3

    .prologue
    .line 1608
    const v0, 0x20054

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1609
    return-void
.end method

.method public startScan(Z)V
    .locals 3
    .parameter "forceActive"

    .prologue
    .line 1207
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_1

    .line 1208
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SKIP startScan during CONNECTING state"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1211
    :cond_1
    const v1, 0x20047

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_1
.end method

.method public stopFilteringMulticastV4Packets()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1600
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1601
    const v0, 0x20055

    invoke-virtual {p0, v0, v1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1602
    return-void
.end method

.method public stopFilteringMulticastV6Packets()V
    .locals 3

    .prologue
    .line 1615
    const v0, 0x20055

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1616
    return-void
.end method

.method public syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I
    .locals 5
    .parameter "channel"
    .parameter "config"

    .prologue
    .line 1479
    const v2, 0x20034

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1485
    .local v1, resultMsg:Landroid/os/Message;
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 1486
    .local v0, result:I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1487
    return v0
.end method

.method public syncCallSECApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)I
    .locals 3
    .parameter "channel"
    .parameter "msg"

    .prologue
    .line 3092
    const-string v2, "syncCallSECApi"

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3094
    const v2, 0x2012d

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3095
    .local v1, resultMsg:Landroid/os/Message;
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 3096
    .local v0, result:I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 3097
    return v0
.end method

.method public syncCallSECStringApi(Lcom/android/internal/util/AsyncChannel;Landroid/os/Message;)Ljava/lang/String;
    .locals 3
    .parameter "channel"
    .parameter "msg"

    .prologue
    .line 3106
    const-string v2, "syncCallSECStringApi"

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3108
    const v2, 0x2012e

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 3109
    .local v1, resultMsg:Landroid/os/Message;
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 3110
    .local v0, result:Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 3111
    return-object v0
.end method

.method public syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 4
    .parameter "channel"
    .parameter "netId"

    .prologue
    .line 1539
    const v2, 0x25011

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v1

    .line 1540
    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->what:I

    const v3, 0x25012

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 1541
    .local v0, result:Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncDisableNetwork:  netId  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  result:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 1542
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1543
    return v0

    .line 1540
    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z
    .locals 6
    .parameter "channel"
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1525
    const v5, 0x20036

    if-eqz p3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p1, v5, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(III)Landroid/os/Message;

    move-result-object v1

    .line 1527
    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    move v0, v3

    .line 1528
    .local v0, result:Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1529
    return v0

    .end local v0           #result:Z
    .end local v1           #resultMsg:Landroid/os/Message;
    :cond_0
    move v2, v4

    .line 1525
    goto :goto_0

    .restart local v1       #resultMsg:Landroid/os/Message;
    :cond_1
    move v0, v4

    .line 1527
    goto :goto_1
.end method

.method public syncGetConfiguredNetworks(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;
    .locals 3
    .parameter "channel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/AsyncChannel;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1491
    const v2, 0x2003b

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 1492
    .local v1, resultMsg:Landroid/os/Message;
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 1493
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1494
    return-object v0
.end method

.method public syncGetCountryRev()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2977
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getCountryRev()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public syncGetDhcpInfo()Landroid/net/DhcpInfo;
    .locals 2

    .prologue
    .line 1389
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-enter v1

    .line 1390
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->makeDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1391
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public syncGetFullRoamScanPeriod()I
    .locals 1

    .prologue
    .line 2961
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getFullRoamScanPeriod()I

    move-result v0

    return v0
.end method

.method public syncGetRoamBand()I
    .locals 1

    .prologue
    .line 2969
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getBand()I

    move-result v0

    return v0
.end method

.method public syncGetRoamDelta()I
    .locals 1

    .prologue
    .line 2945
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getRoamDelta()I

    move-result v0

    return v0
.end method

.method public syncGetRoamScanPeriod()I
    .locals 1

    .prologue
    .line 2953
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getRoamScanPeriod()I

    move-result v0

    return v0
.end method

.method public syncGetRoamTrigger()I
    .locals 1

    .prologue
    .line 2937
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0}, Landroid/net/wifi/WifiNative;->getRoamTrigger()I

    move-result v0

    return v0
.end method

.method public syncGetScanResultsList()Ljava/util/List;
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
    .line 1431
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    return-object v0
.end method

.method public syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .prologue
    .line 1311
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x2001b

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 1312
    .local v0, resultMsg:Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1313
    .local v1, ret:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 1314
    return-object v1
.end method

.method public syncGetWifiApState()I
    .locals 1

    .prologue
    .line 1356
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiApStateByName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1363
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1375
    const-string v0, "[invalid state]"

    :goto_0
    return-object v0

    .line 1365
    :pswitch_0
    const-string v0, "disabling"

    goto :goto_0

    .line 1367
    :pswitch_1
    const-string v0, "disabled"

    goto :goto_0

    .line 1369
    :pswitch_2
    const-string v0, "enabling"

    goto :goto_0

    .line 1371
    :pswitch_3
    const-string v0, "enabled"

    goto :goto_0

    .line 1373
    :pswitch_4
    const-string v0, "failed"

    goto :goto_0

    .line 1363
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public syncGetWifiState()I
    .locals 1

    .prologue
    .line 1329
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiStateByName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1348
    const-string v0, "[invalid state]"

    :goto_0
    return-object v0

    .line 1338
    :pswitch_0
    const-string v0, "disabling"

    goto :goto_0

    .line 1340
    :pswitch_1
    const-string v0, "disabled"

    goto :goto_0

    .line 1342
    :pswitch_2
    const-string v0, "enabling"

    goto :goto_0

    .line 1344
    :pswitch_3
    const-string v0, "enabled"

    goto :goto_0

    .line 1346
    :pswitch_4
    const-string v0, "unknown state"

    goto :goto_0

    .line 1336
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z
    .locals 4
    .parameter "channel"

    .prologue
    .line 1197
    const v2, 0x20033

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 1198
    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 1199
    .local v0, result:Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1200
    return v0

    .line 1198
    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 4
    .parameter "channel"
    .parameter "networkId"

    .prologue
    .line 1506
    const v2, 0x20035

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {p1, v2, p2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(III)Landroid/os/Message;

    move-result-object v1

    .line 1512
    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 1513
    .local v0, result:Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1514
    return v0

    .line 1512
    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 1385
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z
    .locals 4
    .parameter "channel"

    .prologue
    .line 1704
    const v2, 0x2003a

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 1705
    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 1706
    .local v0, result:Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 1707
    return v0

    .line 1705
    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncSetCountryRev(Ljava/lang/String;)Z
    .locals 1
    .parameter "countryRev"

    .prologue
    .line 2973
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setCountryRev(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public syncSetFullRoamScanPeriod(I)Z
    .locals 1
    .parameter "fullRoamScanPeriod"

    .prologue
    .line 2957
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setFullRoamScanPeriod(I)Z

    move-result v0

    return v0
.end method

.method public syncSetRoamBand(I)Z
    .locals 1
    .parameter "roamBand"

    .prologue
    .line 2965
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setBand(I)Z

    move-result v0

    return v0
.end method

.method public syncSetRoamDelta(I)Z
    .locals 1
    .parameter "roamDelta"

    .prologue
    .line 2941
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setRoamDelta(I)Z

    move-result v0

    return v0
.end method

.method public syncSetRoamScanPeriod(I)Z
    .locals 1
    .parameter "roamScanPeriod"

    .prologue
    .line 2949
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setRoamScanPeriod(I)Z

    move-result v0

    return v0
.end method

.method public syncSetRoamTrigger(I)Z
    .locals 1
    .parameter "roamTrigger"

    .prologue
    .line 2933
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNative;->setRoamTrigger(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1747
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1748
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1749
    .local v0, LS:Ljava/lang/String;
    const-string v2, "current HSM state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1750
    const-string v2, "mLinkProperties "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1751
    const-string v2, "mWifiInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1752
    const-string v2, "mDhcpInfoInternal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1753
    const-string v2, "mNetworkInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1754
    const-string v2, "mLastSignalLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1755
    const-string v2, "mEnableRssiPolling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1756
    const-string v2, "mLastBssid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1757
    const-string v2, "mLastNetworkId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1758
    const-string v2, "mReconnectCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1759
    const-string v2, "mIsScanMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1760
    const-string v2, "Supplicant status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;

    invoke-virtual {v3}, Landroid/net/wifi/WifiNative;->status()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1763
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfigStore;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1764
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method tryingSSID(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 2926
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->setLastSSID(Ljava/lang/String;)V

    .line 2927
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    .line 2928
    const-string v0, "WifiMobilityEAP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message is ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    :cond_0
    return-void
.end method

.method public unlockMobNetwork(I)V
    .locals 2
    .parameter "netid"

    .prologue
    .line 1449
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;

    if-eqz v0, :cond_0

    .line 1450
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMobility:Landroid/net/wifi/WifiStateMachine$WifiMobility;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine$WifiMobility;->unLockMobilityByNetID(Ljava/lang/Integer;)V

    .line 1454
    :goto_0
    return-void

    .line 1452
    :cond_0
    const-string v0, "unlockMobNetwork: mWifiMobility is null"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateBatteryWorkSource(Landroid/os/WorkSource;)V
    .locals 4
    .parameter "newSource"

    .prologue
    .line 1711
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    monitor-enter v1

    .line 1713
    if-eqz p1, :cond_0

    .line 1714
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 1716
    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    if-eqz v0, :cond_3

    .line 1717
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v0, :cond_2

    .line 1720
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1721
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v2, v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 1723
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 1739
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1742
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1743
    return-void

    .line 1727
    :cond_2
    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunning(Landroid/os/WorkSource;)V

    .line 1728
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 1729
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    goto :goto_0

    .line 1740
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1732
    :cond_3
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v0, :cond_1

    .line 1734
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiStopped(Landroid/os/WorkSource;)V

    .line 1735
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->clear()V

    .line 1736
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1742
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
