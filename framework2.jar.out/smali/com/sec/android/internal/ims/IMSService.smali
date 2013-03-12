.class public Lcom/sec/android/internal/ims/IMSService;
.super Ljava/lang/Object;
.source "IMSService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/internal/ims/IMSService$17;,
        Lcom/sec/android/internal/ims/IMSService$ShutdownReceiver;,
        Lcom/sec/android/internal/ims/IMSService$mNtwrkType;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final DEBUG:Z = false

.field public static EVDO_0:Ljava/lang/String; = null

.field public static EVDO_A:Ljava/lang/String; = null

.field public static EVDO_B:Ljava/lang/String; = null

.field private static final EVENT_DISCONNECT:I = 0x64

.field private static final EVENT_IMSVT_DISABLED_ON_WIFI:I = 0x65

.field public static HSPA:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "IMS/IMSService"

.field public static LTE:Ljava/lang/String; = null

.field public static MOBILE:Ljava/lang/String; = null

.field public static NONE:Ljava/lang/String; = null

.field public static final NWK_TYPE:I = 0x1

.field public static final P_ACCESS_NWK_INFO:I = 0x0

.field public static final REG_AVAIL_INTENT_ACTION:Ljava/lang/String; = "com.android.server.status.sip_reg_available"

.field public static final REG_UNAVAIL_INTENT_ACTION:Ljava/lang/String; = "com.android.server.status.sip_reg_unavailable"

.field public static final SERVICE_KEY:Ljava/lang/String; = "sIMSManager"

.field private static SISOTest:Z = false

.field public static UMTS:Ljava/lang/String; = null

.field private static final VT_BATTERY_WARNING_LEVEL:I = 0xa

.field public static WIFI:Ljava/lang/String; = null

.field private static defaultRetryTime:I = 0x0

.field public static eHRPD:Ljava/lang/String; = null

.field private static glocalIp:Ljava/lang/String; = null

.field private static imsService:Lcom/sec/android/internal/ims/IMSService; = null

.field private static isDNSQueryInProgss:Z = false

.field private static isDNSQuerySuccess:Z = false

.field private static isImsInited:Z = false

.field private static isImsRegistered:Z = false

.field private static isRegAvailRecvd:Z = false

.field public static mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType; = null

.field private static mbgn:Ljava/lang/String; = null

.field private static retryCount:I = 0x0

.field private static retryTime:I = 0x0

.field private static showWifiToast:Z = false

.field private static startUsingHiPri:Z = false

.field public static final svcNotification:Ljava/lang/String; = "notification"


# instance fields
.field public AlwaysOnSmsReceiveListener:Landroid/content/BroadcastReceiver;

.field public HiddenMenuChangeReceiver:Landroid/content/BroadcastReceiver;

.field private VT_ICON_SLOT:Ljava/lang/String;

.field private final batteryChangeReceiver:Landroid/content/BroadcastReceiver;

.field private final flightModeReceiver:Landroid/content/BroadcastReceiver;

.field private hiddenMenu_filter:Landroid/content/IntentFilter;

.field public imsCallId:I

.field imsListener:Lcom/sec/android/ims/IMSEventListener;

.field info:Landroid/net/NetworkInfo;

.field private isDNSRetryInProgress:Z

.field public isImsForbidden:Z

.field public isWifiEnabled:Z

.field private mCallId:I

.field public mCallType:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNearSurface:Landroid/view/Surface;

.field mNetwkTypeConnected:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mServiceState:Landroid/telephony/ServiceState;

.field private mShutdownReceiver:Lcom/sec/android/internal/ims/IMSService$ShutdownReceiver;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mSurface:Landroid/view/Surface;

.field mTimer:Ljava/util/Timer;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field mdn_number:Ljava/lang/String;

.field min_number:Ljava/lang/String;

.field private myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

.field notificationManager:Landroid/app/NotificationManager;

.field notificationRef:I

.field private regEventReceiver:Landroid/content/BroadcastReceiver;

.field private final roamingAreaReceiver:Landroid/content/BroadcastReceiver;

.field public vtErrorTableUpdateListener:Landroid/content/BroadcastReceiver;

.field vtNotification:Landroid/app/Notification;

.field private wifiEventReceiver:Landroid/content/BroadcastReceiver;

.field wifiMgr:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 121
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/internal/ims/IMSService;->DEBUG:Z

    .line 130
    sput-object v3, Lcom/sec/android/internal/ims/IMSService;->imsService:Lcom/sec/android/internal/ims/IMSService;

    .line 146
    sput-boolean v2, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 147
    sput-boolean v2, Lcom/sec/android/internal/ims/IMSService;->isImsRegistered:Z

    .line 148
    sput-boolean v2, Lcom/sec/android/internal/ims/IMSService;->isDNSQueryInProgss:Z

    .line 149
    sput-boolean v2, Lcom/sec/android/internal/ims/IMSService;->isRegAvailRecvd:Z

    .line 150
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isDNSQuerySuccess:Z

    .line 151
    sput-object v3, Lcom/sec/android/internal/ims/IMSService;->glocalIp:Ljava/lang/String;

    .line 152
    sput-boolean v2, Lcom/sec/android/internal/ims/IMSService;->SISOTest:Z

    .line 153
    sput-boolean v2, Lcom/sec/android/internal/ims/IMSService;->showWifiToast:Z

    .line 157
    sput-boolean v2, Lcom/sec/android/internal/ims/IMSService;->startUsingHiPri:Z

    .line 182
    const-string v0, "N/A"

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->mbgn:Ljava/lang/String;

    .line 186
    const-string v0, "NONE"

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->NONE:Ljava/lang/String;

    .line 187
    const-string v0, "mobile"

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->MOBILE:Ljava/lang/String;

    .line 188
    const-string v0, "LTE"

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->LTE:Ljava/lang/String;

    .line 189
    const-string v0, "UMTS"

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->UMTS:Ljava/lang/String;

    .line 190
    const-string v0, "HSPA"

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->HSPA:Ljava/lang/String;

    .line 191
    const-string v0, "WIFI"

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->WIFI:Ljava/lang/String;

    .line 192
    const-string v0, "CDMA - EvDo rev. 0"

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->EVDO_0:Ljava/lang/String;

    .line 193
    const-string v0, "CDMA - EvDo rev. A"

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->EVDO_A:Ljava/lang/String;

    .line 194
    const-string v0, "CDMA - EvDo rev. B"

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->EVDO_B:Ljava/lang/String;

    .line 195
    const-string v0, "CDMA - EHRPD"

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->eHRPD:Ljava/lang/String;

    .line 197
    sput v2, Lcom/sec/android/internal/ims/IMSService;->retryCount:I

    .line 198
    const v0, 0x2bf20

    sput v0, Lcom/sec/android/internal/ims/IMSService;->defaultRetryTime:I

    .line 199
    sget v0, Lcom/sec/android/internal/ims/IMSService;->defaultRetryTime:I

    sput v0, Lcom/sec/android/internal/ims/IMSService;->retryTime:I

    .line 215
    sget-object v0, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->NONE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 219
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->vtNotification:Landroid/app/Notification;

    .line 135
    const/16 v1, 0x6f

    iput v1, p0, Lcom/sec/android/internal/ims/IMSService;->notificationRef:I

    .line 140
    iput-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    .line 163
    iput-boolean v3, p0, Lcom/sec/android/internal/ims/IMSService;->isImsForbidden:Z

    .line 164
    iput-boolean v3, p0, Lcom/sec/android/internal/ims/IMSService;->isWifiEnabled:Z

    .line 167
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/internal/ims/IMSService;->imsCallId:I

    .line 174
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$ShutdownReceiver;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/internal/ims/IMSService$ShutdownReceiver;-><init>(Lcom/sec/android/internal/ims/IMSService;Lcom/sec/android/internal/ims/IMSService$1;)V

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mShutdownReceiver:Lcom/sec/android/internal/ims/IMSService$ShutdownReceiver;

    .line 177
    iput-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 184
    const/4 v1, 0x5

    iput v1, p0, Lcom/sec/android/internal/ims/IMSService;->mCallType:I

    .line 201
    iput-boolean v3, p0, Lcom/sec/android/internal/ims/IMSService;->isDNSRetryInProgress:Z

    .line 203
    const-string v1, "ims_volte"

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->VT_ICON_SLOT:Ljava/lang/String;

    .line 204
    iput-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 206
    iput v3, p0, Lcom/sec/android/internal/ims/IMSService;->mNetwkTypeConnected:I

    .line 322
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$1;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService$1;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->roamingAreaReceiver:Landroid/content/BroadcastReceiver;

    .line 393
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$2;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService$2;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 448
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$3;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService$3;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->batteryChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 463
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$4;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService$4;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->flightModeReceiver:Landroid/content/BroadcastReceiver;

    .line 624
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$5;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService$5;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->HiddenMenuChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 1052
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$6;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService$6;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->wifiEventReceiver:Landroid/content/BroadcastReceiver;

    .line 1671
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$8;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService$8;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->regEventReceiver:Landroid/content/BroadcastReceiver;

    .line 1694
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$9;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService$9;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 2804
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$12;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService$12;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mHandler:Landroid/os/Handler;

    .line 2996
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$14;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService$14;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->vtErrorTableUpdateListener:Landroid/content/BroadcastReceiver;

    .line 3069
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$15;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService$15;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->AlwaysOnSmsReceiveListener:Landroid/content/BroadcastReceiver;

    .line 222
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    .line 223
    invoke-static {p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->SetNativeContex(Landroid/content/Context;)V

    .line 229
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->readHiddenMenuDataFromDB()Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    .line 230
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->ImsInitHiddenMenuChangeListener(Landroid/content/Context;)V

    .line 234
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->initVTErrorTableUpdateListener(Landroid/content/Context;)V

    .line 235
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->ImsInitAlwaysOnSMSRecvListener(Landroid/content/Context;)V

    .line 240
    const-string v1, "0"

    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v2, v2, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->isRoamingAreaLGT()Z

    move-result v1

    if-nez v1, :cond_0

    .line 242
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/internal/ims/external/NativeInterface;->initImsFramework()Z

    .line 243
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 244
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    iput-object v2, v1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBuildTypeVal:Ljava/lang/String;

    .line 245
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {v1, v2}, Lcom/sec/android/internal/ims/external/NativeInterface;->setConfigParams(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->ImsSvcNwkEvtInit(Landroid/content/Context;)V

    .line 252
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->notificationManager:Landroid/app/NotificationManager;

    .line 253
    const-string v1, "statusbar"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 254
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 256
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 257
    .local v0, newFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 260
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->mShutdownReceiver:Lcom/sec/android/internal/ims/IMSService$ShutdownReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 262
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->registerForBatteryLowEvent()V

    .line 265
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->registerForFlightModeEvent()V

    .line 268
    const-string v1, "IMS/IMSService"

    const-string v2, "Inside registerForRoamingArea"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->registerForRoamingArea()V

    .line 271
    const-string v1, "stack init done"

    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method private ImsSvcEvdoInit(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 1618
    const-string v3, "IMS/IMSService"

    const-string v4, "ImsSvcEvdoInit called"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    :try_start_0
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1625
    .local v2, intentFilter:Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1626
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1627
    .local v1, intentConnectivity:Landroid/content/IntentFilter;
    const-string v3, "com.android.server.status.sip_reg_available"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1628
    const-string v3, "com.android.server.status.sip_reg_unavailable"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1630
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/internal/ims/IMSService;->regEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1632
    const-string v3, "Registered for radio events with ConnectivityManager"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1637
    .end local v1           #intentConnectivity:Landroid/content/IntentFilter;
    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    :goto_0
    const-string v3, "IMS/IMSService"

    const-string v4, "ImsSvcEvdoInit exiting"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    return-void

    .line 1633
    :catch_0
    move-exception v0

    .line 1634
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private ImsSvcWiFiMgrEvtInit(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 1032
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->wifiMgr:Landroid/net/wifi/WifiManager;

    .line 1035
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1037
    .local v0, wifi_filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->wifiMgr:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1039
    const-string v1, "IMS/IMSService"

    const-string v2, "WIFI ENABLED"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :goto_0
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1047
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1049
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->wifiEventReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1050
    return-void

    .line 1042
    :cond_0
    const-string v1, "IMS/IMSService"

    const-string v2, "WIFI DISABLED"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 118
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/internal/ims/IMSService;Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->handleNetworkStateChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    sput-boolean p0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/sec/android/internal/ims/IMSService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->handleEVDONetworkConneted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 118
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsRegistered:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/internal/ims/IMSService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->handleNetworkConnected()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/android/internal/ims/IMSService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->performDisconnectOperation()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/internal/ims/IMSService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->performConnectOperation()V

    return-void
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    .line 118
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->showWifiToast:Z

    return v0
.end method

.method static synthetic access$1602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    sput-boolean p0, Lcom/sec/android/internal/ims/IMSService;->showWifiToast:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/sec/android/internal/ims/IMSService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->stopDNSQueryRetry()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/internal/ims/IMSService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->handleLTENetworkConneted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/internal/ims/IMSService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->handleWIFINetworkConneted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 118
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->SISOTest:Z

    return v0
.end method

.method static synthetic access$2000()I
    .locals 1

    .prologue
    .line 118
    sget v0, Lcom/sec/android/internal/ims/IMSService;->retryCount:I

    return v0
.end method

.method static synthetic access$2008()I
    .locals 2

    .prologue
    .line 118
    sget v0, Lcom/sec/android/internal/ims/IMSService;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/sec/android/internal/ims/IMSService;->retryCount:I

    return v0
.end method

.method static synthetic access$2100()I
    .locals 1

    .prologue
    .line 118
    sget v0, Lcom/sec/android/internal/ims/IMSService;->retryTime:I

    return v0
.end method

.method static synthetic access$2102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    sput p0, Lcom/sec/android/internal/ims/IMSService;->retryTime:I

    return p0
.end method

.method static synthetic access$2200(Lcom/sec/android/internal/ims/IMSService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->doDNSQueryRetry()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/internal/ims/IMSService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->hasService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/internal/ims/IMSService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/internal/ims/IMSService;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->handleBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/internal/ims/IMSService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/internal/ims/IMSService;)Lcom/sec/android/internal/ims/external/HiddenMenuData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/internal/ims/IMSService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->validateIpWithRegExp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/internal/ims/IMSService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->isIpObtainedOk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doDNSQueryRetry()V
    .locals 3

    .prologue
    .line 2532
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DNSQueryRetry: Starting..mCurrentConnectedNtwrk..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    .line 2534
    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->LTE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-ne v0, v1, :cond_0

    .line 2536
    const-string v0, "MOBILE"

    invoke-direct {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->handleLTENetworkConneted(Ljava/lang/String;)V

    .line 2551
    :goto_0
    return-void

    .line 2538
    :cond_0
    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->UMTS:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-ne v0, v1, :cond_1

    .line 2540
    const-string v0, "MOBILE"

    invoke-direct {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->handleUMTSNetworkConneted(Ljava/lang/String;)V

    goto :goto_0

    .line 2542
    :cond_1
    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v1, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-ne v0, v1, :cond_2

    .line 2544
    const-string v0, "WIFI"

    invoke-direct {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->handleWIFINetworkConneted(Ljava/lang/String;)V

    goto :goto_0

    .line 2549
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sec/android/internal/ims/IMSService;
    .locals 2
    .parameter "context"

    .prologue
    .line 881
    const-class v1, Lcom/sec/android/internal/ims/IMSService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->imsService:Lcom/sec/android/internal/ims/IMSService;

    if-nez v0, :cond_0

    .line 882
    new-instance v0, Lcom/sec/android/internal/ims/IMSService;

    invoke-direct {v0, p0}, Lcom/sec/android/internal/ims/IMSService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/internal/ims/IMSService;->imsService:Lcom/sec/android/internal/ims/IMSService;

    .line 884
    :cond_0
    sget-object v0, Lcom/sec/android/internal/ims/IMSService;->imsService:Lcom/sec/android/internal/ims/IMSService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 881
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleBatteryChanged(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x1

    .line 509
    const-string v3, "IMS/IMSService"

    const-string v4, "handleBatteryChanged"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const-string v3, "status"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 512
    .local v2, battStatus:I
    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 513
    .local v1, battScale:I
    const-string v3, "level"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 515
    .local v0, battLevel:I
    const-string v3, "IMS/IMSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const-string v3, "IMS/IMSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Status ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  WARNING LEVEL = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    if-gt v0, v7, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 520
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/internal/ims/external/NativeInterface;->setBatteryState(Z)V

    .line 542
    :goto_0
    return-void

    .line 522
    :cond_0
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/internal/ims/external/NativeInterface;->setBatteryState(Z)V

    goto :goto_0
.end method

.method private handleEVDONetworkConneted(Ljava/lang/String;)V
    .locals 10
    .parameter "nwkType"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1202
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleEVDONetworkConneted nwkType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",isImsRegistered="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/sec/android/internal/ims/IMSService;->isImsRegistered:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iget-boolean v5, p0, Lcom/sec/android/internal/ims/IMSService;->isImsForbidden:Z

    if-eqz v5, :cond_0

    .line 1206
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleEVDONetworkConneted return! isImsForbidden = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sec/android/internal/ims/IMSService;->isImsForbidden:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    invoke-virtual {p0, v9}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    .line 1293
    :goto_0
    return-void

    .line 1211
    :cond_0
    const-string v5, "0"

    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v6, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->isRoamingAreaLGT()Z

    move-result v5

    if-nez v5, :cond_8

    .line 1213
    sget-boolean v5, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-nez v5, :cond_1

    .line 1215
    const-string v5, "IMS/IMSService"

    const-string v6, "===== Init IMS as INIT Flag is False...."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/external/NativeInterface;->initImsFramework()Z

    .line 1217
    sput-boolean v8, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 1218
    invoke-virtual {p0, v9}, Lcom/sec/android/internal/ims/IMSService;->setIMSRegisterState(Z)V

    .line 1222
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1224
    .local v3, localIP:Ljava/lang/String;
    sget-boolean v5, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->isLocalIpChanged(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1226
    :cond_3
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v1, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    .line 1227
    .local v1, domName:Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v5, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpVal:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1228
    .local v0, dnsFlag:I
    if-ne v0, v8, :cond_4

    .line 1230
    invoke-direct {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->validateIpWithRegExp(Ljava/lang/String;)Z

    move-result v5

    if-eq v5, v8, :cond_6

    .line 1244
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 1245
    .local v4, pcscfAddr:Ljava/net/InetAddress;
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ip address string = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/internal/ims/IMSService;->isIpObtainedOk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    .line 1248
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v6, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    iput-object v6, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    .line 1249
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/internal/ims/IMSService;->setDNSQuerySuccessState(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1269
    .end local v4           #pcscfAddr:Ljava/net/InetAddress;
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getRegAvailRecvdState()Z

    move-result v5

    if-ne v5, v8, :cond_7

    .line 1271
    const-string v5, "IMS/IMSService"

    const-string v6, "Start IMS Register"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {p0, v5}, Lcom/sec/android/internal/ims/IMSService;->updateConfigParamsToIMS(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 1273
    sput-object v3, Lcom/sec/android/internal/ims/IMSService;->glocalIp:Ljava/lang/String;

    .line 1274
    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->register(Ljava/lang/String;)V

    .line 1292
    .end local v0           #dnsFlag:I
    .end local v1           #domName:Ljava/lang/String;
    .end local v3           #localIP:Ljava/lang/String;
    :cond_5
    :goto_1
    invoke-virtual {p0, v9}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    goto/16 :goto_0

    .line 1251
    .restart local v0       #dnsFlag:I
    .restart local v1       #domName:Ljava/lang/String;
    .restart local v3       #localIP:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1253
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1254
    const-string v5, "IMS/IMSService"

    const-string v6, "DNS Query failed!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    invoke-virtual {p0, v9}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    .line 1256
    invoke-virtual {p0, v9}, Lcom/sec/android/internal/ims/IMSService;->setDNSQuerySuccessState(Z)V

    goto/16 :goto_0

    .line 1264
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_6
    const-string v5, "IMS/IMSService"

    const-string v6, "Invalid DNS name!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    invoke-virtual {p0, v9}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    goto/16 :goto_0

    .line 1279
    :cond_7
    const-string v5, "IMS/IMSService"

    const-string v6, "Received Reg_unAvailable while were in DNS query thread.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    sget-boolean v5, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v5, v8, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v5

    if-ne v5, v8, :cond_5

    .line 1282
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 1283
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    goto :goto_1

    .line 1290
    .end local v0           #dnsFlag:I
    .end local v1           #domName:Ljava/lang/String;
    .end local v3           #localIP:Ljava/lang/String;
    :cond_8
    const-string v5, "IMS/IMSService"

    const-string v6, "handleEVDONetworkConneted: AlwaysOn is off.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleLTENetworkConneted(Ljava/lang/String;)V
    .locals 11
    .parameter "nwkType"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2229
    const-string v6, "IMS/IMSService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleLTENetworkConneted nwkType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",isImsRegistered="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/sec/android/internal/ims/IMSService;->isImsRegistered:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    iget-boolean v6, p0, Lcom/sec/android/internal/ims/IMSService;->isImsForbidden:Z

    if-eqz v6, :cond_0

    .line 2233
    const-string v6, "IMS/IMSService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleLTENetworkConneted return! isImsForbidden = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/sec/android/internal/ims/IMSService;->isImsForbidden:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    invoke-virtual {p0, v10}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    .line 2340
    :goto_0
    return-void

    .line 2239
    :cond_0
    const-string v6, "IMS/IMSService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleLTENetworkConneted set Connected Network to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    const-string v6, "0"

    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v7, v7, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->isRoamingAreaLGT()Z

    move-result v6

    if-nez v6, :cond_8

    .line 2251
    const-string v6, "IMS/IMSService"

    const-string v7, "handleLTENetworkConneted:Start IMS Register"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    sget-object v6, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {p0, v6}, Lcom/sec/android/internal/ims/IMSService;->getPaccessNwkInfo(Lcom/sec/android/internal/ims/IMSService$mNtwrkType;)Ljava/lang/String;

    move-result-object v4

    .line 2253
    .local v4, pAccessNwkInfo:Ljava/lang/String;
    sget-object v6, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {p0, v6, v4, v9}, Lcom/sec/android/internal/ims/IMSService;->updateNwkStatus(Lcom/sec/android/internal/ims/IMSService$mNtwrkType;Ljava/lang/String;I)V

    .line 2254
    invoke-virtual {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2256
    .local v3, localIP:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->isLocalIpChanged(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2258
    :cond_1
    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v1, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    .line 2259
    .local v1, domName:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v6, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpVal:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2260
    .local v0, dnsFlag:I
    if-ne v0, v9, :cond_2

    .line 2262
    invoke-direct {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->validateIpWithRegExp(Ljava/lang/String;)Z

    move-result v6

    if-eq v6, v9, :cond_5

    .line 2276
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 2277
    .local v5, pcscfAddr:Ljava/net/InetAddress;
    const-string v6, "IMS/IMSService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleLTENetworkConneted:Ip address string = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {v5}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/android/internal/ims/IMSService;->isIpObtainedOk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    .line 2280
    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v7, v7, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    iput-object v7, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    .line 2281
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/internal/ims/IMSService;->setDNSQuerySuccessState(Z)V

    .line 2282
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->stopDNSQueryRetry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2304
    .end local v5           #pcscfAddr:Ljava/net/InetAddress;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getRegAvailRecvdState()Z

    move-result v6

    if-ne v6, v9, :cond_6

    .line 2306
    sget-boolean v6, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-nez v6, :cond_3

    .line 2308
    const-string v6, "IMS/IMSService"

    const-string v7, "handleLTENetworkConneted== Init IMS as INIT Flag is False...."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/internal/ims/external/NativeInterface;->initImsFramework()Z

    .line 2310
    sput-boolean v9, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 2311
    invoke-virtual {p0, v10}, Lcom/sec/android/internal/ims/IMSService;->setIMSRegisterState(Z)V

    .line 2313
    :cond_3
    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {p0, v6}, Lcom/sec/android/internal/ims/IMSService;->updateConfigParamsToIMS(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 2314
    sput-object v3, Lcom/sec/android/internal/ims/IMSService;->glocalIp:Ljava/lang/String;

    .line 2315
    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->register(Ljava/lang/String;)V

    .line 2316
    const-string v6, "mPrefCscfIp"

    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v7, v7, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/sec/android/internal/ims/IMSService;->insertSingleItemToDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    .end local v0           #dnsFlag:I
    .end local v1           #domName:Ljava/lang/String;
    .end local v3           #localIP:Ljava/lang/String;
    .end local v4           #pAccessNwkInfo:Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-virtual {p0, v10}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    goto/16 :goto_0

    .line 2284
    .restart local v0       #dnsFlag:I
    .restart local v1       #domName:Ljava/lang/String;
    .restart local v3       #localIP:Ljava/lang/String;
    .restart local v4       #pAccessNwkInfo:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2286
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2287
    const-string v6, "IMS/IMSService"

    const-string v7, "handleLTENetworkConneted:DNS Query failed!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    invoke-virtual {p0, v10}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    .line 2289
    invoke-virtual {p0, v10}, Lcom/sec/android/internal/ims/IMSService;->setDNSQuerySuccessState(Z)V

    .line 2291
    sget v6, Lcom/sec/android/internal/ims/IMSService;->retryTime:I

    int-to-long v6, v6

    invoke-direct {p0, v6, v7}, Lcom/sec/android/internal/ims/IMSService;->scheduleDNSRetryTimer(J)V

    goto/16 :goto_0

    .line 2298
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_5
    const-string v6, "IMS/IMSService"

    const-string v7, "handleLTENetworkConneted:Invalid DNS name!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    invoke-virtual {p0, v10}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    goto/16 :goto_0

    .line 2321
    :cond_6
    const-string v6, "IMS/IMSService"

    const-string v7, "handleLTENetworkConneted:Received Reg_unAvailable while were in DNS query thread.."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    sget-boolean v6, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v6, v9, :cond_7

    sget-object v6, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v7, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->LTE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-ne v6, v7, :cond_7

    .line 2324
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 2325
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 2328
    :cond_7
    sget-object v6, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->NONE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sput-object v6, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    .line 2329
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->stopDNSQueryRetry()V

    goto :goto_1

    .line 2337
    .end local v0           #dnsFlag:I
    .end local v1           #domName:Ljava/lang/String;
    .end local v3           #localIP:Ljava/lang/String;
    .end local v4           #pAccessNwkInfo:Ljava/lang/String;
    :cond_8
    const-string v6, "IMS/IMSService"

    const-string v7, "handleLTENetworkConneted: AlwaysOn is off.."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleNetworkConnected()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2044
    const-string v2, "IMS/IMSService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleNetworkConnected CurrentnwkType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isImsRegistered="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/sec/android/internal/ims/IMSService;->isImsRegistered:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    invoke-virtual {p0, v5}, Lcom/sec/android/internal/ims/IMSService;->setRegAvailRecvdState(Z)V

    .line 2048
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 2049
    .local v1, localIP:Ljava/lang/String;
    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v3, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->LTE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v3, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->UMTS:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-ne v2, v3, :cond_2

    .line 2051
    :cond_0
    const-string v2, "MOBILE"

    invoke-virtual {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2061
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getDNSQueryInProgessState()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->isLocalIpChanged(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2063
    :cond_1
    invoke-virtual {p0, v5}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    .line 2066
    :try_start_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/internal/ims/IMSService$10;

    invoke-direct {v3, p0}, Lcom/sec/android/internal/ims/IMSService$10;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2103
    :goto_1
    return-void

    .line 2053
    :cond_2
    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v3, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-ne v2, v3, :cond_3

    .line 2055
    const-string v2, "WIFI"

    invoke-virtual {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2059
    :cond_3
    const-string v2, "IMS/IMSService"

    const-string v3, "Network Type is UNKNOWN:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2089
    :catch_0
    move-exception v0

    .line 2091
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2092
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    goto :goto_1

    .line 2098
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_4
    const-string v2, "IMS/IMSService"

    const-string v3, "handleNetworkConnected:LTE Case  DNS Query is in progress "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleNetworkStateChanged(Landroid/net/NetworkInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    const/4 v5, 0x1

    .line 1297
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    .line 1298
    .local v2, nwkType:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v1

    .line 1299
    .local v1, nwkSubType:Ljava/lang/String;
    sget-object v3, Lcom/sec/android/internal/ims/IMSService$17;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1367
    :cond_0
    :goto_0
    return-void

    .line 1303
    :pswitch_0
    sget-boolean v3, Lcom/sec/android/internal/ims/IMSService;->SISOTest:Z

    if-ne v3, v5, :cond_1

    const-string v3, "WIFI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1306
    invoke-virtual {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1307
    .local v0, localIP:Ljava/lang/String;
    const-string v3, "IMS/IMSService"

    const-string v4, "===== Init IMS as INIT Flag is False...."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/internal/ims/external/NativeInterface;->initImsFramework()Z

    .line 1309
    sput-boolean v5, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 1310
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->ImsInitHiddenMenuChangeListener(Landroid/content/Context;)V

    .line 1312
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->setConfigParams()V

    .line 1313
    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->register(Ljava/lang/String;)V

    goto :goto_0

    .line 1315
    .end local v0           #localIP:Ljava/lang/String;
    :cond_1
    const-string v3, "MOBILE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1317
    invoke-direct {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->handleEVDONetworkConneted(Ljava/lang/String;)V

    goto :goto_0

    .line 1324
    :pswitch_1
    const-string v3, "MOBILE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1327
    sget-boolean v3, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v3, v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v3

    if-ne v3, v5, :cond_2

    .line 1329
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 1330
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 1354
    :cond_2
    sget-boolean v3, Lcom/sec/android/internal/ims/IMSService;->SISOTest:Z

    if-ne v3, v5, :cond_0

    const-string v3, "WIFI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1356
    sget-boolean v3, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v3, v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v3

    if-ne v3, v5, :cond_0

    .line 1358
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 1359
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    goto :goto_0

    .line 1299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private handleRegAvailEvent()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1642
    const-string v2, "IMS/IMSService"

    const-string v3, "handleRegAvailEvent: Enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    invoke-virtual {p0, v4}, Lcom/sec/android/internal/ims/IMSService;->setRegAvailRecvdState(Z)V

    .line 1645
    const-string v2, "MOBILE"

    invoke-virtual {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1647
    .local v1, localIP:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getDNSQueryInProgessState()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->isLocalIpChanged(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1649
    :cond_0
    invoke-virtual {p0, v4}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    .line 1651
    :try_start_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sec/android/internal/ims/IMSService$7;

    invoke-direct {v3, p0}, Lcom/sec/android/internal/ims/IMSService$7;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1668
    :goto_0
    return-void

    .line 1658
    :catch_0
    move-exception v0

    .line 1659
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1660
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    goto :goto_0

    .line 1666
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    const-string v2, "IMS/IMSService"

    const-string v3, "handleRegAvailEvent:  DNS Query is in progress "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleUMTSNetworkConneted(Ljava/lang/String;)V
    .locals 11
    .parameter "nwkType"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2110
    const-string v6, "IMS/IMSService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleUMTSNetworkConneted nwkType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",isImsRegistered="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-boolean v8, Lcom/sec/android/internal/ims/IMSService;->isImsRegistered:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    iget-boolean v6, p0, Lcom/sec/android/internal/ims/IMSService;->isImsForbidden:Z

    if-eqz v6, :cond_0

    .line 2114
    const-string v6, "IMS/IMSService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleUMTSNetworkConneted return! isImsForbidden = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/sec/android/internal/ims/IMSService;->isImsForbidden:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2115
    invoke-virtual {p0, v10}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    .line 2222
    :goto_0
    return-void

    .line 2120
    :cond_0
    const-string v6, "IMS/IMSService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleUMTSNetworkConneted set Connected Network to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    const-string v6, "0"

    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v7, v7, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->isRoamingAreaLGT()Z

    move-result v6

    if-nez v6, :cond_8

    .line 2132
    const-string v6, "IMS/IMSService"

    const-string v7, "handleUMTSNetworkConneted:Start IMS Register"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    sget-object v6, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {p0, v6}, Lcom/sec/android/internal/ims/IMSService;->getPaccessNwkInfo(Lcom/sec/android/internal/ims/IMSService$mNtwrkType;)Ljava/lang/String;

    move-result-object v4

    .line 2134
    .local v4, pAccessNwkInfo:Ljava/lang/String;
    sget-object v6, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {p0, v6, v4, v9}, Lcom/sec/android/internal/ims/IMSService;->updateNwkStatus(Lcom/sec/android/internal/ims/IMSService$mNtwrkType;Ljava/lang/String;I)V

    .line 2136
    invoke-virtual {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2138
    .local v3, localIP:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->isLocalIpChanged(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2140
    :cond_1
    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v1, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    .line 2141
    .local v1, domName:Ljava/lang/String;
    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v6, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpVal:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2142
    .local v0, dnsFlag:I
    if-ne v0, v9, :cond_2

    .line 2144
    invoke-direct {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->validateIpWithRegExp(Ljava/lang/String;)Z

    move-result v6

    if-eq v6, v9, :cond_5

    .line 2158
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    .line 2159
    .local v5, pcscfAddr:Ljava/net/InetAddress;
    const-string v6, "IMS/IMSService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleUMTSNetworkConneted:Ip address string = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {v5}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/android/internal/ims/IMSService;->isIpObtainedOk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    .line 2162
    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v7, v7, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    iput-object v7, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    .line 2163
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/sec/android/internal/ims/IMSService;->setDNSQuerySuccessState(Z)V

    .line 2164
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->stopDNSQueryRetry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2187
    .end local v5           #pcscfAddr:Ljava/net/InetAddress;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getRegAvailRecvdState()Z

    move-result v6

    if-ne v6, v9, :cond_6

    .line 2189
    sget-boolean v6, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-nez v6, :cond_3

    .line 2191
    const-string v6, "IMS/IMSService"

    const-string v7, "handleUMTSNetworkConneted:== Init IMS as INIT Flag is False...."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/internal/ims/external/NativeInterface;->initImsFramework()Z

    .line 2193
    sput-boolean v9, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 2194
    invoke-virtual {p0, v10}, Lcom/sec/android/internal/ims/IMSService;->setIMSRegisterState(Z)V

    .line 2196
    :cond_3
    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {p0, v6}, Lcom/sec/android/internal/ims/IMSService;->updateConfigParamsToIMS(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 2197
    sput-object v3, Lcom/sec/android/internal/ims/IMSService;->glocalIp:Ljava/lang/String;

    .line 2198
    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->register(Ljava/lang/String;)V

    .line 2199
    const-string v6, "mPrefCscfIp"

    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v7, v7, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/sec/android/internal/ims/IMSService;->insertSingleItemToDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    .end local v0           #dnsFlag:I
    .end local v1           #domName:Ljava/lang/String;
    .end local v3           #localIP:Ljava/lang/String;
    .end local v4           #pAccessNwkInfo:Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-virtual {p0, v10}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    goto/16 :goto_0

    .line 2166
    .restart local v0       #dnsFlag:I
    .restart local v1       #domName:Ljava/lang/String;
    .restart local v3       #localIP:Ljava/lang/String;
    .restart local v4       #pAccessNwkInfo:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2168
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2169
    const-string v6, "IMS/IMSService"

    const-string v7, "handleUMTSNetworkConneted:DNS Query failed!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    invoke-virtual {p0, v10}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    .line 2171
    invoke-virtual {p0, v10}, Lcom/sec/android/internal/ims/IMSService;->setDNSQuerySuccessState(Z)V

    .line 2172
    const-string v6, "IMS/IMSService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleUMTSNetworkConneted:DNS Query failed!!!!...retryTime"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/internal/ims/IMSService;->retryTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2173
    sget v6, Lcom/sec/android/internal/ims/IMSService;->retryTime:I

    int-to-long v6, v6

    invoke-direct {p0, v6, v7}, Lcom/sec/android/internal/ims/IMSService;->scheduleDNSRetryTimer(J)V

    goto/16 :goto_0

    .line 2181
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_5
    const-string v6, "IMS/IMSService"

    const-string v7, "handleUMTSNetworkConneted:Invalid DNS name!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    invoke-virtual {p0, v10}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    goto/16 :goto_0

    .line 2204
    :cond_6
    const-string v6, "IMS/IMSService"

    const-string v7, "handleUMTSNetworkConneted :Received Reg_unAvailable while were in DNS query thread.."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    sget-boolean v6, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v6, v9, :cond_7

    sget-object v6, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v7, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->UMTS:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-ne v6, v7, :cond_7

    .line 2207
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 2208
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 2210
    :cond_7
    sget-object v6, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->NONE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sput-object v6, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    .line 2211
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->stopDNSQueryRetry()V

    goto :goto_1

    .line 2219
    .end local v0           #dnsFlag:I
    .end local v1           #domName:Ljava/lang/String;
    .end local v3           #localIP:Ljava/lang/String;
    .end local v4           #pAccessNwkInfo:Ljava/lang/String;
    :cond_8
    const-string v6, "IMS/IMSService"

    const-string v7, "handleUMTSNetworkConneted: AlwaysOn is off.."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleWIFINetworkConneted(Ljava/lang/String;)V
    .locals 10
    .parameter "nwkType"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2350
    iget-boolean v5, p0, Lcom/sec/android/internal/ims/IMSService;->isImsForbidden:Z

    if-eqz v5, :cond_0

    .line 2352
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleWIFINetworkConneted return! isImsForbidden = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/sec/android/internal/ims/IMSService;->isImsForbidden:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2353
    invoke-virtual {p0, v8}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    .line 2459
    :goto_0
    return-void

    .line 2358
    :cond_0
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleWIFINetworkConneted...WIFI CONNECTED.. Connected Network is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    const-string v5, "0"

    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v6, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->isRoamingAreaLGT()Z

    move-result v5

    if-nez v5, :cond_8

    .line 2368
    const-string v5, "IMS/IMSService"

    const-string v6, "mReceiver handleNetworkStateChanged for WiFi:Start IMS Register"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    invoke-virtual {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2372
    .local v3, localIP:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->isLocalIpChanged(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2374
    :cond_1
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v1, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsforWiFiVal:Ljava/lang/String;

    .line 2375
    .local v1, domName:Ljava/lang/String;
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleNetworkStateChanged...domName...."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v5, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpforWiFiVal:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2377
    .local v0, dnsFlag:I
    if-ne v0, v9, :cond_2

    .line 2379
    invoke-direct {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->validateIpWithRegExp(Ljava/lang/String;)Z

    move-result v5

    if-eq v5, v9, :cond_5

    .line 2393
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 2394
    .local v4, pcscfAddr:Ljava/net/InetAddress;
    const-string v5, "IMS/IMSService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleNetworkStateChanged for WiFi:Ip address string = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sec/android/internal/ims/IMSService;->isIpObtainedOk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    .line 2397
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v6, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    iput-object v6, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsforWiFiVal:Ljava/lang/String;

    .line 2398
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sec/android/internal/ims/IMSService;->setDNSQuerySuccessState(Z)V

    .line 2399
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->stopDNSQueryRetry()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2423
    .end local v4           #pcscfAddr:Ljava/net/InetAddress;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getRegAvailRecvdState()Z

    move-result v5

    if-ne v5, v9, :cond_6

    .line 2425
    sget-boolean v5, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-nez v5, :cond_3

    .line 2427
    const-string v5, "IMS/IMSService"

    const-string v6, "mReceiver handleNetworkStateChanged for WiFi== Init IMS as INIT Flag is False...."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/sec/android/internal/ims/IMSService;->ImsInitHiddenMenuChangeListener(Landroid/content/Context;)V

    .line 2429
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/external/NativeInterface;->initImsFramework()Z

    .line 2430
    sput-boolean v9, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 2431
    invoke-virtual {p0, v8}, Lcom/sec/android/internal/ims/IMSService;->setIMSRegisterState(Z)V

    .line 2433
    :cond_3
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {p0, v5}, Lcom/sec/android/internal/ims/IMSService;->updateConfigParamsToIMS(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 2434
    sput-object v3, Lcom/sec/android/internal/ims/IMSService;->glocalIp:Ljava/lang/String;

    .line 2435
    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->register(Ljava/lang/String;)V

    .line 2436
    const-string v5, "mPrefCscfIp"

    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v6, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/sec/android/internal/ims/IMSService;->insertSingleItemToDB(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    .end local v0           #dnsFlag:I
    .end local v1           #domName:Ljava/lang/String;
    .end local v3           #localIP:Ljava/lang/String;
    :cond_4
    :goto_1
    invoke-virtual {p0, v8}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    goto/16 :goto_0

    .line 2401
    .restart local v0       #dnsFlag:I
    .restart local v1       #domName:Ljava/lang/String;
    .restart local v3       #localIP:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 2403
    .local v2, ex:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2404
    const-string v5, "IMS/IMSService"

    const-string v6, "handleNetworkStateChanged for WiFi:DNS Query failed!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2405
    invoke-virtual {p0, v8}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    .line 2406
    invoke-virtual {p0, v8}, Lcom/sec/android/internal/ims/IMSService;->setDNSQuerySuccessState(Z)V

    .line 2407
    sget v5, Lcom/sec/android/internal/ims/IMSService;->retryTime:I

    int-to-long v5, v5

    invoke-direct {p0, v5, v6}, Lcom/sec/android/internal/ims/IMSService;->scheduleDNSRetryTimer(J)V

    goto/16 :goto_0

    .line 2417
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_5
    const-string v5, "IMS/IMSService"

    const-string v6, "handleNetworkStateChanged for WiFi:Invalid DNS name!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    invoke-virtual {p0, v8}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    goto/16 :goto_0

    .line 2441
    :cond_6
    const-string v5, "IMS/IMSService"

    const-string v6, "handleWIFINetworkConneted:Received Reg_unAvailable while were in DNS query thread.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    sget-boolean v5, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v5, v9, :cond_7

    sget-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v6, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->WIFI:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-ne v5, v6, :cond_7

    .line 2444
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 2445
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 2447
    :cond_7
    sget-object v5, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->NONE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sput-object v5, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    .line 2448
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->stopDNSQueryRetry()V

    goto :goto_1

    .line 2456
    .end local v0           #dnsFlag:I
    .end local v1           #domName:Ljava/lang/String;
    .end local v3           #localIP:Ljava/lang/String;
    :cond_8
    const-string v5, "IMS/IMSService"

    const-string v6, "handleLTENetworkConneted: AlwaysOn is off.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private hasService()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 378
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 384
    :pswitch_0
    const/4 v0, 0x1

    .line 387
    :cond_0
    :pswitch_1
    return v0

    .line 379
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static init1()V
    .locals 2

    .prologue
    .line 992
    new-instance v0, Lcom/sec/android/internal/ims/IMSDaemonThread;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/IMSDaemonThread;-><init>()V

    .line 993
    .local v0, th:Ljava/lang/Thread;
    const-string v1, "com.sec.android.ims.IMSDaemonThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 994
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 995
    return-void
.end method

.method public static init2()V
    .locals 1

    .prologue
    .line 998
    const-string v0, "Enter init2"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1003
    const-string v0, "Exit init2"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1004
    return-void
.end method

.method private initContext()V
    .locals 3

    .prologue
    .line 1008
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1009
    .local v0, at:Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1012
    return-void
.end method

.method private insertSingleItemToDB(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "item"
    .parameter "value"

    .prologue
    .line 2796
    new-instance v0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;-><init>()V

    .line 2797
    .local v0, dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2798
    .local v1, r1:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 2803
    :cond_0
    :goto_0
    return-void

    .line 2802
    :cond_1
    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->insertSingleItemToDB(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)I

    goto :goto_0
.end method

.method private isEvdo()Z
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isIpObtainedOk(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "ipAddr"

    .prologue
    .line 1183
    move-object v1, p1

    .line 1184
    .local v1, sIpAddr:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1185
    .local v2, sNewIpAddr:Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1186
    .local v0, index:I
    const-string v3, "eng"

    sget-object v4, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1187
    const-string v3, "IMS/IMSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isIpObtainedOk() : Index =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :cond_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 1192
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 1193
    move-object v1, v2

    .line 1195
    :cond_1
    return-object v1
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1602
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1603
    const-string v0, "IMS/IMSService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    :cond_0
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .parameter "args"

    .prologue
    .line 1609
    const-string v0, "Enter main"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1610
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->initProc()V

    .line 1611
    const-string v0, "Exit main"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 1612
    return-void
.end method

.method private performConnectOperation()V
    .locals 4

    .prologue
    .line 3287
    const-string v1, "IMS/IMSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performConnectOperation Connected to Network..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    const-string v1, "IMS/IMSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "performConnectOperation getRegAvailRecvdState ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getRegAvailRecvdState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getRegAvailRecvdState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3292
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    .line 3295
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/internal/ims/IMSService$16;

    invoke-direct {v2, p0}, Lcom/sec/android/internal/ims/IMSService$16;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3328
    :cond_0
    :goto_0
    return-void

    .line 3321
    :catch_0
    move-exception v0

    .line 3323
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3324
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryInProgessState(Z)V

    goto :goto_0
.end method

.method private performDisconnectOperation()V
    .locals 3

    .prologue
    .line 3279
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performDisconnectOperation Connected to Network..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3281
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 3282
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 3283
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->stopDNSQueryRetry()V

    .line 3284
    return-void
.end method

.method private registerForBatteryLowEvent()V
    .locals 3

    .prologue
    .line 546
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 547
    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 548
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 549
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->batteryChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 550
    return-void
.end method

.method private registerForFlightModeEvent()V
    .locals 3

    .prologue
    .line 554
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 555
    .local v0, intentFilterFlight:Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.internal.ims.FLIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 556
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->flightModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 557
    return-void
.end method

.method private registerForRoamingArea()V
    .locals 3

    .prologue
    .line 316
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 317
    .local v0, intentFilterRoaming:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->roamingAreaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 319
    return-void
.end method

.method private scheduleDNSRetryTimer(J)V
    .locals 5
    .parameter "time"

    .prologue
    .line 2476
    const-string v2, "IMS/IMSService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scheduleDNSRetryTimer: .. after time.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "retry count.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/sec/android/internal/ims/IMSService;->retryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    sget v2, Lcom/sec/android/internal/ims/IMSService;->retryCount:I

    if-nez v2, :cond_0

    .line 2478
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    iput-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->mTimer:Ljava/util/Timer;

    .line 2481
    :cond_0
    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->mTimer:Ljava/util/Timer;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    sget-object v3, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->NONE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    if-eq v2, v3, :cond_1

    .line 2483
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryRetryState(Z)V

    .line 2484
    new-instance v1, Lcom/sec/android/internal/ims/IMSService$11;

    invoke-direct {v1, p0}, Lcom/sec/android/internal/ims/IMSService$11;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    .line 2518
    .local v1, mTimerTask:Ljava/util/TimerTask;
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v2, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2529
    .end local v1           #mTimerTask:Ljava/util/TimerTask;
    :goto_0
    return-void

    .line 2520
    .restart local v1       #mTimerTask:Ljava/util/TimerTask;
    :catch_0
    move-exception v0

    .line 2522
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2527
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #mTimerTask:Ljava/util/TimerTask;
    :cond_1
    const-string v2, "IMS/IMSService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scheduleDNSRetryTimer: networkType is NONE: Dont do DNS Retry"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/android/internal/ims/IMSService;->mCurrentConnectedNtwrk:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showRegisterIcon(ILjava/lang/String;)V
    .locals 3
    .parameter "iconId"
    .parameter "text"

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->VT_ICON_SLOT:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 1172
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mStatusBarManager:Landroid/app/StatusBarManager;

    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->VT_ICON_SLOT:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1178
    :goto_0
    return-void

    .line 1176
    :cond_0
    const-string v0, "IMS/IMSService"

    const-string v1, "showRegisterIcon failed as StatusBarManager is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized stopDNSQueryRetry()V
    .locals 2

    .prologue
    .line 2463
    monitor-enter p0

    :try_start_0
    const-string v0, "IMS/IMSService"

    const-string v1, "stopDNSQueryRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getDNSQueryRetryState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2467
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2468
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2469
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->setDNSQueryRetryState(Z)V

    .line 2470
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/internal/ims/IMSService;->retryCount:I

    .line 2471
    sget v0, Lcom/sec/android/internal/ims/IMSService;->defaultRetryTime:I

    sput v0, Lcom/sec/android/internal/ims/IMSService;->retryTime:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2473
    :cond_0
    monitor-exit p0

    return-void

    .line 2463
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private validateIpWithRegExp(Ljava/lang/String;)Z
    .locals 2
    .parameter "iPaddress"

    .prologue
    .line 873
    const-string v1, "b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?).){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)b"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 876
    .local v0, IP_PATTERN:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method


# virtual methods
.method public DisableWifi()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1015
    sget-boolean v1, Lcom/sec/android/internal/ims/IMSService;->SISOTest:Z

    if-nez v1, :cond_0

    .line 1017
    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1018
    .local v0, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-ne v3, v1, :cond_0

    .line 1020
    const-string v1, "IMS/IMSService"

    const-string v2, "makeCall : Disable Wifi Forcefully"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1022
    iput-boolean v3, p0, Lcom/sec/android/internal/ims/IMSService;->isWifiEnabled:Z

    .line 1025
    .end local v0           #mWifiManager:Landroid/net/wifi/WifiManager;
    :cond_0
    return-void
.end method

.method public ImsInitAlwaysOnSMSRecvListener(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 3056
    const-string v0, "ImsInitAlwaysOnSMSRecvListener"

    .line 3057
    .local v0, FN_TAG:Ljava/lang/String;
    const-string v2, "FN_TAG Entering ---"

    invoke-static {v2}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3059
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 3060
    .local v1, sms_recv_filter:Landroid/content/IntentFilter;
    if-eqz v1, :cond_0

    .line 3062
    const-string v2, "com.android.receiver.action.ALWAYS_ON_STATUS_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3063
    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->AlwaysOnSmsReceiveListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3065
    :cond_0
    const-string v2, "FN_TAG Exiting ---"

    invoke-static {v2}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3066
    return-void
.end method

.method public ImsInitHiddenMenuChangeListener(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 614
    const-string v0, "Inside ImsInitHiddenMenuChangeListener"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 616
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->hiddenMenu_filter:Landroid/content/IntentFilter;

    .line 617
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->hiddenMenu_filter:Landroid/content/IntentFilter;

    const-string v1, "com.android.receiver.activities.PREFERENCE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->HiddenMenuChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->hiddenMenu_filter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 621
    const-string v0, "Broadcast Reciever registered"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 622
    return-void
.end method

.method public ImsSvcNwkEvtInit(Landroid/content/Context;)V
    .locals 3
    .parameter "mContext"

    .prologue
    .line 562
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->SISOTest:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 565
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->ImsSvcWiFiMgrEvtInit(Landroid/content/Context;)V

    .line 578
    :goto_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x141

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 584
    return-void

    .line 570
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/internal/ims/IMSService;->ImsSvcEvdoInit(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public ResetPreviewDisplay()V
    .locals 2

    .prologue
    .line 1412
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside ResetPreviewDisplay :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->resetPreviewDisplay()V

    .line 1414
    return-void
.end method

.method public SetCameraParams(II)V
    .locals 4
    .parameter "param"
    .parameter "value"

    .prologue
    .line 1509
    sget-boolean v2, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1511
    move v0, p1

    .line 1512
    .local v0, mParam:I
    move v1, p2

    .line 1521
    .local v1, mValue:I
    const-string v2, "IMS/IMSService"

    const-string v3, "This is inside SetCameraParams : "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->setCameraParam(II)V

    .line 1524
    .end local v0           #mParam:I
    .end local v1           #mValue:I
    :cond_0
    return-void
.end method

.method public SetIMSOrientationValue(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1492
    sget-boolean v1, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1494
    move v0, p1

    .line 1503
    .local v0, mValue:I
    const-string v1, "IMS/IMSService"

    const-string v2, "This is inside SetIMSOrientationValue : "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->setIMSOrientation(I)V

    .line 1506
    .end local v0           #mValue:I
    :cond_0
    return-void
.end method

.method public StartVTCall(Z)V
    .locals 0
    .parameter "callType"

    .prologue
    .line 1485
    return-void
.end method

.method public StopVTCall()V
    .locals 0

    .prologue
    .line 1488
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->ResetPreviewDisplay()V

    .line 1489
    return-void
.end method

.method public acceptCall(III)V
    .locals 2
    .parameter "callId"
    .parameter "acceptType"
    .parameter "callType"

    .prologue
    .line 1475
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1477
    iput p1, p0, Lcom/sec/android/internal/ims/IMSService;->mCallId:I

    .line 1478
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside acceptCall : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/internal/ims/external/NativeInterface;->acceptVoipCall(III)Z

    .line 1481
    :cond_0
    return-void
.end method

.method public addVTNotification()V
    .locals 2

    .prologue
    .line 1155
    const-string v0, "IMS/IMSService"

    const-string v1, "Set VT Notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    const v0, 0x1080a28

    const-string v1, "IMS Registered"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/internal/ims/IMSService;->showRegisterIcon(ILjava/lang/String;)V

    .line 1157
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/internal/ims/IMSService;->showWifiToast:Z

    .line 1158
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->setIMSRegisterState(Z)V

    .line 1159
    return-void
.end method

.method public addVideoEventListener(Landroid/os/Handler;)V
    .locals 0
    .parameter "VTHandler"

    .prologue
    .line 3251
    invoke-static {p1}, Lcom/android/internal/telephony/ims/IMSInterface;->registerVideoEventListener(Landroid/os/Handler;)V

    .line 3252
    return-void
.end method

.method public broadcastEvent(IIIILjava/lang/String;)V
    .locals 7
    .parameter "appType"
    .parameter "eventType"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    .line 959
    const-string v0, "Entry broadcasting event to all IMS Apps"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ims listner  ankit..  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/internal/ims/IMSService;->imsListener:Lcom/sec/android/ims/IMSEventListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 975
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->imsListener:Lcom/sec/android/ims/IMSEventListener;

    if-nez p5, :cond_0

    move-object v5, v6

    :goto_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/ims/IMSEventListener;->handleEvent(IIII[BLcom/sec/android/internal/ims/IIMSParams;)V

    .line 977
    const-string v0, "Exit broadcasting event to all IMS Apps"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 978
    return-void

    .line 975
    :cond_0
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    goto :goto_0
.end method

.method public cancelVTNotification()V
    .locals 2

    .prologue
    .line 1163
    const-string v0, "IMS/IMSService"

    const-string v1, "Cancel VT Notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    const v0, 0x1080a29

    const-string v1, "IMS Not Registered"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/internal/ims/IMSService;->showRegisterIcon(ILjava/lang/String;)V

    .line 1165
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->setIMSRegisterState(Z)V

    .line 1166
    return-void
.end method

.method public captureImage(Ljava/lang/String;II)V
    .locals 2
    .parameter "filePath"
    .parameter "imageFormat"
    .parameter "frameType"

    .prologue
    .line 1538
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1540
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside captureImage : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/internal/ims/external/NativeInterface;->captureImage(Ljava/lang/String;II)V

    .line 1544
    :cond_0
    return-void
.end method

.method public captureIncomingVideoFrame(Ljava/lang/String;I)V
    .locals 2
    .parameter "fullPath"
    .parameter "val"

    .prologue
    .line 1527
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside captureIncomingVideoFrame : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    return-void
.end method

.method public captureOutgoingVideoFrame(Ljava/lang/String;I)V
    .locals 2
    .parameter "fullPath"
    .parameter "val"

    .prologue
    .line 1532
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside captureOutgoingVideoFrame : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    return-void
.end method

.method public deRegisterImsOnFlightModeEnabled()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1390
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getIMSRegisterState()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1392
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkLossEvt()Z

    .line 1393
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 1400
    :cond_0
    return-void
.end method

.method public endCall(I)V
    .locals 2
    .parameter "callId"

    .prologue
    .line 1464
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1466
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1467
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/internal/ims/IMSService;->mCallId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/internal/ims/external/NativeInterface;->disconnectVoipCall(I)Z

    .line 1472
    :cond_0
    :goto_0
    return-void

    .line 1469
    :cond_1
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->disconnectVoipCall(I)Z

    goto :goto_0
.end method

.method public getCurrentConnectedNetwrk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 889
    const-string v0, "getCurrentConnectedNetwrk.."

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 890
    const-string v0, ""

    return-object v0
.end method

.method public declared-synchronized getDNSQueryInProgessState()Z
    .locals 1

    .prologue
    .line 3199
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isDNSQueryInProgss:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDNSQueryRetryState()Z
    .locals 3

    .prologue
    .line 3239
    monitor-enter p0

    :try_start_0
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDNSRetryInProgress..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/internal/ims/IMSService;->isDNSRetryInProgress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    iget-boolean v0, p0, Lcom/sec/android/internal/ims/IMSService;->isDNSRetryInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 3239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDNSQuerySuccessState()Z
    .locals 1

    .prologue
    .line 3229
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isDNSQuerySuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIMSRegisterState()Z
    .locals 1

    .prologue
    .line 3189
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "nwkType"

    .prologue
    .line 2945
    const/4 v5, 0x0

    .line 2946
    .local v5, nwkIntfName:Ljava/lang/String;
    const-string v6, "WIFI"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2947
    const-string v5, "wlan0"

    .line 2952
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 2953
    .local v0, en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_1
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2954
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 2956
    .local v4, intf:Ljava/net/NetworkInterface;
    const-string v6, "IMS/IMSService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "++++++++++++NetworkInterface :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .local v1, enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2958
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 2959
    .local v3, inetAddress:Ljava/net/InetAddress;
    const-string v6, "eng"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2960
    const-string v6, "IMS/IMSService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "++++++++++inetAddress :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    :cond_3
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2964
    const-string v6, "eng"

    sget-object v7, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2965
    const-string v6, "IMS/IMSService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "++++++++++inetAddress IP:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    :cond_4
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2968
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2979
    .end local v0           #en:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    .end local v1           #enumIpAddr:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3           #inetAddress:Ljava/net/InetAddress;
    .end local v4           #intf:Ljava/net/NetworkInterface;
    :goto_1
    return-object v6

    .line 2948
    :cond_5
    const-string v6, "MOBILE"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "MOBILE_HIPRI"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2949
    :cond_6
    const-string v5, "rmnet0"

    goto/16 :goto_0

    .line 2976
    :catch_0
    move-exception v2

    .line 2977
    .local v2, ex:Ljava/net/SocketException;
    const-string v6, "IMS/IMSService"

    invoke-virtual {v2}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    .end local v2           #ex:Ljava/net/SocketException;
    :cond_7
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public getPaccessNwkInfo(Lcom/sec/android/internal/ims/IMSService$mNtwrkType;)Ljava/lang/String;
    .locals 22
    .parameter "networkType"

    .prologue
    .line 2556
    const-string v17, "Inside getPaccessNwkInfo"

    invoke-static/range {v17 .. v17}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 2557
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "networkType = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 2559
    sget-object v17, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->NONE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 2560
    const-string v17, "Inside getPaccessNwkInfo, Network type is none,so returning"

    invoke-static/range {v17 .. v17}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 2561
    const/4 v14, 0x0

    .line 2682
    :goto_0
    return-object v14

    .line 2564
    :cond_0
    const/4 v7, 0x0

    .line 2565
    .local v7, currentChannel:I
    const/4 v8, 0x0

    .line 2566
    .local v8, currentFrequency:I
    const/4 v12, 0x0

    .line 2567
    .local v12, mnc:I
    const/4 v11, 0x0

    .line 2568
    .local v11, mcc:I
    const/4 v6, 0x0

    .line 2569
    .local v6, cellid:I
    const/4 v10, 0x0

    .line 2570
    .local v10, lac:I
    const/4 v2, 0x0

    .line 2571
    .local v2, cell_id_msc:I
    const/4 v4, 0x0

    .line 2572
    .local v4, cell_id_rnc:I
    const/4 v3, 0x0

    .line 2573
    .local v3, cell_id_nodeb:I
    const/4 v5, 0x0

    .line 2574
    .local v5, cell_id_sector:I
    const/4 v14, 0x0

    .line 2576
    .local v14, pAccessNwkInfo:Ljava/lang/String;
    sget-object v17, Lcom/sec/android/internal/ims/IMSService$17;->$SwitchMap$com$sec$android$internal$ims$IMSService$mNtwrkType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 2679
    const-string v17, "NONE"

    invoke-static/range {v17 .. v17}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 2681
    :cond_1
    :goto_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "pAccessNwkInfo = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2581
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    .line 2583
    const-string v17, "mContext is null returning"

    invoke-static/range {v17 .. v17}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 2584
    const/4 v14, 0x0

    goto :goto_0

    .line 2586
    :cond_2
    const-string v17, "valid mContext"

    invoke-static/range {v17 .. v17}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 2588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "phone"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/telephony/TelephonyManager;

    .line 2589
    .local v15, phone:Landroid/telephony/TelephonyManager;
    if-eqz v15, :cond_1

    .line 2590
    const-string v17, "IMS/IMSService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Phone getphonetype:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 2592
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v9

    check-cast v9, Landroid/telephony/gsm/GsmCellLocation;

    .line 2593
    .local v9, gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v9, :cond_1

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 2594
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_3

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_3

    .line 2595
    const-string v17, "IMS/IMSService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "phone.getNetworkOperator().substring(0,3) ="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x3

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    const-string v17, "IMS/IMSService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "phone.getNetworkOperator().substring(3)"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x3

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2601
    :cond_3
    invoke-virtual {v9}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v10

    .line 2602
    invoke-virtual {v9}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v6

    .line 2603
    const-string v17, "IMS/IMSService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "LAC value = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    const-string v17, "IMS/IMSService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Cell-Id value = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    sget-object v17, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->LTE:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_4

    .line 2608
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "3GPP-E-UTRAN;utran-cell-id-3gpp="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2609
    const-string v17, "IMS/IMSService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "pAccessNwkInfo for LTE case "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2611
    :cond_4
    sget-object v17, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->UMTS:Lcom/sec/android/internal/ims/IMSService$mNtwrkType;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    .line 2613
    const/high16 v17, 0xfe0

    and-int v17, v17, v6

    shr-int/lit8 v2, v17, 0x15

    .line 2614
    const/high16 v17, 0x1f

    and-int v17, v17, v6

    shr-int/lit8 v4, v17, 0x10

    .line 2615
    const v17, 0xff00

    and-int v17, v17, v6

    shr-int/lit8 v3, v17, 0x8

    .line 2616
    and-int/lit16 v0, v6, 0xf0

    move/from16 v17, v0

    shr-int/lit8 v5, v17, 0x4

    .line 2617
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "3GPP-UTRAN;utran-cell-id-3gpp="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2618
    const-string v17, "IMS/IMSService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "pAccessNwkInfo for UMTS case "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2622
    .end local v9           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :cond_5
    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v17

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 2625
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/internal/ims/IMSService;->readHiddenMenuDataFromDB()Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v13

    .line 2626
    .local v13, myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    if-eqz v13, :cond_1

    .line 2628
    iget-object v14, v13, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAccessNwInfoVal:Ljava/lang/String;

    .line 2629
    const-string v17, "IMS/IMSService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "pAccessNwkInfo for Phone Type IMS "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2641
    .end local v13           #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    .end local v15           #phone:Landroid/telephony/TelephonyManager;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/internal/ims/IMSService;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v16

    .line 2666
    .local v16, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v17, "1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAutoTestVal:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2667
    const-string v14, "3GPP-E-UTRAN;utran-cell-id-3gpp=4500527089c403"

    .line 2675
    :goto_2
    const-string v17, "IMS/IMSService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "pAccessNwkInfo for WiFi case "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2670
    :cond_6
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "3GPP-WLAN;i-wlan-node-id="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_2

    .line 2576
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized getRegAvailRecvdState()Z
    .locals 1

    .prologue
    .line 3219
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isRegAvailRecvd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStartUsingHiPriState()Z
    .locals 1

    .prologue
    .line 3214
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->startUsingHiPri:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSvcState()I
    .locals 1

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    return v0
.end method

.method public handleAlwaysOnChangefromSMS(Z)Z
    .locals 7
    .parameter "isAlwaysOn"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3108
    new-instance v0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;-><init>()V

    .line 3109
    .local v0, hOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    if-nez v0, :cond_0

    .line 3184
    :goto_0
    return v3

    .line 3112
    :cond_0
    if-ne p1, v4, :cond_4

    .line 3114
    const-string v3, "0"

    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v5, v5, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3119
    sget-boolean v3, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->isRoamingAreaLGT()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3121
    const-string v3, "Initing IMS after change from Cancel to Setup"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3123
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/internal/ims/external/NativeInterface;->initImsFramework()Z

    .line 3124
    sput-boolean v4, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 3125
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->updateConfigParamsToIMS(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 3127
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    .line 3129
    .local v2, nwkTypeName:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Telephony Manager Network Type = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3130
    const-string v3, "CDMA - EvDo rev. A"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3133
    const-string v3, "registering after enabling in hidden app"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3134
    const-string v3, "MOBILE"

    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->getLocalIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3135
    .local v1, localIP:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 3137
    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->register(Ljava/lang/String;)V

    .line 3138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "local IP = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 3149
    .end local v1           #localIP:Ljava/lang/String;
    .end local v2           #nwkTypeName:Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    const-string v5, "1"

    iput-object v5, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    .line 3152
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/HiddenMenuData;Landroid/content/ContentResolver;)Landroid/net/Uri;

    :cond_2
    :goto_2
    move v3, v4

    .line 3184
    goto/16 :goto_0

    .line 3142
    .restart local v1       #localIP:Ljava/lang/String;
    .restart local v2       #nwkTypeName:Ljava/lang/String;
    :cond_3
    const-string v3, "local IP = null"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3162
    .end local v1           #localIP:Ljava/lang/String;
    .end local v2           #nwkTypeName:Ljava/lang/String;
    :cond_4
    const-string v5, "0"

    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v6, v6, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3169
    sget-boolean v5, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v5, v4, :cond_5

    .line 3171
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/internal/ims/external/NativeInterface;->onPowerOff()V

    .line 3172
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 3173
    sput-boolean v3, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 3177
    :cond_5
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    const-string v5, "0"

    iput-object v5, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    .line 3180
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/HiddenMenuData;Landroid/content/ContentResolver;)Landroid/net/Uri;

    goto :goto_2
.end method

.method public handleHiPriNWConnect()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2841
    :try_start_0
    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2842
    .local v0, cm:Landroid/net/ConnectivityManager;
    const-string v7, "pcscf.lgtims.co.kr"

    invoke-static {v7}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 2843
    .local v4, inetAddress:Ljava/net/InetAddress;
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    .line 2844
    .local v6, vtIP:Ljava/lang/String;
    const-string v7, "IMS/IMSService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "===== startUsingHiPri : vtIP==>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    invoke-virtual {p0, v4}, Lcom/sec/android/internal/ims/IMSService;->ipToInt(Ljava/net/InetAddress;)I

    move-result v3

    .line 2846
    .local v3, inetAddr:I
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v3}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v7

    if-ne v10, v7, :cond_1

    .line 2848
    const-string v7, "IMS/IMSService"

    const-string v8, "===== handleHiPriNWConnect : requestRouteToHost SUCCESS...."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2860
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v3           #inetAddr:I
    .end local v4           #inetAddress:Ljava/net/InetAddress;
    .end local v6           #vtIP:Ljava/lang/String;
    :goto_0
    iget-object v7, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 2862
    .local v5, mWifiManager:Landroid/net/wifi/WifiManager;
    sget-boolean v7, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v7, v10, :cond_0

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-ne v10, v7, :cond_0

    .line 2864
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/internal/ims/external/NativeInterface;->onPowerOff()V

    .line 2865
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->cancelVTNotification()V

    .line 2866
    sput-boolean v11, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    .line 2870
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 2871
    .local v2, h:Landroid/os/Handler;
    new-instance v7, Lcom/sec/android/internal/ims/IMSService$13;

    invoke-direct {v7, p0}, Lcom/sec/android/internal/ims/IMSService$13;-><init>(Lcom/sec/android/internal/ims/IMSService;)V

    const-wide/16 v8, 0x7d0

    invoke-virtual {v2, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2880
    .end local v2           #h:Landroid/os/Handler;
    :cond_0
    return-void

    .line 2852
    .end local v5           #mWifiManager:Landroid/net/wifi/WifiManager;
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    .restart local v3       #inetAddr:I
    .restart local v4       #inetAddress:Ljava/net/InetAddress;
    .restart local v6       #vtIP:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v7, "IMS/IMSService"

    const-string v8, "===== handleHiPriNWConnect : requestRouteToHost FAILED...."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2855
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    .end local v3           #inetAddr:I
    .end local v4           #inetAddress:Ljava/net/InetAddress;
    .end local v6           #vtIP:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2857
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public handleIPChangeEvent()V
    .locals 2

    .prologue
    .line 1373
    const-string v0, "IMS/IMSService"

    const-string v1, "handleIPChangeEvent: Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    invoke-direct {p0}, Lcom/sec/android/internal/ims/IMSService;->handleRegAvailEvent()V

    .line 1376
    return-void
.end method

.method public initVTErrorTableUpdateListener(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 2984
    const-string v0, "initVTErrorTableUpdateListener"

    .line 2985
    .local v0, FN_TAG:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Entering ---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 2987
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 2988
    .local v1, vt_error_update_filter:Landroid/content/IntentFilter;
    if-eqz v1, :cond_0

    .line 2990
    const-string v2, "com.android.reciever.activities.ERROR_TABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2991
    iget-object v2, p0, Lcom/sec/android/internal/ims/IMSService;->vtErrorTableUpdateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2993
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Exiting ---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 2994
    return-void
.end method

.method public ipToInt(Ljava/net/InetAddress;)I
    .locals 4
    .parameter "inetAddress"

    .prologue
    .line 2885
    invoke-virtual {p1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    .line 2886
    .local v1, addrBytes:[B
    const/4 v2, 0x3

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/4 v3, 0x0

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    or-int v0, v2, v3

    .line 2890
    .local v0, addr:I
    return v0
.end method

.method public isIMSEnabledOnWiFI()Z
    .locals 1

    .prologue
    .line 900
    const-string v0, "isImsEnabledOnWiFi.."

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 901
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized isLocalIpChanged(Ljava/lang/String;)Z
    .locals 3
    .parameter "newLocalIp"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3261
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->glocalIp:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 3275
    :goto_0
    monitor-exit p0

    return v0

    .line 3264
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    .line 3265
    goto :goto_0

    .line 3267
    :cond_1
    :try_start_1
    sget-object v2, Lcom/sec/android/internal/ims/IMSService;->glocalIp:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3269
    const-string v1, "isLocalIpChanged: IPs are Diffrent.. Try Re-Register"

    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3273
    :cond_2
    :try_start_2
    const-string v0, "isLocalIpChanged: IP is not changed from previous one"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 3275
    goto :goto_0
.end method

.method public isRoamingAreaLGT()Z
    .locals 5

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, isRoamingArea:Z
    const/4 v1, -0x1

    .line 352
    .local v1, res:I
    sget-boolean v2, Lcom/sec/android/internal/ims/IMSService;->SISOTest:Z

    if-nez v2, :cond_0

    .line 364
    :cond_0
    const-string v2, "IMS/IMSService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRoamingAreaLGT: isRoamingArea : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return v0
.end method

.method public makeCall(Ljava/lang/String;I)I
    .locals 3
    .parameter "remoteNo"
    .parameter "dialType"

    .prologue
    const/4 v2, 0x1

    .line 1437
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    if-ne v0, v2, :cond_1

    .line 1440
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getDNSQuerySuccessState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getDNSQueryInProgessState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1442
    const-string v0, "MOBILE"

    invoke-direct {p0, v0}, Lcom/sec/android/internal/ims/IMSService;->handleEVDONetworkConneted(Ljava/lang/String;)V

    .line 1444
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->DisableWifi()V

    .line 1445
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside makeCall : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v2, v2}, Lcom/sec/android/internal/ims/external/NativeInterface;->makeVoipCall(Ljava/lang/String;III)I

    move-result v0

    iput v0, p0, Lcom/sec/android/internal/ims/IMSService;->mCallId:I

    .line 1447
    iget v0, p0, Lcom/sec/android/internal/ims/IMSService;->mCallId:I

    iput v0, p0, Lcom/sec/android/internal/ims/IMSService;->imsCallId:I

    .line 1448
    iget v0, p0, Lcom/sec/android/internal/ims/IMSService;->mCallId:I

    .line 1453
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onPowerOff()V
    .locals 2

    .prologue
    .line 1594
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1596
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside onPowerOff : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->onPowerOff()V

    .line 1599
    :cond_0
    return-void
.end method

.method public printHiddenMenuValues(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V
    .locals 2
    .parameter "myObject"

    .prologue
    .line 845
    const-string v0, "================================================="

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 846
    if-eqz p1, :cond_0

    .line 848
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mPrefCscfDnsVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDnsVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mPrefCscfIpVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfIpVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mPrefCscfDomainVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfDomainVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mPrefCscfPortVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mPrefXdmDnsVal= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmDnsVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mPrefXdmIpVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefXdmIpVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mPrefAudioCodecVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefAudioCodecVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mPrefVideoCodecVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefVideoCodecVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mLoopbackVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mLoopbackVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mAlwaysOnVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mEnableQosVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mEnableQosVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mVideoProfileVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVideoProfileVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mAudioFirstVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAudioFirstVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mQosAwareVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mQosAwareVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mVTDebuggingVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mVTDebuggingVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 864
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mAutoTestVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAutoTestVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "myObject.mBuildTypeVal = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBuildTypeVal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 866
    const-string v0, "================================================="

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 869
    :cond_0
    return-void
.end method

.method public readHiddenMenuDataFromDB()Lcom/sec/android/internal/ims/external/HiddenMenuData;
    .locals 4

    .prologue
    .line 802
    const-string v3, "Inside readHiddenMenuDataFromDB"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 803
    new-instance v0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;-><init>()V

    .line 804
    .local v0, dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    const/4 v1, 0x0

    .line 806
    .local v1, myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 807
    .local v2, r1:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 808
    :cond_0
    const/4 v3, 0x0

    .line 829
    :goto_0
    return-object v3

    .line 810
    :cond_1
    invoke-virtual {v0, v2}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->getAllData(Landroid/content/ContentResolver;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v1

    .line 812
    if-nez v1, :cond_2

    .line 814
    const-string v3, "The object is null this means that the DB does not have any default value"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 815
    const-string v3, "Database read failed"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 817
    new-instance v1, Lcom/sec/android/internal/ims/external/HiddenMenuData;

    .end local v1           #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-direct {v1}, Lcom/sec/android/internal/ims/external/HiddenMenuData;-><init>()V

    .line 821
    .restart local v1       #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/sec/android/internal/ims/IMSService;->printHiddenMenuValues(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 822
    if-eqz v1, :cond_3

    .line 825
    const-string v3, "Printing the DB data"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    :cond_3
    move-object v3, v1

    .line 829
    goto :goto_0
.end method

.method public register(Ljava/lang/String;)V
    .locals 5
    .parameter "ipAddr"

    .prologue
    .line 919
    const-string v3, "Inside IMSService -> register"

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 921
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 923
    .local v2, telephonyMngr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 924
    .local v1, state:I
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 926
    .local v0, networkType:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register : state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "networkType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 928
    sget-boolean v3, Lcom/sec/android/internal/ims/IMSService;->SISOTest:Z

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->isRoamingAreaLGT()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    const/16 v3, 0xc

    if-ne v0, v3, :cond_1

    .line 932
    :cond_0
    if-eqz p1, :cond_1

    .line 933
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->onNetworkEvent(Ljava/lang/String;)Z

    .line 935
    :cond_1
    return-void
.end method

.method public registerListener(Lcom/sec/android/ims/IMSEventListener;)V
    .locals 2
    .parameter "imsListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 949
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService;->imsListener:Lcom/sec/android/ims/IMSEventListener;

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside IMSService -> registerCallback, imsCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 956
    return-void
.end method

.method public removeVideoEventListener(Landroid/os/Handler;)V
    .locals 0
    .parameter "VTHandler"

    .prologue
    .line 3256
    invoke-static {p1}, Lcom/android/internal/telephony/ims/IMSInterface;->unregisterVideoEventListener(Landroid/os/Handler;)V

    .line 3257
    return-void
.end method

.method public resetRegAvailEvent()V
    .locals 1

    .prologue
    .line 943
    const-string v0, "Inside IMSService -> resetRegAvailEvent"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 944
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->ResetRegAvailEvent()V

    .line 945
    return-void
.end method

.method public sendDTMF(I)V
    .locals 2
    .parameter "dtmfChr"

    .prologue
    .line 1584
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1586
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside sendDTMF : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/internal/ims/IMSService;->mCallId:I

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->sendDTMF(II)V

    .line 1589
    :cond_0
    return-void
.end method

.method public sendLiveVideo()V
    .locals 2

    .prologue
    .line 1557
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1559
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside sendLiveVideo: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->sendLiveVideo()V

    .line 1562
    :cond_0
    return-void
.end method

.method public sendStillImage(Ljava/lang/String;I)V
    .locals 3
    .parameter "filePath"
    .parameter "imageFormat"

    .prologue
    .line 1548
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1550
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is inside sendStillImage: filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "imageFormat ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/internal/ims/external/NativeInterface;->sendStillImage(Ljava/lang/String;I)V

    .line 1553
    :cond_0
    return-void
.end method

.method public setConfigParams()V
    .locals 5

    .prologue
    .line 598
    new-instance v0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;-><init>()V

    .line 599
    .local v0, dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    const/4 v1, 0x0

    .line 601
    .local v1, myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    iget-object v4, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 602
    .local v3, r1:Landroid/content/ContentResolver;
    invoke-virtual {v0, v3}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->getAllData(Landroid/content/ContentResolver;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v1

    .line 604
    if-nez v1, :cond_0

    .line 605
    new-instance v1, Lcom/sec/android/internal/ims/external/HiddenMenuData;

    .end local v1           #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-direct {v1}, Lcom/sec/android/internal/ims/external/HiddenMenuData;-><init>()V

    .line 608
    .restart local v1       #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    :cond_0
    const-string v4, "Obj not null-inside set SETCONFIGPARAMS "

    invoke-static {v4}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 609
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v2

    .line 610
    .local v2, nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;
    invoke-virtual {v2, v1}, Lcom/sec/android/internal/ims/external/NativeInterface;->setConfigParams(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 611
    return-void
.end method

.method public declared-synchronized setDNSQueryInProgessState(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3204
    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lcom/sec/android/internal/ims/IMSService;->isDNSQueryInProgss:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3205
    monitor-exit p0

    return-void

    .line 3204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDNSQueryRetryState(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3245
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/sec/android/internal/ims/IMSService;->isDNSRetryInProgress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3246
    monitor-exit p0

    return-void

    .line 3245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDNSQuerySuccessState(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3234
    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lcom/sec/android/internal/ims/IMSService;->isDNSQuerySuccess:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3235
    monitor-exit p0

    return-void

    .line 3234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDummySurfacePreviewDisplay(Landroid/view/Surface;I)Z
    .locals 1
    .parameter "surface"
    .parameter "width"

    .prologue
    .line 905
    const-string v0, "setDummySurfacePreviewDisplay.."

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 906
    const/4 v0, 0x1

    return v0
.end method

.method public setHiddenMenuDataAlwaysOnTrue()V
    .locals 6

    .prologue
    .line 765
    const-string v5, "Inside setHiddenMenuDataAlwaysOnTrue"

    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 768
    :try_start_0
    new-instance v0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;-><init>()V

    .line 769
    .local v0, dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    const/4 v3, 0x0

    .line 771
    .local v3, myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    iget-object v5, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 775
    .local v4, r1:Landroid/content/ContentResolver;
    invoke-virtual {v0, v4}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->getAllData(Landroid/content/ContentResolver;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v3

    .line 776
    if-nez v3, :cond_0

    .line 778
    const-string v5, "The object is null this means that the DB does not have any default value"

    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 779
    const-string v5, "Database read failed"

    invoke-static {v5}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 798
    .end local v0           #dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    .end local v3           #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    .end local v4           #r1:Landroid/content/ContentResolver;
    :goto_0
    return-void

    .line 786
    .restart local v0       #dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    .restart local v3       #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    .restart local v4       #r1:Landroid/content/ContentResolver;
    :cond_0
    const-string v5, "1"

    iput-object v5, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAlwaysOnVal:Ljava/lang/String;

    .line 789
    invoke-virtual {v0, v4}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->deleteExistingRow(Landroid/content/ContentResolver;)I

    move-result v1

    .line 792
    .local v1, del:I
    invoke-virtual {v0, v3, v4}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/HiddenMenuData;Landroid/content/ContentResolver;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 794
    .end local v0           #dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    .end local v1           #del:I
    .end local v3           #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    .end local v4           #r1:Landroid/content/ContentResolver;
    :catch_0
    move-exception v2

    .line 795
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized setIMSRegisterState(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3194
    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lcom/sec/android/internal/ims/IMSService;->isImsRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3195
    monitor-exit p0

    return-void

    .line 3194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIsCallEstablished(Z)V
    .locals 1
    .parameter "set"

    .prologue
    .line 895
    const-string v0, "setIsCallEstablished.."

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 898
    return-void
.end method

.method public setPreviewDisplay(Landroid/view/Surface;III)Z
    .locals 6
    .parameter "surface"
    .parameter "width"
    .parameter "height"
    .parameter "isNearEnd"

    .prologue
    .line 1418
    move-object v2, p1

    .line 1419
    .local v2, mSurface:Landroid/view/Surface;
    move v3, p2

    .line 1420
    .local v3, mWidth:I
    move v0, p3

    .line 1421
    .local v0, mHeight:I
    move v1, p4

    .line 1428
    .local v1, mIsNearEnd:I
    const-string v4, "IMS/IMSService"

    const-string v5, "This is inside setPreviewDisplay : "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v4

    invoke-virtual {v4, p1, p2, p3, p4}, Lcom/sec/android/internal/ims/external/NativeInterface;->setPreviewDisplay(Landroid/view/Surface;III)Z

    move-result v4

    return v4
.end method

.method public declared-synchronized setRegAvailRecvdState(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3224
    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lcom/sec/android/internal/ims/IMSService;->isRegAvailRecvd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3225
    monitor-exit p0

    return-void

    .line 3224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStartUsingHiPriState(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3209
    monitor-enter p0

    :try_start_0
    sput-boolean p1, Lcom/sec/android/internal/ims/IMSService;->startUsingHiPri:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3210
    monitor-exit p0

    return-void

    .line 3209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showToast(I)V
    .locals 3
    .parameter "message"

    .prologue
    .line 2037
    const-string v0, "IMS/IMSService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showToast"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    iget-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2039
    return-void
.end method

.method public startCamera(Landroid/view/Surface;II)V
    .locals 0
    .parameter "surface"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1434
    return-void
.end method

.method public startHiPriNetwork()I
    .locals 4

    .prologue
    .line 2894
    const/4 v0, -0x1

    .line 2895
    .local v0, retVal:I
    const-string v1, "IMS/IMSService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startHiPriNetwork Called. startUsingHiPri= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getStartUsingHiPriState()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2924
    const/4 v1, 0x0

    return v1
.end method

.method public stopCamera()V
    .locals 0

    .prologue
    .line 1386
    return-void
.end method

.method public stopHiPriNetwork()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 2930
    const/4 v1, -0x1

    .line 2931
    .local v1, retVal:I
    const-string v3, "IMS/IMSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopHiPriNetwork Called. startUsingHiPri= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getStartUsingHiPriState()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2932
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/IMSService;->getStartUsingHiPriState()Z

    move-result v4

    if-ne v3, v4, :cond_0

    .line 2934
    iget-object v3, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2935
    .local v0, cm:Landroid/net/ConnectivityManager;
    const-string v3, "enableHIPRI"

    invoke-virtual {v0, v2, v3}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result v1

    .line 2936
    const-string v3, "IMS/IMSService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopUsingNetworkFeature = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2937
    invoke-virtual {p0, v2}, Lcom/sec/android/internal/ims/IMSService;->setStartUsingHiPriState(Z)V

    move v2, v1

    .line 2940
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :cond_0
    return v2
.end method

.method public stopRegAvailEvent()V
    .locals 1

    .prologue
    .line 938
    const-string v0, "Inside IMSService -> stopRegAvailEvent"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 939
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->StopRegAvailEvent()V

    .line 940
    return-void
.end method

.method public switchCamera()V
    .locals 2

    .prologue
    .line 1567
    sget-boolean v0, Lcom/sec/android/internal/ims/IMSService;->isImsInited:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1577
    const-string v0, "IMS/IMSService"

    const-string v1, "This is inside switchCamera : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/internal/ims/external/NativeInterface;->switchCamera()V

    .line 1580
    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/sec/android/ims/IMSEventListener;)V
    .locals 2
    .parameter "imsListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inside IMSService -> unregisterCallback, imsCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 984
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/internal/ims/IMSService;->imsListener:Lcom/sec/android/ims/IMSEventListener;

    .line 989
    return-void
.end method

.method public updateConfigParamsToIMS(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V
    .locals 2
    .parameter "myObject"

    .prologue
    .line 839
    const-string v1, "Inside updateConfigParamsToIMS"

    invoke-static {v1}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 840
    invoke-static {}, Lcom/sec/android/internal/ims/external/NativeInterface;->getInstance()Lcom/sec/android/internal/ims/external/NativeInterface;

    move-result-object v0

    .line 841
    .local v0, nativeInterface:Lcom/sec/android/internal/ims/external/NativeInterface;
    invoke-virtual {v0, p1}, Lcom/sec/android/internal/ims/external/NativeInterface;->setConfigParams(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 842
    return-void
.end method

.method public updateHiddenMenuLocalCopy(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V
    .locals 1
    .parameter "myObject"

    .prologue
    .line 833
    const-string v0, "Inside updateHiddenMenuLocalCopy"

    invoke-static {v0}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 834
    iput-object p1, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    .line 835
    return-void
.end method

.method public updateNwkStatus(Lcom/sec/android/internal/ims/IMSService$mNtwrkType;Ljava/lang/String;I)V
    .locals 10
    .parameter "nwkType"
    .parameter "pAccessNwkInfo"
    .parameter "type"

    .prologue
    const/4 v9, 0x0

    .line 2688
    const-string v6, "Inside updateNwkStatus"

    invoke-static {v6}, Lcom/sec/android/internal/ims/IMSService;->log(Ljava/lang/String;)V

    .line 2690
    new-instance v0, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;-><init>()V

    .line 2691
    .local v0, dataOp:Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;
    const/4 v3, 0x0

    .line 2693
    .local v3, myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2695
    .local v4, r1:Landroid/content/ContentResolver;
    invoke-virtual {v0, v4}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->getAllData(Landroid/content/ContentResolver;)Lcom/sec/android/internal/ims/external/HiddenMenuData;

    move-result-object v3

    .line 2696
    if-nez v3, :cond_0

    .line 2697
    new-instance v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;

    .end local v3           #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    invoke-direct {v3}, Lcom/sec/android/internal/ims/external/HiddenMenuData;-><init>()V

    .line 2699
    .restart local v3       #myObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;
    :cond_0
    const-string v6, "IMS/IMSService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nwkType value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2700
    const-string v6, "IMS/IMSService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "type value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    if-nez p3, :cond_5

    .line 2704
    const-string v6, "IMS/IMSService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pAccessNwkInfo = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    iput-object p2, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAccessNwInfoVal:Ljava/lang/String;

    .line 2753
    :cond_1
    :goto_0
    iget-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPublicUserIdentityVal:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrivateUserIdentityVal:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 2755
    :cond_2
    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2756
    .local v2, mTelephonyManager:Landroid/telephony/TelephonyManager;
    const-string v6, "IMS/IMSService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateNwkStatus API...SIM State"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_4

    .line 2760
    iget-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPublicUserIdentityVal:Ljava/lang/String;

    if-nez v6, :cond_3

    .line 2762
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPublicUserIdentityVal:Ljava/lang/String;

    .line 2763
    const-string v6, "IMS/IMSService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateNwkStatus API...mPublicUserIdentityVal.."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPublicUserIdentityVal:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    iget-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPublicUserIdentityVal:Ljava/lang/String;

    const-string v7, ""

    if-ne v6, v7, :cond_3

    .line 2766
    iput-object v9, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPublicUserIdentityVal:Ljava/lang/String;

    .line 2768
    :cond_3
    iget-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrivateUserIdentityVal:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 2770
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrivateUserIdentityVal:Ljava/lang/String;

    .line 2771
    const-string v6, "IMS/IMSService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateNwkStatus API...mPrivateUserIdentityVal..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrivateUserIdentityVal:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    iget-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrivateUserIdentityVal:Ljava/lang/String;

    const-string v7, ""

    if-ne v6, v7, :cond_4

    .line 2774
    iput-object v9, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrivateUserIdentityVal:Ljava/lang/String;

    .line 2779
    .end local v2           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    :cond_4
    const-string v6, "IMS/IMSService"

    const-string v7, "Printing HiddenMenu in updateNwkStatus"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->printHiddenMenuValues(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 2781
    invoke-virtual {p0, v3}, Lcom/sec/android/internal/ims/IMSService;->updateHiddenMenuLocalCopy(Lcom/sec/android/internal/ims/external/HiddenMenuData;)V

    .line 2783
    invoke-virtual {v0, v4}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->deleteExistingRow(Landroid/content/ContentResolver;)I

    move-result v1

    .line 2786
    .local v1, del:I
    iget-object v6, p0, Lcom/sec/android/internal/ims/IMSService;->myHiddenMenuObject:Lcom/sec/android/internal/ims/external/HiddenMenuData;

    invoke-virtual {v0, v6, v4}, Lcom/sec/android/internal/ims/external/HiddenMenuDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/HiddenMenuData;Landroid/content/ContentResolver;)Landroid/net/Uri;

    move-result-object v5

    .line 2793
    .local v5, uri:Landroid/net/Uri;
    return-void

    .line 2707
    .end local v1           #del:I
    .end local v5           #uri:Landroid/net/Uri;
    :cond_5
    const/4 v6, 0x1

    if-ne p3, v6, :cond_1

    .line 2708
    const-string v6, "IMS/IMSService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pAccessNwkInfo = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    const-string v6, "IMS/IMSService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "CurrLatchedNwVal = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    iput-object p2, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mAccessNwInfoVal:Ljava/lang/String;

    .line 2714
    sget-object v6, Lcom/sec/android/internal/ims/IMSService$17;->$SwitchMap$com$sec$android$internal$ims$IMSService$mNtwrkType:[I

    invoke-virtual {p1}, Lcom/sec/android/internal/ims/IMSService$mNtwrkType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 2747
    const-string v6, "IMS/IMSService"

    const-string v7, "Default Case NonExistant"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2716
    :pswitch_0
    const-string v6, "H264,H263"

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefVideoCodecVal:Ljava/lang/String;

    .line 2717
    const-string v6, "LTE"

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrLatchedNwVal:Ljava/lang/String;

    .line 2718
    const-string v6, "vga"

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrDispFormatVal:Ljava/lang/String;

    .line 2719
    iget-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortforLTEVal:Ljava/lang/String;

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortVal:Ljava/lang/String;

    .line 2720
    const-string v6, "AMR-WB,AMR-NB"

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefAudioCodecVal:Ljava/lang/String;

    .line 2721
    const-string v6, "512000"

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBitRateVal:Ljava/lang/String;

    .line 2722
    const-string v6, "15"

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mFrameRateVal:Ljava/lang/String;

    goto/16 :goto_0

    .line 2725
    :pswitch_1
    const-string v6, "H264,H263"

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefVideoCodecVal:Ljava/lang/String;

    .line 2726
    const-string v6, "WIFI"

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrLatchedNwVal:Ljava/lang/String;

    .line 2727
    const-string v6, "vga"

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrDispFormatVal:Ljava/lang/String;

    .line 2728
    iget-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortforWiFiVal:Ljava/lang/String;

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortVal:Ljava/lang/String;

    .line 2729
    const-string v6, "AMR-WB,AMR-NB"

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefAudioCodecVal:Ljava/lang/String;

    .line 2730
    const-string v6, "512000"

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBitRateVal:Ljava/lang/String;

    .line 2731
    const-string v6, "15"

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mFrameRateVal:Ljava/lang/String;

    goto/16 :goto_0

    .line 2735
    :pswitch_2
    const-string v6, "H263"

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefVideoCodecVal:Ljava/lang/String;

    .line 2736
    const-string v6, "AMR-NB"

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefAudioCodecVal:Ljava/lang/String;

    .line 2737
    const-string v6, "UMTS"

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrLatchedNwVal:Ljava/lang/String;

    .line 2738
    const-string v6, "qcif"

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mCurrDispFormatVal:Ljava/lang/String;

    .line 2739
    const-string v6, "AMR-NB"

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefAudioCodecVal:Ljava/lang/String;

    .line 2740
    iget-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortforLTEVal:Ljava/lang/String;

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mPrefCscfPortVal:Ljava/lang/String;

    .line 2741
    const-string v6, "32000"

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mBitRateVal:Ljava/lang/String;

    .line 2742
    const-string v6, "7"

    iput-object v6, v3, Lcom/sec/android/internal/ims/external/HiddenMenuData;->mFrameRateVal:Ljava/lang/String;

    goto/16 :goto_0

    .line 2714
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
