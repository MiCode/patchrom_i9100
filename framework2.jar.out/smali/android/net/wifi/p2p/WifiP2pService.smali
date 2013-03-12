.class public Landroid/net/wifi/p2p/WifiP2pService;
.super Landroid/net/wifi/p2p/IWifiP2pManager$Stub;
.source "WifiP2pService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pService$1;,
        Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;,
        Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;,
        Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;
    }
.end annotation


# static fields
.field private static final AIRPLANE_MODE_CHANGED:I = 0x23013

.field private static final BASE:I = 0x23000

.field private static final CMD_LOAD_P2P_DRIVER_FAILURE:I = 0x2300f

.field private static final CMD_LOAD_P2P_DRIVER_SUCCESS:I = 0x2300e

.field static final CMD_STOP_P2P_SUPPLICANT_FAILED:I = 0x23014

.field private static final CMD_UNLOAD_P2P_DRIVER_FAILURE:I = 0x23011

.field private static final CMD_UNLOAD_P2P_DRIVER_SUCCESS:I = 0x23010

.field private static final CONNECTION_TIMED_OUT:I = 0x1e

.field private static final DBG:Z = true

.field private static final DEFAULT_STATIC_IP:Ljava/lang/String; = "192.168.49.10"

.field private static final DHCP_RANGE:[Ljava/lang/String; = null

.field private static final DISCOVER_TIMEOUT_S:I = 0x78

.field private static final FORM_GROUP:Ljava/lang/Boolean; = null

.field public static final GROUP_CREATING_TIMED_OUT:I = 0x23001

.field private static final GROUP_CREATING_WAIT_TIME_MS:I = 0x1d4c0

.field private static final GROUP_IDLE_TIME_S:I = 0x2

.field private static final INVITATION_PROCEDURE_TIMED_OUT:I = 0x23033

.field private static final INVITATION_WAIT_TIME_MS:I = 0x7530

.field private static final JB_STYLE:Z = true

.field private static final JOIN_GROUP:Ljava/lang/Boolean; = null

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI_P2P"

.field private static final NFC_REQUEST_TIMED_OUT:I = 0x23032

.field public static final P2P_ENABLE_PENDING:I = 0x2300a

.field private static final P2P_EXPIRATION_SCREEN_TIMEOUT:I = 0x1388

.field private static final P2P_EXPIRATION_TIME:I = 0x5

.field private static final P2P_INVITATION_WAKELOCK_DURATION:I = 0x2710

.field private static final P2P_RESTART_INTERVAL_MSECS:I = 0x1388

.field private static final P2P_RESTART_TRIES:I = 0x5

.field private static final P2P_SUPPLICANT_RESTART_INTERVAL_MSECS:I = 0x1388

.field private static final PEER_CONNECTION_USER_ACCEPT:I = 0x23002

.field private static final PEER_CONNECTION_USER_REJECT:I = 0x23003

.field private static final SERVER_ADDRESS:Ljava/lang/String; = "192.168.49.1"

.field private static final TAG:Ljava/lang/String; = "WifiP2pService"

.field private static final WIFI_DISABLE_USER_ACCEPT:I = 0x2300b

.field private static final WIFI_DISABLE_USER_REJECT:I = 0x2300c

.field private static final WIFI_ENABLED_MESSAGE:I = 0x23012

.field public static final WIFI_ENABLE_PROCEED:I = 0x2300d

.field public static mDeviceType:Ljava/lang/String;

.field private static mGroupCreatingTimeoutIndex:I


# instance fields
.field private bAirPlaneMode:Z

.field private mActivityMgr:Landroid/app/ActivityManager;

.field private mAutonomousGroup:Z

.field private mClientInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Messenger;",
            "Landroid/net/wifi/p2p/WifiP2pService$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedDevicesCnt:I

.field private mContext:Landroid/content/Context;

.field private mDVFSLock:Landroid/os/PowerManager$DVFSLock;

.field private mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mDiscoveryStarted:Z

.field private mExpiredAlertdialog:Landroid/app/AlertDialog;

.field private mForegroundAppMessenger:Landroid/os/Messenger;

.field private mForegroundAppPkgName:Ljava/lang/String;

.field private mInterface:Ljava/lang/String;

.field private mInvitationDialog:Landroid/app/AlertDialog;

.field private mInvitationMsg:Landroid/widget/TextView;

.field private mJoinExistingGroup:Z

.field private mLapseTime:I

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotification:Landroid/app/Notification;

.field mNwService:Landroid/os/INetworkManagementService;

.field private mP2pRestartCount:I

.field private mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

.field private mP2pSupplicantStopFailureToken:I

.field private final mP2pSupported:Z

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mServiceDiscReqId:Ljava/lang/String;

.field private mServiceTransactionId:B

.field private mSoundNotification:Landroid/app/Notification;

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mTimerIntent:Landroid/app/PendingIntent;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWfdManager:Lcom/samsung/wfd/WfdManager;

.field private mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private mWifiApState:I

.field private mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiState:I

.field private mWpsTimer:Landroid/os/CountDownTimer;

.field t_dialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->JOIN_GROUP:Ljava/lang/Boolean;

    .line 148
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->FORM_GROUP:Ljava/lang/Boolean;

    .line 152
    sput v2, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    .line 272
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "192.168.49.100"

    aput-object v1, v0, v2

    const-string v1, "192.168.49.254"

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pService;->DHCP_RANGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 280
    invoke-direct {p0}, Landroid/net/wifi/p2p/IWifiP2pManager$Stub;-><init>()V

    .line 138
    iput v12, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiState:I

    .line 139
    const/16 v6, 0xb

    iput v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiApState:I

    .line 140
    iput-boolean v11, p0, Landroid/net/wifi/p2p/WifiP2pService;->bAirPlaneMode:Z

    .line 141
    iput-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 144
    new-instance v6, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v6}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 172
    iput v11, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pRestartCount:I

    .line 210
    iput-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 220
    iput-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService;->mExpiredAlertdialog:Landroid/app/AlertDialog;

    .line 223
    iput-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInvitationDialog:Landroid/app/AlertDialog;

    .line 228
    iput-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService;->t_dialog:Landroid/app/AlertDialog;

    .line 229
    new-instance v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v6}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 247
    iput-byte v11, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    .line 254
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;

    .line 263
    iput v11, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pSupplicantStopFailureToken:I

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "@android:style/Theme.DeviceDefault"

    invoke-virtual {v6, v7, v10, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 283
    .local v4, resId:I
    new-instance v6, Landroid/view/ContextThemeWrapper;

    invoke-direct {v6, p1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    .line 286
    const-string v6, "p2p0"

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInterface:Ljava/lang/String;

    .line 287
    const-string v6, "activity"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mActivityMgr:Landroid/app/ActivityManager;

    .line 289
    new-instance v6, Landroid/net/NetworkInfo;

    const/16 v7, 0xd

    const-string v8, "WIFI_P2P"

    const-string v9, ""

    invoke-direct {v6, v7, v11, v8, v9}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 291
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.wifi.direct"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pSupported:Z

    .line 294
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 295
    .local v3, powerManager:Landroid/os/PowerManager;
    const-string v6, "WifiP2pService"

    invoke-virtual {v3, v12, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 296
    const v6, 0x1000001a

    const-string v7, "WifiP2pService"

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 298
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6, v11}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 302
    :try_start_0
    invoke-virtual {v3}, Landroid/os/PowerManager;->getSupportedFrequency()[I

    move-result-object v6

    const/4 v7, 0x0

    aget v2, v6, v7

    .line 303
    .local v2, maxFreq:I
    const-string v6, "WifiP2pService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "max Frequency : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    if-lez v2, :cond_0

    .line 305
    const/4 v6, 0x1

    const-string v7, "WifiP2pService"

    invoke-virtual {v3, v6, v2, v7}, Landroid/os/PowerManager;->newDVFSLock(IILjava/lang/String;)Landroid/os/PowerManager$DVFSLock;

    move-result-object v6

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    .end local v2           #maxFreq:I
    :cond_0
    :goto_0
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v7, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040037

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 315
    new-instance v6, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    const-string v7, "WifiP2pService"

    iget-boolean v8, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pSupported:Z

    invoke-direct {v6, p0, v7, v8}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;-><init>(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;Z)V

    iput-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    .line 316
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->start()V

    .line 318
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_p2p_device_name"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 319
    .local v5, ssid:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 320
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #calls: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getPersistedDeviceName()Ljava/lang/String;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$000(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Ljava/lang/String;

    move-result-object v5

    .line 321
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "wifi_p2p_device_name"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 325
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 326
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 329
    const-string v6, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 330
    const-string v6, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;

    invoke-direct {v7, p0, v10}, Landroid/net/wifi/p2p/WifiP2pService$WifiStateReceiver;-><init>(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/p2p/WifiP2pService$1;)V

    invoke-virtual {v6, v7, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 333
    return-void

    .line 307
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v5           #ssid:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 308
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 309
    iput-object v10, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    goto :goto_0
.end method

.method static synthetic access$1000(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10800(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object v0
.end method

.method static synthetic access$10802(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method static synthetic access$11400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object v0
.end method

.method static synthetic access$11402(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/wifi/WifiManager$WifiLock;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWiFiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-object p1
.end method

.method static synthetic access$11700(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mConnectedDevicesCnt:I

    return v0
.end method

.method static synthetic access$11702(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mConnectedDevicesCnt:I

    return p1
.end method

.method static synthetic access$12400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/DhcpInfoInternal;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    return-object v0
.end method

.method static synthetic access$12402(Landroid/net/wifi/p2p/WifiP2pService;Landroid/net/DhcpInfoInternal;)Landroid/net/DhcpInfoInternal;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    return-object p1
.end method

.method static synthetic access$14400(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z

    return v0
.end method

.method static synthetic access$14402(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDiscoveryStarted:Z

    return p1
.end method

.method static synthetic access$14500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->DHCP_RANGE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14600(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mLapseTime:I

    return v0
.end method

.method static synthetic access$14602(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mLapseTime:I

    return p1
.end method

.method static synthetic access$14606(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mLapseTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mLapseTime:I

    return v0
.end method

.method static synthetic access$14700(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInvitationMsg:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$14702(Landroid/net/wifi/p2p/WifiP2pService;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInvitationMsg:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$14800(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDialogWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$15000(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mClientInfoList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$15100(Landroid/net/wifi/p2p/WifiP2pService;)B
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-byte v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    return v0
.end method

.method static synthetic access$15102(Landroid/net/wifi/p2p/WifiP2pService;B)B
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-byte p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    return p1
.end method

.method static synthetic access$15104(Landroid/net/wifi/p2p/WifiP2pService;)B
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-byte v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceTransactionId:B

    return v0
.end method

.method static synthetic access$15200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$15202(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNotification:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic access$15300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/Notification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mSoundNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$15302(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mSoundNotification:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic access$15400(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$15900(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/Messenger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$15902(Landroid/net/wifi/p2p/WifiP2pService;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$16000(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16002(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mForegroundAppPkgName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$16100(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/ActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mActivityMgr:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiState:I

    return v0
.end method

.method static synthetic access$2000(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pSupplicantStopFailureToken:I

    return v0
.end method

.method static synthetic access$2004(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pSupplicantStopFailureToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pSupplicantStopFailureToken:I

    return v0
.end method

.method static synthetic access$202(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiState:I

    return p1
.end method

.method static synthetic access$2200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400(Landroid/net/wifi/p2p/WifiP2pService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiApState:I

    return v0
.end method

.method static synthetic access$402(Landroid/net/wifi/p2p/WifiP2pService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiApState:I

    return p1
.end method

.method static synthetic access$5400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6200(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/PowerManager$DVFSLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mDVFSLock:Landroid/os/PowerManager$DVFSLock;

    return-object v0
.end method

.method static synthetic access$6300(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInvitationDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$6302(Landroid/net/wifi/p2p/WifiP2pService;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mInvitationDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$6400(Landroid/net/wifi/p2p/WifiP2pService;)Landroid/os/CountDownTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWpsTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$6402(Landroid/net/wifi/p2p/WifiP2pService;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWpsTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$6500(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z

    return v0
.end method

.method static synthetic access$6502(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mAutonomousGroup:Z

    return p1
.end method

.method static synthetic access$6800()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->JOIN_GROUP:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$7000()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pService;->FORM_GROUP:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$7700(Landroid/net/wifi/p2p/WifiP2pService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mJoinExistingGroup:Z

    return v0
.end method

.method static synthetic access$7702(Landroid/net/wifi/p2p/WifiP2pService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mJoinExistingGroup:Z

    return p1
.end method

.method static synthetic access$800(Landroid/net/wifi/p2p/WifiP2pService;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$802(Landroid/net/wifi/p2p/WifiP2pService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$8300(Landroid/net/wifi/p2p/WifiP2pService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8302(Landroid/net/wifi/p2p/WifiP2pService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mServiceDiscReqId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$8900()I
    .locals 1

    .prologue
    .line 120
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method static synthetic access$8904()I
    .locals 1

    .prologue
    .line 120
    sget v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/net/wifi/p2p/WifiP2pService;->mGroupCreatingTimeoutIndex:I

    return v0
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 360
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 365
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiP2pService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    return-void
.end method


# virtual methods
.method public connectivityServiceReady()V
    .locals 2

    .prologue
    .line 336
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 337
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mNwService:Landroid/os/INetworkManagementService;

    .line 338
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 387
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WifiP2pService from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 394
    :cond_0
    return-void
.end method

.method public getMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 380
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceAccessPermission()V

    .line 381
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceChangePermission()V

    .line 382
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public isInactiveState()Z
    .locals 1

    .prologue
    .line 370
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceAccessPermission()V

    .line 371
    invoke-direct {p0}, Landroid/net/wifi/p2p/WifiP2pService;->enforceChangePermission()V

    .line 372
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pService;->mP2pStateMachine:Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;

    #getter for: Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->mIsInactiveState:Z
    invoke-static {v0}, Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;->access$500(Landroid/net/wifi/p2p/WifiP2pService$P2pStateMachine;)Z

    move-result v0

    return v0
.end method
