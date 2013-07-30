.class public Lcom/android/sec_settings/wifi/WifiSettings;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/wifi/WifiSettings$Scanner;,
        Lcom/android/sec_settings/wifi/WifiSettings$Multimap;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final WIFI_CONNECT_THRESHOLD:I

.field private static final WIFI_ERRORCODE:Z

.field public static cancel_network:I

.field public static edit_network:I

.field public static forget_network:I

.field public static mInOffloadDialog:Z

.field public static mManageNetworkConnected:I

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field public static mStartWith:I

.field public static manageNetwork:Z

.field public static vzwEditFlag:Z

.field public static vzwViewFlag:Z


# instance fields
.field private final ERROR_DIALOG_DURATION_TIME:I

.field private WIFISCAN_OUTDATED_TIME_THRESHOLD:I

.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mActivity:Landroid/app/Activity;

.field private mAddNetworkItem:Landroid/preference/Preference;

.field mAddNetworkMenuItem:Landroid/view/MenuItem;

.field mAdvancedMenuItem:Landroid/view/MenuItem;

.field private mAutoFinishOnConnection:Z

.field private mCWConnectToNw:I

.field private mCWPendingOperation:I

.field private mChannel:Landroid/net/wifi/WifiManager$Channel;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

.field public mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDlgAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mDurationDialogHandler:Landroid/os/Handler;

.field mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEapMethod:Ljava/lang/String;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private mErrorApInfo:Landroid/net/wifi/WifiInfo;

.field private mErrorDialog:Landroid/app/AlertDialog;

.field private mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

.field private mErrorDialogRunnable:Ljava/lang/Runnable;

.field private mErrorDialogStopScan:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mFirst5GScanFlag:Z

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mIgnoreConnectedMsg:Z

.field private mInManageNetwork:Z

.field private mInPickerActivity:Z

.field private mInPickerDialog:Z

.field private mKeyStoreNetworkId:I

.field private mLastCWErrorReason:I

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field public mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mNewDialog:Lcom/android/sec_settings/wifi/WifiNewDialog;

.field mP2pMenuItem:Landroid/view/MenuItem;

.field private mP2pSupported:Z

.field private mProgressCategory:Lcom/android/sec_settings/ProgressCategory;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryPopupFlag:Z

.field private mRetryPopupRequestId:I

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field mScanMenuItem:Landroid/view/MenuItem;

.field private final mScanner:Lcom/android/sec_settings/wifi/WifiSettings$Scanner;

.field private mScrollTimer:J

.field private mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

.field private mSetupWizardMode:Z

.field private mWatchdogDialog:Landroid/app/AlertDialog;

.field private mWifiDialogStyle:I

.field private mWifiEnabler:Lcom/android/sec_settings/wifi/WifiEnabler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field rememberedAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/sec_settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field wifiOffloadDialog:Lcom/android/sec_settings/wifi/WifiOffloadDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 157
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/sec_settings/wifi/WifiSettings;->DEBUG:Z

    .line 283
    const/4 v0, 0x0

    sput-object v0, Lcom/android/sec_settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 340
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableThresholdDuringConnection"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/sec_settings/wifi/WifiSettings;->WIFI_CONNECT_THRESHOLD:I

    .line 341
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/sec_settings/wifi/WifiSettings;->WIFI_ERRORCODE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 356
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    .line 218
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 220
    iput v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 244
    const v0, 0x493e0

    iput v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->WIFISCAN_OUTDATED_TIME_THRESHOLD:I

    .line 247
    iput-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mActivity:Landroid/app/Activity;

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    .line 280
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mEapMethod:Ljava/lang/String;

    .line 284
    iput-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 289
    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->ERROR_DIALOG_DURATION_TIME:I

    .line 298
    iput-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 324
    iput v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mCWPendingOperation:I

    .line 325
    iput v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mCWConnectToNw:I

    .line 336
    iput-boolean v4, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    .line 344
    iput v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mRetryPopupRequestId:I

    .line 2606
    new-instance v0, Lcom/android/sec_settings/wifi/WifiSettings$19;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/wifi/WifiSettings$19;-><init>(Lcom/android/sec_settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 2644
    new-instance v0, Lcom/android/sec_settings/wifi/WifiSettings$20;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/wifi/WifiSettings$20;-><init>(Lcom/android/sec_settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 357
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 358
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v1, "AKA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SHOW_EAP_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    :cond_0
    new-instance v0, Lcom/android/sec_settings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/wifi/WifiSettings$1;-><init>(Lcom/android/sec_settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 396
    new-instance v0, Lcom/android/sec_settings/wifi/WifiSettings$Scanner;

    invoke-direct {v0, p0, v3}, Lcom/android/sec_settings/wifi/WifiSettings$Scanner;-><init>(Lcom/android/sec_settings/wifi/WifiSettings;Lcom/android/sec_settings/wifi/WifiSettings$1;)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanner:Lcom/android/sec_settings/wifi/WifiSettings$Scanner;

    .line 398
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    .line 405
    return-void
.end method

.method private CWHandleCommand(II)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2862
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2863
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2864
    packed-switch p1, :pswitch_data_0

    .line 2886
    :cond_0
    :goto_0
    :pswitch_0
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2887
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2888
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 2890
    return v0

    .line 2866
    :pswitch_1
    const-string v2, "netId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2867
    const-string v2, "disableOthers"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2871
    :pswitch_2
    const-string v2, "bEnable"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 2875
    :pswitch_3
    iget v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mLastCWErrorReason:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 2876
    const-string v2, "nRetryMethod"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2877
    :cond_1
    iget v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mLastCWErrorReason:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 2878
    const-string v2, "nRetryMethod"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2864
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/sec_settings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Lcom/android/sec_settings/wifi/WifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/sec_settings/wifi/WifiSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/sec_settings/wifi/WifiSettings;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/sec_settings/wifi/WifiSettings;->removeDialogTimer(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/sec_settings/wifi/WifiSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/sec_settings/wifi/WifiSettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/sec_settings/wifi/WifiSettings;)Lcom/android/sec_settings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/sec_settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/sec_settings/wifi/WifiSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mInPickerDialog:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/sec_settings/wifi/WifiSettings;)Lcom/android/sec_settings/wifi/WifiDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/sec_settings/wifi/WifiSettings;)Lcom/android/sec_settings/wifi/WifiNewDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mNewDialog:Lcom/android/sec_settings/wifi/WifiNewDialog;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/sec_settings/wifi/WifiSettings;Lcom/android/sec_settings/wifi/WifiNewDialog;)Lcom/android/sec_settings/wifi/WifiNewDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mNewDialog:Lcom/android/sec_settings/wifi/WifiNewDialog;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/sec_settings/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 153
    sget-boolean v0, Lcom/android/sec_settings/wifi/WifiSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/sec_settings/wifi/WifiSettings;)Lcom/android/sec_settings/wifi/AccessPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/sec_settings/wifi/WifiSettings;Lcom/android/sec_settings/wifi/AccessPoint;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 153
    invoke-direct {p0, p1, p2}, Lcom/android/sec_settings/wifi/WifiSettings;->showNewDialog(Lcom/android/sec_settings/wifi/AccessPoint;Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/sec_settings/wifi/WifiSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->updateAccessPoints()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/sec_settings/wifi/WifiSettings;Lcom/android/sec_settings/wifi/AccessPoint;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/android/sec_settings/wifi/WifiSettings;->showNewDialog(Lcom/android/sec_settings/wifi/AccessPoint;ZZ)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/sec_settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/sec_settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/sec_settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/sec_settings/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/sec_settings/wifi/WifiSettings;Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/android/sec_settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/sec_settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/sec_settings/wifi/WifiSettings;->getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/sec_settings/wifi/WifiSettings;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/sec_settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/sec_settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/sec_settings/wifi/WifiSettings;)Lcom/android/sec_settings/wifi/WifiSettings$Scanner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanner:Lcom/android/sec_settings/wifi/WifiSettings$Scanner;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/sec_settings/wifi/WifiSettings;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/sec_settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/sec_settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/sec_settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/sec_settings/wifi/WifiSettings;Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/android/sec_settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method private addMessagePreference(I)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 1927
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1930
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1940
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 2601
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2602
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2604
    :cond_0
    return-void
.end method

.method private connectNetwork(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2988
    sget-boolean v0, Lcom/android/sec_settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectNetwork nid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2990
    :cond_0
    sget v0, Lcom/android/sec_settings/wifi/WifiSettings;->WIFI_CONNECT_THRESHOLD:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2991
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2992
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2993
    const/16 v2, 0x1d

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2994
    const-string v2, "netId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2995
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2996
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 2999
    :cond_1
    sget-boolean v0, Lcom/android/sec_settings/wifi/WifiSettings;->WIFI_ERRORCODE:Z

    if-eqz v0, :cond_4

    .line 3000
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 3001
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 3002
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v2, p2, :cond_2

    .line 3003
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_4

    .line 3004
    :cond_3
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 3010
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScrollTimer:J

    .line 3011
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3012
    return-void
.end method

.method private connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2953
    sget-boolean v0, Lcom/android/sec_settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string v1, "connectNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2955
    :cond_0
    sget v0, Lcom/android/sec_settings/wifi/WifiSettings;->WIFI_CONNECT_THRESHOLD:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2956
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2957
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2958
    const/16 v2, 0x1d

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2959
    const-string v2, "netId"

    iget v3, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2960
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2961
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 2964
    :cond_1
    sget-boolean v0, Lcom/android/sec_settings/wifi/WifiSettings;->WIFI_ERRORCODE:Z

    if-eqz v0, :cond_3

    .line 2965
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 2966
    :cond_2
    const/4 v0, 0x0

    iput v0, p2, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 2969
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScrollTimer:J

    .line 2970
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 2971
    return-void
.end method

.method private constructAccessPoints()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/sec_settings/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1944
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1947
    new-instance v4, Lcom/android/sec_settings/wifi/WifiSettings$Multimap;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings$Multimap;-><init>(Lcom/android/sec_settings/wifi/WifiSettings;Lcom/android/sec_settings/wifi/WifiSettings$1;)V

    .line 1949
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 1950
    if-eqz v0, :cond_0

    .line 1954
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1955
    new-instance v2, Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Lcom/android/sec_settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 1968
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2, v0, v5}, Lcom/android/sec_settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 1970
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1971
    iget-object v0, v2, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Lcom/android/sec_settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 1978
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 1979
    if-eqz v0, :cond_3

    .line 1980
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 1982
    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "[IBSS]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1987
    const/4 v1, 0x0

    .line 1988
    iget-object v2, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/android/sec_settings/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v1

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/sec_settings/wifi/AccessPoint;

    .line 1989
    invoke-virtual {v1, v0}, Lcom/android/sec_settings/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1990
    const/4 v1, 0x1

    :goto_3
    move v2, v1

    goto :goto_2

    .line 1992
    :cond_2
    if-nez v2, :cond_1

    .line 1993
    new-instance v1, Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/android/sec_settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 1994
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1995
    iget-object v0, v1, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/android/sec_settings/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 2002
    :cond_3
    :try_start_0
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2006
    :goto_4
    return-object v3

    .line 2003
    :catch_0
    move-exception v0

    goto :goto_4

    :cond_4
    move v1, v2

    goto :goto_3
.end method

.method private dismissDialog(I)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 1410
    packed-switch p1, :pswitch_data_0

    .line 1442
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1412
    :pswitch_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1413
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->removeDialog(I)V

    .line 1414
    iput-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    goto :goto_0

    .line 1418
    :pswitch_2
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1419
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->removeDialog(I)V

    .line 1420
    iput-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    goto :goto_0

    .line 1424
    :pswitch_3
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1426
    iput-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1430
    :pswitch_4
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mNewDialog:Lcom/android/sec_settings/wifi/WifiNewDialog;

    if-eqz v0, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mNewDialog:Lcom/android/sec_settings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->dismiss()V

    .line 1432
    iput-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mNewDialog:Lcom/android/sec_settings/wifi/WifiNewDialog;

    goto :goto_0

    .line 1436
    :pswitch_5
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1437
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1438
    iput-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1410
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private getErrorAnimationView(II)Landroid/view/View;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1643
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1645
    const v1, 0x7f04011f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1646
    const v0, 0x7f0b0029

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1647
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1648
    const v0, 0x7f0b0385

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1649
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1650
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 1651
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/sec_settings/wifi/WifiSettings$18;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/wifi/WifiSettings$18;-><init>(Lcom/android/sec_settings/wifi/WifiSettings;)V

    const-wide/16 v3, 0x5f

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1657
    return-object v1
.end method

.method private getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .parameter "config"

    .prologue
    .line 3028
    const/4 v1, 0x0

    .line 3029
    .local v1, found:Z
    const/4 v3, -0x1

    .line 3030
    .local v3, newNetId:I
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/wifi/AccessPoint;

    .line 3031
    .local v0, accessPoint:Lcom/android/sec_settings/wifi/AccessPoint;
    invoke-virtual {v0, p1}, Lcom/android/sec_settings/wifi/AccessPoint;->checkIfSame(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3032
    const/4 v1, 0x1

    .line 3033
    iget v3, v0, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    .line 3037
    .end local v0           #accessPoint:Lcom/android/sec_settings/wifi/AccessPoint;
    :cond_1
    if-eqz v1, :cond_2

    move v4, v3

    .line 3040
    .end local v3           #newNetId:I
    .local v4, newNetId:I
    :goto_0
    return v4

    .end local v4           #newNetId:I
    .restart local v3       #newNetId:I
    :cond_2
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    move v4, v3

    .end local v3           #newNetId:I
    .restart local v4       #newNetId:I
    goto :goto_0
.end method

.method private getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .parameter "networkId"

    .prologue
    .line 1499
    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1500
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_1

    .line 1501
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1502
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p1, :cond_0

    .line 1507
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 2029
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2031
    const-string v0, "android.net.wifi.supplicant.WAPI_EVENT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2032
    const-string v0, "wapi_string"

    .line 2034
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2035
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SUPPLICANT_WAPI_EVENT received: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    packed-switch v0, :pswitch_data_0

    .line 2169
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v2, "AKA"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2170
    const-string v0, "android.net.wifi.SHOW_EAP_MESSAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2171
    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2174
    if-nez v0, :cond_14

    .line 2220
    :cond_1
    :goto_1
    return-void

    .line 2038
    :pswitch_1
    const v0, 0x7f09022f

    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2042
    :pswitch_2
    const v0, 0x7f090230

    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2046
    :cond_2
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2047
    const-string v0, "wifi_state"

    const/4 v2, 0x4

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->updateWifiState(I)V

    goto :goto_0

    .line 2049
    :cond_3
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2050
    sget-boolean v0, Lcom/android/sec_settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "WifiSettings"

    const-string v2, ">>> SCAN_RESULTS_AVAILABLE_ACTION RECEIVED"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    :cond_4
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 2059
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_0

    .line 2060
    iput-boolean v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    .line 2061
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanner:Lcom/android/sec_settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiSettings$Scanner;->forceScan()V

    .line 2062
    sget-boolean v0, Lcom/android/sec_settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    const-string v2, "Force scan for 5G APs"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2064
    :cond_5
    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2065
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 2067
    const-string v0, "wifiConfiguration"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2068
    if-eqz v0, :cond_6

    .line 2069
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mRetryPopupRequestId:I

    .line 2070
    sget-boolean v0, Lcom/android/sec_settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> CONFIGURED_NETWORKS_CHANGED_ACTION nid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mRetryPopupRequestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    :cond_6
    iget v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mRetryPopupRequestId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 2073
    iput-boolean v6, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mRetryPopupFlag:Z

    .line 2074
    invoke-direct {p0, v4}, Lcom/android/sec_settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 2077
    :cond_7
    const-string v0, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2078
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->updateAccessPoints()V

    goto/16 :goto_0

    .line 2079
    :cond_8
    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2086
    const-string v0, "newState"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    .line 2088
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    if-eq v0, v2, :cond_0

    .line 2089
    sget-boolean v2, Lcom/android/sec_settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> SUPPLICANT_STATE_CHANGED_ACTION state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    :cond_9
    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 2096
    :cond_a
    const-string v0, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2097
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 2099
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 2100
    iget-boolean v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v3, :cond_b

    if-eqz v2, :cond_b

    .line 2101
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->finish()V

    .line 2103
    :cond_b
    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2104
    invoke-direct {p0, v2}, Lcom/android/sec_settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 2105
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 2106
    sget-boolean v3, Lcom/android/sec_settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v3, :cond_c

    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>> NETWORK_STATE_CHANGED_ACTION state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    :cond_c
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/sec_settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 2109
    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->wifiOffloadDialog:Lcom/android/sec_settings/wifi/WifiOffloadDialog;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->wifiOffloadDialog:Lcom/android/sec_settings/wifi/WifiOffloadDialog;

    iget-boolean v3, v3, Lcom/android/sec_settings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->wifiOffloadDialog:Lcom/android/sec_settings/wifi/WifiOffloadDialog;

    invoke-virtual {v3}, Lcom/android/sec_settings/wifi/WifiOffloadDialog;->isSCamera()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2112
    if-eqz v2, :cond_e

    sget-boolean v2, Lcom/android/sec_settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-eqz v2, :cond_e

    .line 2113
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->wifiOffloadDialog:Lcom/android/sec_settings/wifi/WifiOffloadDialog;

    iget-boolean v2, v2, Lcom/android/sec_settings/wifi/WifiOffloadDialog;->mLaunchFromSetup:Z

    if-eqz v2, :cond_d

    .line 2115
    const-string v2, "WifiSettings"

    const-string v3, " Wifi Success Next Activity : "

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->wifiOffloadDialog:Lcom/android/sec_settings/wifi/WifiOffloadDialog;

    iget-object v3, v3, Lcom/android/sec_settings/wifi/WifiOffloadDialog;->mNextForwardIntentWIfi_In_SetupWizard:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2118
    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->wifiOffloadDialog:Lcom/android/sec_settings/wifi/WifiOffloadDialog;

    invoke-virtual {v3}, Lcom/android/sec_settings/wifi/WifiOffloadDialog;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 2119
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    .line 2120
    const-string v4, "setup_wizard_bundle"

    const-string v5, "setup_wizard_bundle"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2124
    :goto_2
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2126
    :cond_d
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 2130
    :cond_e
    iget-boolean v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2131
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 2122
    :cond_f
    const-string v3, "WifiSettings"

    const-string v4, "Bundle is Empty in Wifi Settings Screen"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2134
    :cond_10
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2135
    invoke-direct {p0, v4}, Lcom/android/sec_settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 2136
    :cond_11
    const-string v0, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2137
    const-string v0, "launch_with"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2138
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 2139
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->onAdvancedMenuPressed()V

    goto/16 :goto_0

    .line 2141
    :cond_12
    const-string v0, "android.net.wifi.ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2142
    const-string v0, "errorCode"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2143
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> ERROR_ACTION RECEIVED code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 2146
    :pswitch_3
    const-string v0, "wifiInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiInfo;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    .line 2147
    invoke-direct {p0, v5}, Lcom/android/sec_settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 2148
    const/16 v0, 0x7530

    invoke-direct {p0, v5, v0, v6}, Lcom/android/sec_settings/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto/16 :goto_0

    .line 2151
    :cond_13
    const-string v0, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2152
    const-string v0, "info_type"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 2153
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>> SHOW_INFO_MESSAGE RECEIVED code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    .line 2185
    :cond_14
    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2036
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 2144
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
    .end packed-switch

    .line 2154
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private isUsimUseable()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3084
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 3085
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    .line 3086
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "airplane_mode_on"

    invoke-static {v3, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    .line 3088
    :goto_0
    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    if-nez v3, :cond_1

    .line 3089
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090291

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 3109
    :goto_1
    return v0

    :cond_0
    move v3, v1

    .line 3086
    goto :goto_0

    .line 3093
    :cond_1
    const-string v3, ""

    const-string v4, "SKT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3094
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 3096
    if-eqz v0, :cond_3

    const-string v3, "45005"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "45000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3097
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090293

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 3098
    goto :goto_1

    .line 3100
    :cond_2
    const-string v3, ""

    const-string v4, "KTT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3101
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 3103
    if-eqz v0, :cond_3

    const-string v3, "45008"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "45002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3104
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090292

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v1

    .line 3105
    goto :goto_1

    :cond_3
    move v0, v2

    .line 3109
    goto :goto_1
.end method

.method private onAdvancedMenuPressed()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1112
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mInPickerActivity:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v0, :cond_1

    .line 1113
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->hideNavigationButton:Z

    .line 1117
    :goto_0
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_2

    .line 1118
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090244

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1126
    :goto_1
    return-void

    .line 1115
    :cond_1
    sput-boolean v6, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;->hideNavigationButton:Z

    goto :goto_0

    .line 1124
    :cond_2
    const-class v0, Lcom/android/sec_settings/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/sec_settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1
.end method

.method private removeDialogTimer(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1635
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1636
    :cond_0
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v0, :cond_1

    .line 1637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 1638
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanner:Lcom/android/sec_settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiSettings$Scanner;->resume()V

    .line 1640
    :cond_1
    return-void
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 1710
    invoke-static {p1}, Lcom/android/sec_settings/wifi/WifiConfigController;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    .line 1712
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 1713
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 1714
    const/4 v0, 0x1

    .line 1716
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 3
    .parameter "config"

    .prologue
    .line 3021
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 3022
    const/4 v0, 0x1

    return v0
.end method

.method private setupAddNetworkPreference()V
    .locals 2

    .prologue
    .line 1912
    const-string v0, "wifi_picker_dialog_add_network"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    .line 1913
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    const v1, 0x7f02045e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 1916
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/sec_settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1918
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1921
    :cond_0
    return-void
.end method

.method private showConfigUi(Lcom/android/sec_settings/wifi/AccessPoint;Z)V
    .locals 0
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 1363
    invoke-direct {p0, p1, p2}, Lcom/android/sec_settings/wifi/WifiSettings;->showDialog(Lcom/android/sec_settings/wifi/AccessPoint;Z)V

    .line 1365
    return-void
.end method

.method private showConnectingMessge(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2318
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    if-nez v0, :cond_1

    .line 2345
    :cond_0
    :goto_0
    return-void

    .line 2320
    :cond_1
    if-nez p1, :cond_2

    .line 2321
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 2322
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/sec_settings/ProgressCategory;->setProgressText(ZI)V

    .line 2323
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/sec_settings/ProgressCategory;->setProgress(Z)V

    goto :goto_0

    .line 2325
    :cond_2
    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 2326
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/sec_settings/ProgressCategory;

    const v1, 0x7f0903b1

    invoke-virtual {v0, v3, v1}, Lcom/android/sec_settings/ProgressCategory;->setProgressText(ZI)V

    .line 2327
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/sec_settings/ProgressCategory;->setProgress(Z)V

    .line 2328
    iput-boolean v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    goto :goto_0

    .line 2329
    :cond_3
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_4

    .line 2330
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    if-nez v0, :cond_0

    .line 2331
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/sec_settings/ProgressCategory;->setProgressText(ZI)V

    .line 2332
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/sec_settings/ProgressCategory;->setProgress(Z)V

    .line 2333
    iput-boolean v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    goto :goto_0

    .line 2338
    :cond_4
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_5

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_0

    .line 2339
    :cond_5
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/sec_settings/ProgressCategory;->setProgressText(ZI)V

    .line 2340
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 2341
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/sec_settings/ProgressCategory;->setProgressText(ZI)V

    .line 2342
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/sec_settings/ProgressCategory;->setProgress(Z)V

    goto/16 :goto_0
.end method

.method private showConnectionFailDialog(Lcom/android/sec_settings/wifi/AccessPoint;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 2349
    invoke-virtual {p1}, Lcom/android/sec_settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2350
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v1, v2, :cond_0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2353
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2354
    sget-boolean v0, Lcom/android/sec_settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AP Dialog is aleady showing. Ignore request id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    :cond_0
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mRetryPopupRequestId:I

    .line 2366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mRetryPopupFlag:Z

    .line 2367
    return-void

    .line 2356
    :cond_1
    const-string v0, "WifiSettings"

    const-string v1, "Show retry popup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    iget v0, p1, Lcom/android/sec_settings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_2

    .line 2359
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09074a

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2362
    :cond_2
    invoke-direct {p0, p1, v2}, Lcom/android/sec_settings/wifi/WifiSettings;->showRetryDialog(Lcom/android/sec_settings/wifi/AccessPoint;Z)V

    goto :goto_0
.end method

.method private showDialog(Lcom/android/sec_settings/wifi/AccessPoint;Z)V
    .locals 2
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v1, 0x1

    .line 1383
    invoke-direct {p0, v1}, Lcom/android/sec_settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 1385
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1386
    invoke-virtual {p0, v1}, Lcom/android/sec_settings/wifi/WifiSettings;->removeDialog(I)V

    .line 1387
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    .line 1391
    :cond_0
    iput-object p1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    .line 1392
    iput-boolean p2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 1394
    invoke-virtual {p0, v1}, Lcom/android/sec_settings/wifi/WifiSettings;->showDialog(I)V

    .line 1395
    return-void
.end method

.method private showDurationDialog(IIZ)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1511
    iput-boolean p3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 1512
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanner:Lcom/android/sec_settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiSettings$Scanner;->pause()V

    .line 1515
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1631
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 1574
    :pswitch_1
    const-string v0, ""

    const-string v1, "KTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1575
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090281

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1576
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1577
    iput-boolean v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 1578
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanner:Lcom/android/sec_settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_0

    .line 1584
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1585
    const v1, 0x7f020474

    const v2, 0x7f090282

    invoke-direct {p0, v1, v2}, Lcom/android/sec_settings/wifi/WifiSettings;->getErrorAnimationView(II)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1586
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1587
    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1589
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/sec_settings/wifi/WifiSettings;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v1}, Lcom/android/sec_settings/wifi/AccessPoint;->isVendorAccessPoint(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1590
    const v1, 0x7f090355

    new-instance v2, Lcom/android/sec_settings/wifi/WifiSettings$13;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/wifi/WifiSettings$13;-><init>(Lcom/android/sec_settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1600
    :cond_3
    const v1, 0x7f090595

    new-instance v2, Lcom/android/sec_settings/wifi/WifiSettings$14;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/wifi/WifiSettings$14;-><init>(Lcom/android/sec_settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1609
    const/high16 v1, 0x104

    new-instance v2, Lcom/android/sec_settings/wifi/WifiSettings$15;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/wifi/WifiSettings$15;-><init>(Lcom/android/sec_settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1613
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    .line 1614
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/sec_settings/wifi/WifiSettings$16;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/wifi/WifiSettings$16;-><init>(Lcom/android/sec_settings/wifi/WifiSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1619
    new-instance v0, Lcom/android/sec_settings/wifi/WifiSettings$17;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/wifi/WifiSettings$17;-><init>(Lcom/android/sec_settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;

    .line 1626
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1627
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1515
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showNewDialog(Lcom/android/sec_settings/wifi/AccessPoint;Z)V
    .locals 7
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mNewDialog:Lcom/android/sec_settings/wifi/WifiNewDialog;

    if-eqz v0, :cond_0

    .line 1663
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mNewDialog:Lcom/android/sec_settings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->dismiss()V

    .line 1666
    :cond_0
    new-instance v0, Lcom/android/sec_settings/wifi/WifiNewDialog;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiDialogStyle:I

    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/sec_settings/wifi/WifiNewDialog;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/sec_settings/wifi/AccessPoint;Z)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mNewDialog:Lcom/android/sec_settings/wifi/WifiNewDialog;

    .line 1667
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mNewDialog:Lcom/android/sec_settings/wifi/WifiNewDialog;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1671
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/sec_settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/android/sec_settings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_1

    .line 1677
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/sec_settings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/sec_settings/guide/GuideFragmentCallback;

    move-result-object v6

    .line 1679
    .local v6, guide:Lcom/android/sec_settings/guide/GuideFragmentCallback;
    if-eqz v6, :cond_1

    .line 1680
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mNewDialog:Lcom/android/sec_settings/wifi/WifiNewDialog;

    invoke-interface {v6}, Lcom/android/sec_settings/guide/GuideFragmentCallback;->getOnShowListener()Landroid/content/DialogInterface$OnShowListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1681
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mNewDialog:Lcom/android/sec_settings/wifi/WifiNewDialog;

    invoke-interface {v6}, Lcom/android/sec_settings/guide/GuideFragmentCallback;->getOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1686
    .end local v6           #guide:Lcom/android/sec_settings/guide/GuideFragmentCallback;
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mNewDialog:Lcom/android/sec_settings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->show()V

    .line 1687
    return-void
.end method

.method private showNewDialog(Lcom/android/sec_settings/wifi/AccessPoint;ZZ)V
    .locals 7
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "details"

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mNewDialog:Lcom/android/sec_settings/wifi/WifiNewDialog;

    if-eqz v0, :cond_0

    .line 1691
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mNewDialog:Lcom/android/sec_settings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->dismiss()V

    .line 1693
    :cond_0
    new-instance v0, Lcom/android/sec_settings/wifi/WifiNewDialog;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiDialogStyle:I

    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/sec_settings/wifi/WifiNewDialog;-><init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/sec_settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mNewDialog:Lcom/android/sec_settings/wifi/WifiNewDialog;

    .line 1694
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mNewDialog:Lcom/android/sec_settings/wifi/WifiNewDialog;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/WifiNewDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1695
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mNewDialog:Lcom/android/sec_settings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->show()V

    .line 1697
    return-void
.end method

.method private showRetryDialog(Lcom/android/sec_settings/wifi/AccessPoint;Z)V
    .locals 1
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v0, 0x5

    .line 1399
    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 1402
    iput-object p1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    .line 1403
    iput-boolean p2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 1405
    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->showDialog(I)V

    .line 1406
    return-void
.end method

.method private startWith(I)V
    .locals 5
    .parameter "id"

    .prologue
    .line 874
    const-string v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiSettings activity start with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    packed-switch p1, :pswitch_data_0

    .line 894
    :goto_0
    return-void

    .line 877
    :pswitch_0
    const/4 v2, 0x4

    const/16 v3, 0x7530

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/sec_settings/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto :goto_0

    .line 881
    :pswitch_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 882
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/android/sec_settings/wifi/WifiSettings$7;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/wifi/WifiSettings$7;-><init>(Lcom/android/sec_settings/wifi/WifiSettings;)V

    .line 887
    .local v1, runnable:Ljava/lang/Runnable;
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 891
    .end local v0           #handler:Landroid/os/Handler;
    .end local v1           #runnable:Ljava/lang/Runnable;
    :pswitch_2
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->onAdvancedMenuPressed()V

    goto :goto_0

    .line 875
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateAccessPoints()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1725
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1888
    :cond_0
    :goto_0
    return-void

    .line 1727
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 1728
    const-string v1, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[updateAccessPoints] wifiState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    packed-switch v0, :pswitch_data_0

    .line 1879
    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScrollTimer:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 1880
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScrollTimer:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1f4

    cmp-long v0, v0, v4

    if-lez v0, :cond_c

    .line 1881
    sget-boolean v0, Lcom/android/sec_settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "WifiSettings"

    const-string v1, "scroll end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    :cond_3
    iput-wide v6, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScrollTimer:J

    goto :goto_0

    .line 1732
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mNewDialog:Lcom/android/sec_settings/wifi/WifiNewDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mNewDialog:Lcom/android/sec_settings/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiNewDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1734
    :cond_5
    const-string v0, "WifiSettings"

    const-string v1, "Skip updateAccessPoints"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1738
    :cond_6
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v4

    .line 1739
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1749
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 1750
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/sec_settings/ProgressCategory;

    if-eqz v1, :cond_e

    .line 1751
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/sec_settings/ProgressCategory;->setProgress(Z)V

    .line 1752
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/sec_settings/ProgressCategory;->removeAll()V

    .line 1758
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1759
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/sec_settings/ProgressCategory;

    move-object v1, v0

    .line 1761
    :goto_2
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v0, :cond_7

    .line 1823
    :cond_7
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 1825
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 1826
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/enterprise/WifiPolicy;->getAllowUserProfiles(Z)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v2

    .line 1827
    :goto_3
    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1829
    const v0, 0x7f090249

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 1831
    :cond_8
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/wifi/AccessPoint;

    .line 1844
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    :cond_9
    move v0, v3

    .line 1826
    goto :goto_3

    .line 1848
    :cond_a
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAddNetworkMenuItem:Landroid/view/MenuItem;

    if-nez v0, :cond_2

    .line 1855
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 1856
    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/enterprise/WifiPolicy;->getAllowUserProfiles(Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1857
    :goto_5
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1859
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_b
    move v2, v3

    .line 1856
    goto :goto_5

    .line 1866
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    goto/16 :goto_1

    .line 1870
    :pswitch_2
    const v0, 0x7f09022b

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_1

    .line 1875
    :pswitch_3
    const v0, 0x7f090248

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_1

    .line 1883
    :cond_c
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1884
    sget-boolean v0, Lcom/android/sec_settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "WifiSettings"

    const-string v1, "force scroll up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    :cond_d
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    :cond_e
    move-object v1, v0

    goto/16 :goto_2

    .line 1730
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 6
    .parameter "state"

    .prologue
    .line 2242
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2243
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanner:Lcom/android/sec_settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/sec_settings/wifi/WifiSettings$Scanner;->pause()V

    .line 2315
    :cond_0
    return-void

    .line 2247
    :cond_1
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 2248
    .local v2, prefScreen:Landroid/preference/PreferenceGroup;
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/sec_settings/ProgressCategory;

    if-eqz v4, :cond_2

    .line 2249
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/sec_settings/ProgressCategory;

    .line 2251
    invoke-direct {p0, p1}, Lcom/android/sec_settings/wifi/WifiSettings;->showConnectingMessge(Landroid/net/NetworkInfo$DetailedState;)V

    .line 2255
    :cond_2
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v4, :cond_3

    iget-boolean v4, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v4, :cond_6

    .line 2256
    :cond_3
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanner:Lcom/android/sec_settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/sec_settings/wifi/WifiSettings$Scanner;->pause()V

    .line 2261
    :goto_0
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 2262
    if-eqz p1, :cond_4

    .line 2263
    iput-object p1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 2266
    :cond_4
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_0

    .line 2268
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 2269
    .local v3, preference:Landroid/preference/Preference;
    instance-of v4, v3, Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v4, :cond_5

    move-object v0, v3

    .line 2270
    check-cast v0, Lcom/android/sec_settings/wifi/AccessPoint;

    .line 2271
    .local v0, accessPoint:Lcom/android/sec_settings/wifi/AccessPoint;
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v4, v5}, Lcom/android/sec_settings/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 2273
    iget-boolean v4, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mRetryPopupFlag:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mRetryPopupRequestId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    iget v4, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mRetryPopupRequestId:I

    iget v5, v0, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    if-ne v4, v5, :cond_5

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2278
    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->showConnectionFailDialog(Lcom/android/sec_settings/wifi/AccessPoint;)V

    .line 2266
    .end local v0           #accessPoint:Lcom/android/sec_settings/wifi/AccessPoint;
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2258
    .end local v1           #i:I
    .end local v3           #preference:Landroid/preference/Preference;
    :cond_6
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanner:Lcom/android/sec_settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/sec_settings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_0
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 1008
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1009
    if-eqz p1, :cond_2

    .line 1010
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0200a3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1011
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1017
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v0, :cond_4

    .line 1018
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1019
    if-eqz p1, :cond_3

    .line 1020
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0200a7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1021
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1038
    :cond_1
    :goto_1
    return-void

    .line 1013
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1014
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 1023
    :cond_3
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1024
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 1028
    :cond_4
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1029
    if-eqz p1, :cond_5

    .line 1030
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f02009b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1031
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 1033
    :cond_5
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1034
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method private updateWifiState(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2370
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2372
    packed-switch p1, :pswitch_data_0

    .line 2420
    :goto_0
    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 2421
    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 2422
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanner:Lcom/android/sec_settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiSettings$Scanner;->pause()V

    .line 2423
    :goto_1
    return-void

    .line 2374
    :pswitch_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanner:Lcom/android/sec_settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_1

    .line 2379
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mFirst5GScanFlag:Z

    .line 2389
    const v0, 0x7f09022a

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 2393
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    .line 2394
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 2395
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiDialog;->dismissKeypad()V

    .line 2397
    :cond_0
    const v0, 0x7f090248

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 2406
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v0, :cond_1

    .line 2407
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->finish()V

    .line 2409
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/sec_settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 2411
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->dismissDialog(I)V

    goto :goto_0

    .line 2372
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method forget()V
    .locals 4

    .prologue
    .line 3056
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3058
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/sec_settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3080
    :goto_0
    return-void

    .line 3066
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiManager;->forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3073
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3074
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanner:Lcom/android/sec_settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiSettings$Scanner;->resume()V

    .line 3076
    :cond_1
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 3079
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    .line 479
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.wifi.direct"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mP2pSupported:Z

    .line 480
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/sec_settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 481
    iget-object v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/net/wifi/WifiManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ChannelListener;)Landroid/net/wifi/WifiManager$Channel;

    move-result-object v7

    iput-object v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    .line 483
    new-instance v7, Lcom/android/sec_settings/wifi/WifiSettings$2;

    invoke-direct {v7, p0}, Lcom/android/sec_settings/wifi/WifiSettings$2;-><init>(Lcom/android/sec_settings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 495
    new-instance v7, Lcom/android/sec_settings/wifi/WifiSettings$3;

    invoke-direct {v7, p0}, Lcom/android/sec_settings/wifi/WifiSettings$3;-><init>(Lcom/android/sec_settings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 507
    new-instance v7, Lcom/android/sec_settings/wifi/WifiSettings$4;

    invoke-direct {v7, p0}, Lcom/android/sec_settings/wifi/WifiSettings$4;-><init>(Lcom/android/sec_settings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 519
    if-eqz p1, :cond_0

    const-string v7, "wifi_ap_state"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 521
    const-string v7, "edit_mode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDlgEdit:Z

    .line 522
    const-string v7, "wifi_ap_state"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 526
    :cond_0
    const-string v7, "motion_recognition"

    invoke-virtual {p0, v7}, Lcom/android/sec_settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v7, Lcom/android/sec_settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 527
    new-instance v7, Lcom/android/sec_settings/wifi/WifiSettings$5;

    invoke-direct {v7, p0}, Lcom/android/sec_settings/wifi/WifiSettings$5;-><init>(Lcom/android/sec_settings/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 541
    const-string v7, "enterprise_policy"

    invoke-virtual {p0, v7}, Lcom/android/sec_settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 544
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 545
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 548
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "wifi_auto_finish_on_connect"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    .line 550
    iget-boolean v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v7, :cond_2

    .line 552
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 553
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 556
    :cond_1
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 558
    .local v2, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_2

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 560
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 707
    .end local v2           #connectivity:Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 567
    :cond_2
    const-string v7, "wifi_enable_next_on_connect"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 572
    iget-boolean v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v7, :cond_3

    .line 573
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 574
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 576
    .restart local v2       #connectivity:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_3

    .line 577
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 579
    .local v3, info:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/sec_settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 585
    .end local v2           #connectivity:Landroid/net/ConnectivityManager;
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_3
    iget-boolean v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v7, :cond_c

    .line 586
    const-string v7, "WifiSettings"

    const-string v8, "onCreate:only_access_points"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const/4 v7, 0x1

    sput v7, Lcom/android/sec_settings/wifi/WifiSettings;->mManageNetworkConnected:I

    .line 588
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/sec_settings/wifi/WifiSettings;->manageNetwork:Z

    .line 589
    const v7, 0x7f07007e

    invoke-virtual {p0, v7}, Lcom/android/sec_settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 590
    const-string v7, "access_points"

    invoke-virtual {p0, v7}, Lcom/android/sec_settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/sec_settings/ProgressCategory;

    iput-object v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/sec_settings/ProgressCategory;

    .line 591
    iget-object v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/sec_settings/ProgressCategory;

    if-eqz v7, :cond_4

    .line 592
    iget-object v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/sec_settings/ProgressCategory;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/sec_settings/ProgressCategory;->setIgnoreMessage(Z)V

    .line 607
    :cond_4
    :goto_1
    const-string v7, "wifi_progress_category"

    invoke-virtual {p0, v7}, Lcom/android/sec_settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/sec_settings/ProgressCategory;

    iput-object v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/sec_settings/ProgressCategory;

    .line 608
    iget-object v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/sec_settings/ProgressCategory;

    if-eqz v7, :cond_5

    .line 609
    iget-object v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mProgressCategory:Lcom/android/sec_settings/ProgressCategory;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/sec_settings/ProgressCategory;->setIgnoreMessage(Z)V

    .line 610
    :cond_5
    iget-boolean v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v7, :cond_6

    .line 611
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->setupAddNetworkPreference()V

    .line 614
    :cond_6
    iget-boolean v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v7, :cond_7

    .line 615
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v7

    const/high16 v8, 0x1e4

    invoke-virtual {v7, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 647
    :cond_7
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 649
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    instance-of v7, v1, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_a

    move-object v6, v1

    .line 650
    check-cast v6, Landroid/preference/PreferenceActivity;

    .line 651
    .local v6, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v7

    if-nez v7, :cond_a

    .line 652
    :cond_8
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 654
    .local v5, padding:I
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v7, v8, v5, v9}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 656
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 657
    iget-boolean v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_9

    iget-boolean v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mInPickerActivity:Z

    if-eqz v7, :cond_e

    .line 658
    :cond_9
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/16 v8, 0x10

    const/16 v9, 0x14

    invoke-virtual {v7, v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 660
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 666
    :goto_2
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    const/16 v11, 0x15

    invoke-direct {v8, v9, v10, v11}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v0, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 671
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const v8, 0x7f090227

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setTitle(I)V

    .line 672
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/high16 v8, 0x7f03

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setIcon(I)V

    .line 677
    .end local v5           #padding:I
    .end local v6           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_a
    new-instance v7, Lcom/android/sec_settings/wifi/WifiEnabler;

    invoke-direct {v7, v1, v0}, Lcom/android/sec_settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/sec_settings/wifi/WifiEnabler;

    .line 682
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 684
    iget-object v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const/high16 v8, 0x4190

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 685
    iget-object v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0015

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 686
    iget-object v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const/16 v8, 0x30

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 688
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 691
    iget-boolean v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_b

    invoke-static {}, Lcom/android/sec_settings/guide/GuideFragment;->isInGuideMode()Z

    move-result v7

    if-nez v7, :cond_b

    .line 693
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/sec_settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 703
    :cond_b
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/sec_settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 706
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 593
    .end local v0           #actionBarSwitch:Landroid/widget/Switch;
    :cond_c
    iget-boolean v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v7, :cond_d

    .line 594
    const v7, 0x7f070088

    invoke-virtual {p0, v7}, Lcom/android/sec_settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 600
    :cond_d
    const v7, 0x7f070089

    invoke-virtual {p0, v7}, Lcom/android/sec_settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 662
    .restart local v0       #actionBarSwitch:Landroid/widget/Switch;
    .restart local v5       #padding:I
    .restart local v6       #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_e
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/16 v8, 0x10

    const/16 v9, 0x10

    invoke-virtual {v7, v8, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto/16 :goto_2
.end method

.method onAddNetworkPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3144
    iput-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    .line 3148
    iput-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 3149
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->showConfigUi(Lcom/android/sec_settings/wifi/AccessPoint;Z)V

    .line 3150
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 435
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 453
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 2834
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 2835
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->forget()V

    .line 2858
    :cond_0
    :goto_0
    return-void

    .line 2841
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 2851
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    if-nez v0, :cond_2

    .line 2852
    const-string v0, "WifiSettings"

    const-string v1, "onClick SUBMIT button but, mDialog is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2854
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiDialog;->getController()Lcom/android/sec_settings/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->submit(Lcom/android/sec_settings/wifi/WifiConfigController;)V

    goto :goto_0

    .line 2855
    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 2856
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 1002
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1003
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->updateOptionsMenuIcon(Z)V

    .line 1004
    :cond_0
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1005
    return-void

    .line 1003
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 1188
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-nez v1, :cond_1

    .line 1189
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 1239
    :cond_0
    :goto_0
    return v0

    .line 1192
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1239
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 1194
    :pswitch_0
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 1195
    const-string v1, "T wifi zone_secure"

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1196
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1213
    :cond_2
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/sec_settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/sec_settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1214
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/sec_settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1199
    :cond_3
    const-string v1, "ollehWiFi"

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1200
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1216
    :cond_4
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/sec_settings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_5

    .line 1218
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/sec_settings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 1219
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/sec_settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/sec_settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1221
    :cond_5
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/sec_settings/wifi/WifiSettings;->showConfigUi(Lcom/android/sec_settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1226
    :pswitch_1
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/WifiManager;->forget(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1235
    :pswitch_2
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->showConfigUi(Lcom/android/sec_settings/wifi/AccessPoint;Z)V

    goto/16 :goto_0

    .line 1192
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firstRun"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSetupWizardMode:Z

    .line 411
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/sec_settings/wifi/WifiPickerDialog;

    iput-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mInPickerDialog:Z

    .line 412
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/sec_settings/wifi/WifiPickerActivity;

    iput-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mInPickerActivity:Z

    .line 414
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 426
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 1130
    instance-of v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v0, :cond_0

    .line 1131
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 1134
    instance-of v2, v0, Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    .line 1135
    check-cast v0, Lcom/android/sec_settings/wifi/AccessPoint;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    .line 1154
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v0

    .line 1155
    if-nez v0, :cond_1

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1157
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1158
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/AccessPoint;->getLevel()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1161
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v3, :cond_0

    .line 1163
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/sec_settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1164
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    const/4 v0, 0x1

    .line 1167
    :goto_2
    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/sec_settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v2

    .line 1168
    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    .line 1171
    const/16 v0, 0x8

    const v3, 0x7f090246

    invoke-interface {p1, v1, v0, v1, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1175
    :cond_4
    if-nez v2, :cond_0

    .line 1178
    const/16 v0, 0x9

    const v2, 0x7f090247

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 1159
    :cond_5
    const/4 v0, 0x7

    const v2, 0x7f090245

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    :cond_6
    move v0, v1

    .line 1164
    goto :goto_2
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "dialogId"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1446
    packed-switch p1, :pswitch_data_0

    .line 1495
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1449
    :pswitch_1
    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    .line 1450
    .local v3, ap:Lcom/android/sec_settings/wifi/AccessPoint;
    if-nez v3, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1452
    new-instance v3, Lcom/android/sec_settings/wifi/AccessPoint;

    .end local v3           #ap:Lcom/android/sec_settings/wifi/AccessPoint;
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v3, v0, v1}, Lcom/android/sec_settings/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1454
    .restart local v3       #ap:Lcom/android/sec_settings/wifi/AccessPoint;
    iput-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    .line 1458
    :cond_0
    iput-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    .line 1462
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 1466
    new-instance v0, Lcom/android/sec_settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDlgEdit:Z

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/sec_settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/sec_settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    .line 1474
    :goto_1
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/sec_settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    iget v0, v3, Lcom/android/sec_settings/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_1

    .line 1480
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/sec_settings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/sec_settings/guide/GuideFragmentCallback;

    move-result-object v6

    .line 1482
    .local v6, guide:Lcom/android/sec_settings/guide/GuideFragmentCallback;
    if-eqz v6, :cond_1

    .line 1483
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    invoke-interface {v6}, Lcom/android/sec_settings/guide/GuideFragmentCallback;->getOnShowListener()Landroid/content/DialogInterface$OnShowListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/WifiDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1484
    invoke-interface {v6}, Lcom/android/sec_settings/guide/GuideFragmentCallback;->getOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1485
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    invoke-interface {v6}, Lcom/android/sec_settings/guide/GuideFragmentCallback;->getOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/WifiDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1489
    .end local v6           #guide:Lcom/android/sec_settings/guide/GuideFragmentCallback;
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    goto :goto_0

    .line 1469
    :cond_2
    new-instance v0, Lcom/android/sec_settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDlgEdit:Z

    move-object v2, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/sec_settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/sec_settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    goto :goto_1

    .line 1491
    .end local v3           #ap:Lcom/android/sec_settings/wifi/AccessPoint;
    :pswitch_2
    new-instance v0, Lcom/android/sec_settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/android/sec_settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 1493
    :pswitch_3
    new-instance v0, Lcom/android/sec_settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/sec_settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 1446
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/16 v9, 0xa

    const/4 v8, 0x2

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 898
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/sec_settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-nez v0, :cond_3

    .line 899
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    .line 900
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v5

    .line 904
    const/4 v0, 0x6

    const v6, 0x7f090243

    invoke-interface {p1, v3, v0, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    .line 905
    if-eqz v5, :cond_4

    .line 906
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    const v6, 0x7f0200a3

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 907
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 911
    :goto_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 913
    const v0, 0x7f090244

    invoke-interface {p1, v3, v1, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    .line 915
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v0, :cond_6

    .line 916
    const/4 v0, 0x3

    const v6, 0x7f090242

    invoke-interface {p1, v3, v0, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    .line 917
    if-eqz v5, :cond_5

    .line 918
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    const v6, 0x7f0200a7

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v1

    .line 924
    :goto_1
    iget-object v6, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 925
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move v0, v3

    .line 932
    :goto_2
    if-eqz v5, :cond_0

    .line 933
    iget-object v6, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    const v7, 0x7f02009b

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 935
    :cond_0
    iget-object v6, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 936
    iget-object v6, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 959
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/sec_settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v6

    if-ne v6, v2, :cond_8

    .line 961
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    if-eqz v4, :cond_1

    .line 962
    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 966
    :cond_1
    iget-boolean v4, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v4, :cond_7

    .line 967
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 968
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 969
    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 970
    invoke-interface {p1, v9}, Landroid/view/Menu;->removeItem(I)V

    .line 992
    :cond_2
    :goto_3
    if-nez v5, :cond_3

    .line 993
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v8, :cond_9

    :goto_4
    invoke-direct {p0, v2}, Lcom/android/sec_settings/wifi/WifiSettings;->updateOptionsMenuIcon(Z)V

    .line 997
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 998
    return-void

    .line 909
    :cond_4
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    .line 922
    :cond_5
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    const v6, 0x7f02009b

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v2

    goto :goto_1

    .line 928
    :cond_6
    if-nez v5, :cond_a

    move v0, v2

    .line 929
    goto :goto_2

    .line 973
    :cond_7
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_2

    if-ne v0, v2, :cond_2

    .line 974
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 975
    invoke-interface {p1, v9}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_3

    .line 981
    :cond_8
    const v0, 0x7f090240

    invoke-interface {p1, v3, v2, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200a8

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 985
    const v0, 0x7f090241

    invoke-interface {p1, v3, v8, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200a9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3

    :cond_9
    move v2, v3

    .line 993
    goto :goto_4

    :cond_a
    move v0, v3

    goto/16 :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 431
    invoke-super {p0, p1, p2, p3}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1060
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1108
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    :cond_0
    :goto_0
    return v7

    .line 1062
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0

    .line 1065
    :pswitch_2
    invoke-direct {p0, v7}, Lcom/android/sec_settings/wifi/WifiSettings;->dismissDialog(I)V

    .line 1066
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_1

    .line 1067
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09036c

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 1073
    :cond_1
    const-class v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/sec_settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 1077
    :pswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->showDialog(I)V

    goto :goto_0

    .line 1080
    :pswitch_4
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1081
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanner:Lcom/android/sec_settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiSettings$Scanner;->forceScan()V

    .line 1087
    :goto_1
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/sec_settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    move v6, v7

    :cond_2
    move v7, v6

    goto :goto_0

    .line 1083
    :cond_3
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090358

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1092
    :pswitch_5
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->onAddNetworkPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1095
    :catch_0
    move-exception v0

    .line 1096
    const-string v1, "WifiSettings"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1101
    :pswitch_6
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->onAdvancedMenuPressed()V

    goto :goto_0

    .line 1104
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_MANAGE_NETWORK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1060
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 837
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPause()V

    .line 842
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/sec_settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 843
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/sec_settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiEnabler;->pause()V

    .line 845
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 846
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanner:Lcom/android/sec_settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiSettings$Scanner;->pause()V

    .line 848
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_1

    .line 849
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/sec_settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 852
    :cond_1
    sget-object v0, Lcom/android/sec_settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_2

    .line 854
    sget-object v0, Lcom/android/sec_settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 856
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 857
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 858
    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    .line 861
    :cond_3
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 862
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 863
    iput-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    .line 865
    :cond_4
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 1251
    instance-of v1, p2, Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v1, :cond_5

    .line 1252
    check-cast p2, Lcom/android/sec_settings/wifi/AccessPoint;

    iput-object p2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    .line 1257
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/sec_settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1258
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 1260
    const-string v1, "T wifi zone_secure"

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_1

    .line 1261
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1303
    :cond_0
    :goto_0
    return v0

    .line 1264
    :cond_1
    const-string v1, "ollehWiFi"

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-ne v1, v0, :cond_2

    .line 1265
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1272
    :cond_2
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/sec_settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v1

    .line 1273
    if-eqz v1, :cond_0

    .line 1283
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/sec_settings/wifi/AccessPoint;->security:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 1285
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/sec_settings/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 1287
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v3}, Lcom/android/sec_settings/wifi/WifiSettings;->showDialog(Lcom/android/sec_settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1290
    :cond_3
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/sec_settings/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1291
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f090359

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1294
    :cond_4
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-direct {p0, v1, v3}, Lcom/android/sec_settings/wifi/WifiSettings;->showDialog(Lcom/android/sec_settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1297
    :cond_5
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1298
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1299
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->onAddNetworkPressed()V

    goto :goto_0

    .line 1301
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 716
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onResume()V

    .line 718
    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 719
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 720
    .local v2, msg:Landroid/os/Message;
    const/16 v3, 0x1a

    iput v3, v2, Landroid/os/Message;->what:I

    .line 722
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 723
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "enable"

    invoke-virtual {v0, v3, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 724
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 726
    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v3

    if-nez v3, :cond_0

    .line 727
    const-string v3, "WifiSettings"

    const-string v4, "Start scan, start assoc !!!!!!!!!!!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    const-string v3, "sys.edm.keystore_netid"

    invoke-static {v3, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 734
    .local v1, auxNetId:I
    if-eq v1, v7, :cond_1

    .line 735
    iput v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 736
    const-string v3, "sys.edm.keystore_netid"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    :cond_1
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 774
    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 775
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->finish()V

    .line 780
    :cond_2
    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/sec_settings/wifi/WifiEnabler;

    if-eqz v3, :cond_3

    .line 781
    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/sec_settings/wifi/WifiEnabler;

    invoke-virtual {v3}, Lcom/android/sec_settings/wifi/WifiEnabler;->resume()V

    .line 784
    :cond_3
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 785
    iget v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    if-eq v3, v7, :cond_4

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v3

    sget-object v4, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v3, v4, :cond_4

    .line 787
    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget v5, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    iget-object v6, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v3, v4, v5, v6}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 789
    :cond_4
    iput v7, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 791
    iget-boolean v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v3, :cond_5

    .line 792
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/sec_settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 799
    :cond_5
    sget-object v3, Lcom/android/sec_settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v3, :cond_6

    .line 801
    sget-object v3, Lcom/android/sec_settings/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v4, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;I)V

    .line 814
    :cond_6
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 816
    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    invoke-virtual {v3}, Lcom/android/sec_settings/wifi/WifiDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 817
    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    invoke-virtual {v3}, Lcom/android/sec_settings/wifi/WifiDialog;->dismissSpinnerPopup()V

    .line 820
    :cond_7
    sget v3, Lcom/android/sec_settings/wifi/WifiSettings;->mStartWith:I

    if-eqz v3, :cond_8

    .line 821
    sget v3, Lcom/android/sec_settings/wifi/WifiSettings;->mStartWith:I

    invoke-direct {p0, v3}, Lcom/android/sec_settings/wifi/WifiSettings;->startWith(I)V

    .line 822
    sput v8, Lcom/android/sec_settings/wifi/WifiSettings;->mStartWith:I

    .line 824
    :cond_8
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 1042
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1045
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1046
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1047
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 1048
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 1049
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 1050
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    const v1, 0x7f0b02e8

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/WifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    const v1, 0x7f0b032e

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/WifiDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1053
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mDialog:Lcom/android/sec_settings/wifi/WifiDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/WifiDialog;->setSoftKeyboardVisible(Z)V

    .line 1056
    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 869
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onStop()V

    .line 870
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 871
    return-void
.end method

.method refreshAccessPoints()V
    .locals 1

    .prologue
    .line 3132
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3133
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanner:Lcom/android/sec_settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiSettings$Scanner;->resume()V

    .line 3136
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 3137
    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    .prologue
    .line 3178
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3179
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanner:Lcom/android/sec_settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiSettings$Scanner;->resume()V

    .line 3181
    :cond_0
    return-void
.end method

.method submit(Lcom/android/sec_settings/wifi/WifiConfigController;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 2896
    invoke-virtual {p1}, Lcom/android/sec_settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2898
    if-nez v0, :cond_4

    .line 2900
    iget v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mLastCWErrorReason:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mLastCWErrorReason:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/sec_settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->checkCTCSsid(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/sec_settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2903
    const/16 v0, 0xa

    invoke-direct {p0, v0, v3}, Lcom/android/sec_settings/wifi/WifiSettings;->CWHandleCommand(II)I

    .line 2906
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v2, :cond_2

    .line 2909
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/sec_settings/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/sec_settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 2945
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2946
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mScanner:Lcom/android/sec_settings/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/WifiSettings$Scanner;->resume()V

    .line 2948
    :cond_3
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/WifiSettings;->updateAccessPoints()V

    .line 2949
    return-void

    .line 2911
    :cond_4
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v2, :cond_7

    .line 2912
    invoke-virtual {p1}, Lcom/android/sec_settings/wifi/WifiConfigController;->isRetryDialog()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2913
    sget-boolean v1, Lcom/android/sec_settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v1, :cond_5

    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-connect ap id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    :cond_5
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/sec_settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 2915
    :cond_6
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 2916
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 2917
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 2920
    :cond_7
    invoke-virtual {p1}, Lcom/android/sec_settings/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2935
    :cond_8
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v3, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 2937
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/sec_settings/wifi/AccessPoint;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/sec_settings/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2938
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/sec_settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 2941
    :cond_9
    iget-object v1, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mChannel:Landroid/net/wifi/WifiManager$Channel;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v0, v2}, Lcom/android/sec_settings/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiManager$Channel;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0
.end method
