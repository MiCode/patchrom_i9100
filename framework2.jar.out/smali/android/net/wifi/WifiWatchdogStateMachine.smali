.class public Landroid/net/wifi/WifiWatchdogStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiWatchdogStateMachine$4;,
        Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;,
        Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x21000

.field private static final CMD_ARP_CHECK:I = 0x2100b

.field private static final CMD_DELAYED_WALLED_GARDEN_CHECK:I = 0x2100c

.field private static final CMD_DNS_RECHECK:I = 0x2100e

.field private static final CMD_RSSI_FETCH:I = 0x2100d

.field private static DBG:Z = false

.field private static final DEFAULT_ARP_CHECK_INTERVAL_MS:J = 0x1d4c0L

.field private static final DEFAULT_ARP_PING_TIMEOUT_MS:I = 0x64

.field private static final DEFAULT_DNS_PING_TIMEOUT_MS:I = 0x7d0

.field private static final DEFAULT_MIN_ARP_RESPONSES:I = 0x1

.field private static final DEFAULT_MIN_DNS_RESPONSES:I = 0x1

.field private static final DEFAULT_NUM_ARP_PINGS:I = 0x5

.field private static final DEFAULT_NUM_DNS_PINGS:I = 0x5

.field private static final DEFAULT_RSSI_FETCH_INTERVAL_MS:J = 0x3e8L

.field private static final DEFAULT_WALLED_GARDEN_INTERVAL_MS:J = 0x1b7740L

.field private static final DEFAULT_WALLED_GARDEN_URL:Ljava/lang/String; = "http://clients3.google.com/generate_204"

.field private static final DNS_INTRATEST_PING_INTERVAL_MS:I = 0xc8

.field private static final DNS_START_DELAY_MS:I = 0x3e8

.field private static final EVENT_NETWORK_STATE_CHANGE:I = 0x21002

.field private static final EVENT_RSSI_CHANGE:I = 0x21003

.field private static final EVENT_WATCHDOG_SETTINGS_CHANGE:I = 0x21006

.field private static final EVENT_WATCHDOG_TOGGLED:I = 0x21001

.field private static final EVENT_WIFI_RADIO_STATE_CHANGE:I = 0x21005

.field private static final FULL_ARP_CHECK:I = 0x1

.field static final GOOD_LINK_DETECTED:I = 0x21016

.field private static final MIN_INTERVAL_AVOID_BSSID_MS:[I = null

.field static final POOR_LINK_DETECTED:I = 0x21015

.field static final RSSI_FETCH:I = 0x21017

.field static final RSSI_FETCH_FAILED:I = 0x21019

.field static final RSSI_FETCH_SUCCEEDED:I = 0x21018

.field private static final RSSI_LEVEL_MONITOR:I = 0x0

.field private static final RSSI_MONITOR_COUNT:I = 0x5

.field private static final RSSI_MONITOR_THRESHOLD:I = -0x58

.field private static final SINGLE_ARP_CHECK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiWatchdogStateMachine"

.field private static final WALLED_GARDEN_NOTIFICATION_ID:I = 0x10806b7

.field private static final WALLED_GARDEN_NOTIFICATION_TAG:Ljava/lang/String; = "WifiWatchdog.walledgarden"

.field private static final WALLED_GARDEN_SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final WALLED_GARDEN_START_DELAY_MS:I = 0xbb8

.field public static sWifiOnly:Z


# instance fields
.field private mArpCheckIntervalMs:J

.field private mArpPingTimeoutMs:I

.field private mArpToken:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentSignalLevel:I

.field private mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

.field private mDnsCheckingState:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;

.field private mDnsPingTimeoutMs:I

.field private mDnsPinger:Landroid/net/DnsPinger;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mLastBssidAvoidedTime:J

.field private mLastWalledGardenCheckTime:J

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMinArpResponses:I

.field private mMinDnsResponses:I

.field private mMinIntervalArrayIndex:I

.field private mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

.field private mNumArpPings:I

.field private mNumDnsPings:I

.field private mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

.field private mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

.field private mPoorNetworkDetectionEnabled:Z

.field private mRssiFetchIntervalMs:J

.field private mRssiFetchToken:I

.field private mRssiMonitorCount:I

.field private mRssiMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;

.field private mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

.field private mWalledGardenCheckState:Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;

.field private mWalledGardenIntervalMs:J

.field private mWalledGardenNotificationShown:Z

.field private mWalledGardenTestEnabled:Z

.field private mWalledGardenUrl:Ljava/lang/String;

.field private mWalletGardenNotification:Landroid/app/Notification;

.field private mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

.field private mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWsmChannel:Lcom/android/internal/util/AsyncChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    .line 121
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->MIN_INTERVAL_AVOID_BSSID_MS:[I

    .line 239
    sput-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    return-void

    .line 121
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x30t 0x75t 0x0t 0x0t
        0x60t 0xeat 0x0t 0x0t
        0xe0t 0x93t 0x4t 0x0t
        0x40t 0x77t 0x1bt 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 255
    const-string v0, "WifiWatchdogStateMachine"

    invoke-direct {p0, v0}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 117
    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiMonitorCount:I

    .line 124
    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinIntervalArrayIndex:I

    .line 198
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    .line 200
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    .line 201
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    .line 202
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    .line 203
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    .line 204
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    .line 205
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    .line 208
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheckingState:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;

    .line 210
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenCheckState:Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;

    .line 212
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    .line 214
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;

    .line 216
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    .line 218
    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mArpToken:I

    .line 220
    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    .line 237
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastWalledGardenCheckTime:J

    .line 256
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    .line 257
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    .line 258
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 259
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiStateMachineMessenger()Landroid/os/Messenger;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    .line 262
    new-instance v0, Landroid/net/DnsPinger;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "WifiWatchdogStateMachine.DnsPinger"

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Landroid/net/DnsPinger;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Looper;Landroid/os/Handler;I)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPinger:Landroid/net/DnsPinger;

    .line 266
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->setupNetworkReceiver()V

    .line 269
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->registerForSettingsChanges()V

    .line 270
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->registerForWatchdogToggle()V

    .line 271
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 272
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 273
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDefaultState:Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 274
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 275
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 276
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 277
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheckingState:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 278
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenCheckState:Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 279
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 280
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 281
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$ConnectedState;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 283
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 288
    :goto_0
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V

    .line 289
    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    goto :goto_0
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenNotificationShown:Z

    return p1
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->updateResources()V

    return-void
.end method

.method static synthetic access$1000(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->resetWatchdogState()V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogDisabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogDisabledState;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1502(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    return-object p1
.end method

.method static synthetic access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    return v0
.end method

.method static synthetic access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsCheckingState:Landroid/net/wifi/WifiWatchdogStateMachine$DnsCheckingState;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->shouldCheckWalledGarden()Z

    move-result v0

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    sput-boolean p0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    return p0
.end method

.method static synthetic access$2100(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenCheckState:Landroid/net/wifi/WifiWatchdogStateMachine$WalledGardenCheckState;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->setWalledGardenNotificationVisible(Z)V

    return-void
.end method

.method static synthetic access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mArpToken:I

    return v0
.end method

.method static synthetic access$2804(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mArpToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mArpToken:I

    return v0
.end method

.method static synthetic access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->doArpTest(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-static {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/net/wifi/WifiWatchdogStateMachine;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 95
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mArpCheckIntervalMs:J

    return-wide v0
.end method

.method static synthetic access$3100(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/net/wifi/WifiWatchdogStateMachine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->setPoorConnectNotificationVisible(Z)V

    return-void
.end method

.method static synthetic access$3600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/DnsPinger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPinger:Landroid/net/DnsPinger;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNumDnsPings:I

    return v0
.end method

.method static synthetic access$3800(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPingTimeoutMs:I

    return v0
.end method

.method static synthetic access$3900(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-static {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V

    return-void
.end method

.method static synthetic access$4000(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4100(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I

    return v0
.end method

.method static synthetic access$4200(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4502(Landroid/net/wifi/WifiWatchdogStateMachine;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput-wide p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastWalledGardenCheckTime:J

    return-wide p1
.end method

.method static synthetic access$4600(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isWalledGardenConnection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4800(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiMonitoringState:Landroid/net/wifi/WifiWatchdogStateMachine$RssiMonitoringState;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    return v0
.end method

.method static synthetic access$5000(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$502(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    return p1
.end method

.method static synthetic access$5100(Landroid/net/wifi/WifiWatchdogStateMachine;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 95
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastBssidAvoidedTime:J

    return-wide v0
.end method

.method static synthetic access$5200()[I
    .locals 1

    .prologue
    .line 95
    sget-object v0, Landroid/net/wifi/WifiWatchdogStateMachine;->MIN_INTERVAL_AVOID_BSSID_MS:[I

    return-object v0
.end method

.method static synthetic access$5300(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinIntervalArrayIndex:I

    return v0
.end method

.method static synthetic access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5500(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    return v0
.end method

.method static synthetic access$5504(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchToken:I

    return v0
.end method

.method static synthetic access$5600(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5700(Landroid/net/wifi/WifiWatchdogStateMachine;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 95
    iget-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchIntervalMs:J

    return-wide v0
.end method

.method static synthetic access$5800(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiMonitorCount:I

    return v0
.end method

.method static synthetic access$5802(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    iput p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiMonitorCount:I

    return p1
.end method

.method static synthetic access$5808(Landroid/net/wifi/WifiWatchdogStateMachine;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 95
    iget v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiMonitorCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiMonitorCount:I

    return v0
.end method

.method static synthetic access$5900(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendPoorLinkDetected()V

    return-void
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiWatchdogStateMachine;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiWatchdogStateMachine;->calculateSignalLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/net/wifi/WifiWatchdogStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->isWatchdogEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 95
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNotConnectedState:Landroid/net/wifi/WifiWatchdogStateMachine$NotConnectedState;

    return-object v0
.end method

.method private calculateSignalLevel(I)I
    .locals 3
    .parameter "rssi"

    .prologue
    .line 1120
    const/4 v1, 0x5

    invoke-static {p1, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .line 1122
    .local v0, signalLevel:I
    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSSI current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    .line 1123
    :cond_0
    return v0
.end method

.method private doArpTest(I)Z
    .locals 15
    .parameter "type"

    .prologue
    .line 1075
    iget-object v13, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v13}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 1076
    .local v4, iface:Ljava/lang/String;
    iget-object v13, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v13}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v7

    .line 1077
    .local v7, mac:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1078
    .local v5, inetAddress:Ljava/net/InetAddress;
    const/4 v1, 0x0

    .line 1080
    .local v1, gateway:Ljava/net/InetAddress;
    iget-object v13, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v13}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    .line 1081
    .local v6, la:Landroid/net/LinkAddress;
    invoke-virtual {v6}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    .line 1085
    .end local v6           #la:Landroid/net/LinkAddress;
    :cond_0
    iget-object v13, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v13}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/RouteInfo;

    .line 1086
    .local v10, route:Landroid/net/RouteInfo;
    invoke-virtual {v10}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    .line 1090
    .end local v10           #route:Landroid/net/RouteInfo;
    :cond_1
    sget-boolean v13, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v13, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ARP "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "addr: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "mac: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "gw: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    .line 1093
    :cond_2
    :try_start_0
    new-instance v8, Landroid/net/arp/ArpPeer;

    invoke-direct {v8, v4, v5, v7, v1}, Landroid/net/arp/ArpPeer;-><init>(Ljava/lang/String;Ljava/net/InetAddress;Ljava/lang/String;Ljava/net/InetAddress;)V

    .line 1094
    .local v8, peer:Landroid/net/arp/ArpPeer;
    if-nez p1, :cond_5

    .line 1095
    iget v13, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mArpPingTimeoutMs:I

    invoke-virtual {v8, v13}, Landroid/net/arp/ArpPeer;->doArp(I)[B

    move-result-object v13

    if-eqz v13, :cond_4

    const/4 v12, 0x1

    .line 1096
    .local v12, success:Z
    :goto_0
    sget-boolean v13, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v13, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "single ARP test result: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    .line 1105
    :cond_3
    :goto_1
    invoke-virtual {v8}, Landroid/net/arp/ArpPeer;->close()V

    .line 1116
    .end local v8           #peer:Landroid/net/arp/ArpPeer;
    :goto_2
    return v12

    .line 1095
    .end local v12           #success:Z
    .restart local v8       #peer:Landroid/net/arp/ArpPeer;
    :cond_4
    const/4 v12, 0x0

    goto :goto_0

    .line 1098
    :cond_5
    const/4 v9, 0x0

    .line 1099
    .local v9, responses:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_3
    iget v13, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNumArpPings:I

    if-ge v2, v13, :cond_7

    .line 1100
    iget v13, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mArpPingTimeoutMs:I

    invoke-virtual {v8, v13}, Landroid/net/arp/ArpPeer;->doArp(I)[B

    move-result-object v13

    if-eqz v13, :cond_6

    add-int/lit8 v9, v9, 0x1

    .line 1099
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1102
    :cond_7
    sget-boolean v13, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v13, :cond_8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "full ARP test result: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNumArpPings:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    .line 1103
    :cond_8
    iget v13, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinArpResponses:I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    if-lt v9, v13, :cond_9

    const/4 v12, 0x1

    .restart local v12       #success:Z
    :goto_4
    goto :goto_1

    .end local v12           #success:Z
    :cond_9
    const/4 v12, 0x0

    goto :goto_4

    .line 1106
    .end local v2           #i:I
    .end local v8           #peer:Landroid/net/arp/ArpPeer;
    .end local v9           #responses:I
    :catch_0
    move-exception v11

    .line 1109
    .local v11, se:Ljava/net/SocketException;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ARP test initiation failure: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V

    .line 1110
    const/4 v12, 0x1

    .line 1114
    .restart local v12       #success:Z
    goto :goto_2

    .line 1111
    .end local v11           #se:Ljava/net/SocketException;
    .end local v12           #success:Z
    :catch_1
    move-exception v0

    .line 1113
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const/4 v12, 0x1

    .restart local v12       #success:Z
    goto :goto_2
.end method

.method private static getSettingsBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 3
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1181
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static getSettingsStr(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "def"

    .prologue
    .line 1162
    invoke-static {p0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1163
    .local v0, v:Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0           #v:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #v:Ljava/lang/String;
    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method private isWalledGardenConnection()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 410
    const/4 v3, 0x0

    .line 412
    .local v3, urlConnection:Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenUrl:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 413
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 414
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 415
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 416
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 417
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 418
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 420
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/16 v6, 0xcc

    if-eq v4, v6, :cond_1

    const/4 v4, 0x1

    .line 427
    :goto_0
    if-eqz v3, :cond_0

    .line 428
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 425
    .end local v2           #url:Ljava/net/URL;
    :cond_0
    :goto_1
    return v4

    .restart local v2       #url:Ljava/net/URL;
    :cond_1
    move v4, v5

    .line 420
    goto :goto_0

    .line 421
    .end local v2           #url:Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 422
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    sget-boolean v4, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v4, :cond_2

    .line 423
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Walled garden check - probably not a portal: exception "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 427
    :cond_2
    if-eqz v3, :cond_3

    .line 428
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    move v4, v5

    .line 425
    goto :goto_1

    .line 427
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_4

    .line 428
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 427
    :cond_4
    throw v4
.end method

.method private isWatchdogEnabled()Z
    .locals 4

    .prologue
    .line 451
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "wifi_watchdog_on"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->getSettingsBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    .line 452
    .local v0, ret:Z
    sget-boolean v1, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "watchdog enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    .line 453
    :cond_0
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1202
    const-string v0, "WifiWatchdogStateMachine"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 1206
    const-string v0, "WifiWatchdogStateMachine"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    return-void
.end method

.method public static makeWifiWatchdogStateMachine(Landroid/content/Context;)Landroid/net/wifi/WifiWatchdogStateMachine;
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 292
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 294
    .local v1, contentResolver:Landroid/content/ContentResolver;
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 296
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    sput-boolean v3, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    .line 302
    const-string v3, "wifi_watchdog_on"

    invoke-static {v1, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->putSettingsBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 305
    sget-boolean v3, Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z

    if-eqz v3, :cond_0

    .line 306
    const-string v3, "Disabling poor network avoidance for wi-fi only device"

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    .line 307
    const-string v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v1, v3, v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->putSettingsBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 311
    :cond_0
    new-instance v2, Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {v2, p0}, Landroid/net/wifi/WifiWatchdogStateMachine;-><init>(Landroid/content/Context;)V

    .line 312
    .local v2, wwsm:Landroid/net/wifi/WifiWatchdogStateMachine;
    invoke-virtual {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->start()V

    .line 313
    return-object v2

    .end local v2           #wwsm:Landroid/net/wifi/WifiWatchdogStateMachine;
    :cond_1
    move v3, v5

    .line 296
    goto :goto_0
.end method

.method private static putSettingsBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "cr"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1198
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerForSettingsChanges()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 370
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$3;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$3;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V

    .line 377
    .local v0, contentObserver:Landroid/database/ContentObserver;
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_arp_interval_ms"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 381
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_walled_garden_interval_ms"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 384
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_num_arp_pings"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 387
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_min_arp_responses"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 390
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_arp_ping_timeout_ms"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 393
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 396
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_walled_garden_test_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 399
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_walled_garden_url"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 402
    return-void
.end method

.method private registerForWatchdogToggle()V
    .locals 4

    .prologue
    .line 354
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$2;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine$2;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/os/Handler;)V

    .line 361
    .local v0, contentObserver:Landroid/database/ContentObserver;
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_watchdog_on"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 364
    return-void
.end method

.method private resetWatchdogState()V
    .locals 2

    .prologue
    .line 491
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    .line 492
    const-string v0, "Resetting watchdog state..."

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    .line 494
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastWalledGardenCheckTime:J

    .line 495
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->setPoorConnectNotificationVisible(Z)V

    .line 496
    return-void
.end method

.method private sendPoorLinkDetected()V
    .locals 6

    .prologue
    .line 1127
    sget-boolean v2, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send POOR_LINK_DETECTED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    .line 1128
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x21015

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 1130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1131
    .local v0, time:J
    iget-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastBssidAvoidedTime:J

    sub-long v2, v0, v2

    sget-object v4, Landroid/net/wifi/WifiWatchdogStateMachine;->MIN_INTERVAL_AVOID_BSSID_MS:[I

    sget-object v5, Landroid/net/wifi/WifiWatchdogStateMachine;->MIN_INTERVAL_AVOID_BSSID_MS:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 1133
    const/4 v2, 0x1

    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinIntervalArrayIndex:I

    .line 1134
    sget-boolean v2, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "set mMinIntervalArrayIndex to 1"

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    .line 1143
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastBssidAvoidedTime:J

    .line 1144
    return-void

    .line 1137
    :cond_2
    iget v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinIntervalArrayIndex:I

    sget-object v3, Landroid/net/wifi/WifiWatchdogStateMachine;->MIN_INTERVAL_AVOID_BSSID_MS:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3

    .line 1138
    iget v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinIntervalArrayIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinIntervalArrayIndex:I

    .line 1140
    :cond_3
    sget-boolean v2, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMinIntervalArrayIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinIntervalArrayIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setPoorConnectNotificationVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 499
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "info_type"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 501
    const-string v1, "visible"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 502
    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 503
    return-void
.end method

.method private setWalledGardenNotificationVisible(Z)V
    .locals 12
    .parameter "visible"

    .prologue
    const/4 v11, 0x1

    const v10, 0x10806b7

    const/4 v9, 0x0

    .line 507
    if-nez p1, :cond_1

    iget-boolean v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenNotificationShown:Z

    if-nez v6, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    if-eqz p1, :cond_2

    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    const-string v7, "VerizonWiFi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 515
    :cond_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 516
    .local v4, r:Landroid/content/res/Resources;
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 519
    .local v3, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_4

    .line 520
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalletGardenNotification:Landroid/app/Notification;

    if-nez v6, :cond_3

    .line 521
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    iput-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalletGardenNotification:Landroid/app/Notification;

    .line 522
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalletGardenNotification:Landroid/app/Notification;

    const-wide/16 v7, 0x0

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 523
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalletGardenNotification:Landroid/app/Notification;

    iput v10, v6, Landroid/app/Notification;->icon:I

    .line 524
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalletGardenNotification:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 526
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 527
    .local v2, intent:Landroid/content/Intent;
    const/high16 v6, 0x1040

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 528
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalletGardenNotification:Landroid/app/Notification;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v7, v9, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 530
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    .local v0, deleteIntent:Landroid/content/Intent;
    const-string v6, "nid"

    invoke-virtual {v0, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 532
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalletGardenNotification:Landroid/app/Notification;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    invoke-static {v7, v9, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 535
    .end local v0           #deleteIntent:Landroid/content/Intent;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    const v6, 0x1040515

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 536
    .local v5, title:Ljava/lang/CharSequence;
    const v6, 0x1040516

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 538
    .local v1, details:Ljava/lang/CharSequence;
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalletGardenNotification:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 539
    iget-object v6, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalletGardenNotification:Landroid/app/Notification;

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalletGardenNotification:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, v7, v5, v1, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 541
    const-string v6, "WifiWatchdog.walledgarden"

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalletGardenNotification:Landroid/app/Notification;

    invoke-virtual {v3, v6, v10, v7}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 545
    .end local v1           #details:Ljava/lang/CharSequence;
    .end local v5           #title:Ljava/lang/CharSequence;
    :goto_1
    iput-boolean p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenNotificationShown:Z

    goto/16 :goto_0

    .line 543
    :cond_4
    const-string v6, "WifiWatchdog.walledgarden"

    invoke-virtual {v3, v6, v10}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private setupNetworkReceiver()V
    .locals 3

    .prologue
    .line 317
    new-instance v0, Landroid/net/wifi/WifiWatchdogStateMachine$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiWatchdogStateMachine$1;-><init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 341
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    .line 342
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 348
    return-void
.end method

.method private shouldCheckWalledGarden()Z
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    .line 1054
    iget-boolean v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenTestEnabled:Z

    if-nez v3, :cond_1

    .line 1055
    sget-boolean v3, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "Skipping walled garden check - disabled"

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    .line 1069
    :cond_0
    :goto_0
    return v2

    .line 1059
    :cond_1
    iget-wide v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenIntervalMs:J

    iget-wide v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastWalledGardenCheckTime:J

    add-long/2addr v3, v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v0, v3, v5

    .line 1062
    .local v0, waitTime:J
    iget-wide v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLastWalledGardenCheckTime:J

    cmp-long v3, v3, v7

    if-eqz v3, :cond_2

    cmp-long v3, v0, v7

    if-lez v3, :cond_2

    .line 1063
    sget-boolean v3, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v3, :cond_0

    .line 1064
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping walled garden check - wait "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1069
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updateResources()V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalletGardenNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenNotificationShown:Z

    if-eqz v0, :cond_0

    .line 550
    iget-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenNotificationShown:Z

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->setWalledGardenNotificationVisible(Z)V

    .line 552
    :cond_0
    return-void
.end method

.method private updateSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 457
    sget-boolean v0, Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Updating secure settings"

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->log(Ljava/lang/String;)V

    .line 459
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_arp_interval_ms"

    const-wide/32 v2, 0x1d4c0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mArpCheckIntervalMs:J

    .line 462
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_rssi_fetch_interval_ms"

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchIntervalMs:J

    .line 465
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_num_arp_pings"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNumArpPings:I

    .line 468
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_min_arp_responses"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinArpResponses:I

    .line 471
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_arp_ping_timeout_ms"

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mArpPingTimeoutMs:I

    .line 475
    iput v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNumDnsPings:I

    .line 476
    iput v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinDnsResponses:I

    .line 477
    const/16 v0, 0x7d0

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsPingTimeoutMs:I

    .line 478
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_poor_network_test_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->getSettingsBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    .line 480
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_walled_garden_test_enabled"

    invoke-static {v0, v1, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->getSettingsBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenTestEnabled:Z

    .line 482
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_walled_garden_url"

    const-string v2, "http://clients3.google.com/generate_204"

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->getSettingsStr(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenUrl:Ljava/lang/String;

    .line 485
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_walled_garden_interval_ms"

    const-wide/32 v2, 0x1b7740

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenIntervalMs:J

    .line 488
    return-void
.end method


# virtual methods
.method public checkDnsQuery()V
    .locals 1

    .prologue
    .line 1148
    const v0, 0x2100e

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    .line 1149
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "pw"

    .prologue
    .line 434
    const-string v0, "WatchdogStatus: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiInfo: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLinkProperties: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentSignalLevel: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mArpCheckIntervalMs: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mArpCheckIntervalMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRssiFetchIntervalMs: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mRssiFetchIntervalMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWalledGardenIntervalMs: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenIntervalMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNumArpPings: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mNumArpPings:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMinArpResponses: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mMinArpResponses:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mArpPingTimeoutMs: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mArpPingTimeoutMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPoorNetworkDetectionEnabled: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWalledGardenTestEnabled: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenTestEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWalledGardenUrl: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    return-void
.end method
