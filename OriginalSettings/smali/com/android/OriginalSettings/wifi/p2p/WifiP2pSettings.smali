.class public Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;
.super Lcom/android/OriginalSettings/SettingsPreferenceFragment;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# static fields
.field private static mAutoGroup:Z

.field private static mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private static mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private static mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAutoFinish:Z

.field private mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectDialog:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDialog;

.field private mConnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mConnectionEnd:Landroid/widget/Button;

.field private mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

.field mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mEditDeviceName:Landroid/widget/EditText;

.field private mEmptyView:Landroid/widget/TextView;

.field private mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mListView:Landroid/widget/ListView;

.field private mMoreDialog:Landroid/app/AlertDialog;

.field private mNoDeviceImage:Landroid/widget/ImageView;

.field private mNoDeviceText:Landroid/widget/TextView;

.field private mPeersBusy:Landroid/preference/PreferenceGroup;

.field private mPeersConnected:Landroid/preference/PreferenceGroup;

.field private mPeersGroup:Landroid/preference/PreferenceGroup;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanClicked:Z

.field private mScanPreference:Landroid/preference/Preference;

.field private mScanTimer:Landroid/os/CountDownTimer;

.field private mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

.field mTempSsid:Ljava/lang/String;

.field private mView:Landroid/webkit/WebView;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWifiP2pSwitchEnabler:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;

.field ssidWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    sput-object v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 134
    const/4 v0, 0x0

    sput-object v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;-><init>()V

    .line 106
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    .line 155
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mTempSsid:Ljava/lang/String;

    .line 156
    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 160
    new-instance v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$1;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 997
    new-instance v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$16;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$16;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->ssidWatcher:Landroid/text/TextWatcher;

    .line 1045
    return-void
.end method

.method static synthetic access$000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mNoDeviceText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mNoDeviceImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    sput-object p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mAutoGroup:Z

    return v0
.end method

.method static synthetic access$1402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    sput-boolean p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mAutoGroup:Z

    return p0
.end method

.method static synthetic access$1500()Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    sput-object p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mConnectDialog:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDialog;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mMoreDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-virtual {p0, p1}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    return-void
.end method

.method static synthetic access$700()Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->addMessagePreference(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mConnectionEnd:Landroid/widget/Button;

    return-object v0
.end method

.method private addMessagePreference(I)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 910
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 911
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 914
    :cond_0
    return-void
.end method

.method private getPreferredConfig()Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 944
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 945
    .local v0, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 947
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 948
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 956
    :goto_0
    return-object v0

    .line 949
    :cond_0
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 950
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x2

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 951
    :cond_1
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 952
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 954
    :cond_2
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0
.end method

.method private isP2pConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 930
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 931
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 933
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_0

    .line 934
    const/4 v0, 0x1

    .line 940
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 936
    goto :goto_0

    .line 937
    :catch_0
    move-exception v0

    .line 938
    const-string v0, "WifiP2pSettings"

    const-string v2, "isP2pConnected - NullPointerException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 940
    goto :goto_0
.end method

.method private isP2pEnabled()Z
    .locals 2

    .prologue
    .line 918
    :try_start_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 919
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 921
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 925
    :goto_0
    return v0

    .line 922
    :catch_0
    move-exception v0

    .line 923
    const-string v0, "WifiP2pSettings"

    const-string v1, "isP2pEnabled - NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setScanTimer(ZZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 960
    if-eqz p1, :cond_1

    .line 961
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 962
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<b><font color="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "</font></b>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanPreference:Landroid/preference/Preference;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 966
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanPreference:Landroid/preference/Preference;

    const v1, 0x7f0b02c6

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 967
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanPreference:Landroid/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 968
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    .line 969
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 971
    const-string v0, "WifiP2pSettings"

    const-string v1, "setScanTimer - true ===> discoverPeersWithFlush one time for 30 sec"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$15;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$15;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeersWithFlush(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 994
    :cond_0
    :goto_0
    return-void

    .line 983
    :cond_1
    const-string v0, "WifiP2pSettings"

    const-string v1, "setScanTimer - false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanPreference:Landroid/preference/Preference;

    const v1, 0x7f0b02c7

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 985
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanPreference:Landroid/preference/Preference;

    const v1, 0x7f0b02c1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 986
    iput-boolean p1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    .line 987
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 990
    if-eqz p2, :cond_0

    .line 991
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestP2pListen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x10

    const/4 v11, -0x2

    const/4 v10, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 278
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 279
    .local v2, intent:Landroid/content/Intent;
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 281
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    instance-of v7, v1, Lmiui/preference/BasePreferenceActivity;

    if-eqz v7, :cond_2

    move-object v4, v1

    .line 282
    check-cast v4, Lmiui/preference/BasePreferenceActivity;

    .line 283
    .local v4, preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    invoke-virtual {v4}, Lmiui/preference/BasePreferenceActivity;->onIsHidingHeaders()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Lmiui/preference/BasePreferenceActivity;->onIsMultiPane()Z

    move-result v7

    if-nez v7, :cond_1

    .line 284
    :cond_0
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 286
    .local v3, padding:I
    invoke-virtual {v0, v10, v10, v3, v10}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 287
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 289
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/16 v9, 0x15

    invoke-direct {v8, v11, v11, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v0, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 295
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const v8, 0x7f0b02af

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setTitle(I)V

    .line 296
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_p2p_ssid"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 298
    .local v6, ssid:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 299
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 308
    .end local v3           #padding:I
    .end local v6           #ssid:Ljava/lang/String;
    :cond_1
    :goto_0
    new-instance v7, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;

    invoke-direct {v7, v1, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pSwitchEnabler:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;

    .line 312
    .end local v4           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    :cond_2
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x102000a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mListView:Landroid/widget/ListView;

    .line 313
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mEmptyView:Landroid/widget/TextView;

    .line 314
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 316
    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 317
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 318
    .local v5, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 319
    iget-object v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanPreference:Landroid/preference/Preference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 326
    .end local v5           #preferenceScreen:Landroid/preference/PreferenceScreen;
    :goto_1
    const-string v7, "AUTO_FINISH"

    invoke-virtual {v2, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    .line 327
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setForcedClick(Z)V

    .line 329
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 330
    return-void

    .line 302
    .restart local v3       #padding:I
    .restart local v4       #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    .restart local v6       #ssid:Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    sget-object v8, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_p2p_ssid"

    sget-object v9, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 322
    .end local v3           #padding:I
    .end local v4           #preferenceActivity:Lmiui/preference/BasePreferenceActivity;
    .end local v6           #ssid:Ljava/lang/String;
    :cond_4
    const v7, 0x7f0b02bd

    invoke-direct {p0, v7}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->addMessagePreference(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    .line 361
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 362
    const v0, 0x7f050048

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->addPreferencesFromResource(I)V

    .line 364
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 371
    .local v6, activity:Landroid/app/Activity;
    const-string v0, "available"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    .line 372
    const-string v0, "connected"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    .line 373
    const-string v0, "busy"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    .line 374
    const-string v0, "scan"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanPreference:Landroid/preference/Preference;

    .line 377
    new-instance v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$2;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$2;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;JJ)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    .line 390
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mView:Landroid/webkit/WebView;

    .line 392
    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 393
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v6, v1, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 395
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_0

    .line 397
    const-string v0, "WifiP2pSettings"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iput-object v7, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 405
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$3;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$3;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mConnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 438
    new-instance v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$4;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$4;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 457
    new-instance v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$5;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$5;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 475
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->setHasOptionsMenu(Z)V

    .line 476
    return-void

    .line 401
    :cond_1
    const-string v0, "WifiP2pSettings"

    const-string v1, "mWifiP2pManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter

    .prologue
    const v3, 0x7f07001b

    const/4 v6, 0x1

    const v5, 0x7f0b0486

    const v4, 0x7f0b0485

    const/4 v1, 0x0

    .line 592
    if-ne p1, v6, :cond_1

    .line 593
    new-instance v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDialog;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mConnectListener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iget-object v3, v3, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mConnectDialog:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDialog;

    .line 595
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mConnectDialog:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pDialog;

    .line 763
    :cond_0
    :goto_0
    return-object v1

    .line 597
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 598
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b02c0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b02d0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 606
    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    .line 607
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b02cb

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b02cc

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 615
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 616
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 617
    const v2, 0x7f0400a9

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 618
    const v0, 0x7f08023e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b02c2

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iget-object v3, v3, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    const v0, 0x7f08023f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b02cd

    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iget-object v3, v3, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b02cf

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$7;

    invoke-direct {v2, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$7;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 635
    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 636
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 637
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b02bf

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$8;

    invoke-direct {v2, p0, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$8;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;[Ljava/lang/String;)V

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mMoreDialog:Landroid/app/AlertDialog;

    .line 655
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 656
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 657
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 658
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mMoreDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 659
    mul-int/lit8 v3, v1, 0x2

    div-int/lit8 v3, v3, 0x5

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 660
    div-int/lit8 v3, v0, 0x5

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 661
    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x5

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 662
    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x5

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 663
    const/16 v0, 0x50

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 664
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mMoreDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 665
    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mMoreDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 667
    :cond_5
    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    .line 668
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 669
    const v2, 0x7f0400aa

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 670
    const v0, 0x7f08023e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    .line 671
    sget-object v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_6

    .line 672
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    sget-object v2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 679
    :goto_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->ssidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 681
    new-instance v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$9;

    invoke-direct {v0, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$9;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 693
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 694
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 695
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b02c2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$11;

    invoke-direct {v3, p0, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$11;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$10;

    invoke-direct {v3, p0, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$10;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 720
    new-instance v2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$12;

    invoke-direct {v2, p0, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$12;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 727
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 729
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 730
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    new-instance v3, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$13;

    invoke-direct {v3, p0, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$13;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto/16 :goto_0

    .line 674
    :cond_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_p2p_ssid"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 676
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 747
    :cond_7
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 749
    if-eqz v0, :cond_8

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_8

    .line 750
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 752
    :cond_8
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b02c9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 753
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mView:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mView:Landroid/webkit/WebView;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 755
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b02c3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 509
    const/4 v0, 0x1

    const v1, 0x7f0b02c2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 513
    const/4 v0, 0x2

    const v1, 0x7f0b02c3

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 517
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 335
    const v1, 0x7f0400a8

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 336
    .local v0, v:Landroid/view/View;
    const v1, 0x7f080237

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mConnectionEnd:Landroid/widget/Button;

    .line 338
    const v1, 0x7f08023c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mNoDeviceText:Landroid/widget/TextView;

    .line 339
    const v1, 0x7f08023b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mNoDeviceImage:Landroid/widget/ImageView;

    .line 356
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 528
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 536
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 530
    :pswitch_0
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto :goto_0

    .line 533
    :pswitch_1
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto :goto_0

    .line 528
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 497
    const-string v0, "WifiP2pSettings"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPause()V

    .line 499
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pSwitchEnabler:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pSwitchEnabler:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->pause()V

    .line 504
    :cond_0
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 505
    return-void
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 11
    .parameter

    .prologue
    const/16 v1, 0x8

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 776
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 778
    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 780
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 781
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 782
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 784
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 785
    const-string v0, "WifiP2pSettings"

    const-string v1, "return, P2P is not enabled..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :goto_0
    return-void

    .line 789
    :cond_0
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mAutoGroup:Z

    if-nez v0, :cond_b

    sget-object v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_b

    .line 790
    :cond_1
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 792
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 793
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mConnectionEnd:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 796
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 797
    :cond_2
    const-string v0, "WifiP2pSettings"

    const-string v1, "no devices found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 799
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 906
    :cond_3
    :goto_1
    sput-object p1, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    goto :goto_0

    .line 802
    :cond_4
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 803
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 808
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    const v1, 0x7f0b02b9

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 809
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 810
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 812
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    const v1, 0x7f0b02bb

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 813
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 814
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 816
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 817
    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v5, :cond_5

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    :cond_5
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v5

    if-nez v5, :cond_7

    .line 819
    sget-object v5, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v9, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 820
    iget-object v5, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    new-instance v9, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 821
    add-int/lit8 v3, v3, 0x1

    .line 832
    :cond_6
    :goto_3
    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v0, v6, :cond_10

    move v0, v6

    :goto_4
    move v1, v0

    .line 833
    goto :goto_2

    .line 826
    :cond_7
    new-instance v9, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v9, v5, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 827
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v9, v4}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->setOrder(I)V

    .line 828
    iget-object v4, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move v4, v5

    goto :goto_3

    .line 836
    :cond_8
    if-gtz v4, :cond_9

    .line 837
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 841
    :cond_9
    if-gtz v3, :cond_a

    .line 842
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 844
    :cond_a
    if-eqz v1, :cond_3

    .line 845
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 846
    invoke-direct {p0, v2, v2}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    goto/16 :goto_1

    .line 851
    :cond_b
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 852
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 854
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 855
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 857
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanPreference:Landroid/preference/Preference;

    const v1, 0x7f0b02c7

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 858
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanPreference:Landroid/preference/Preference;

    const v1, 0x7f0b02c1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 859
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 861
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const v1, 0x7f0b02ba

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 862
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 863
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 865
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mConnectionEnd:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 866
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mConnectionEnd:Landroid/widget/Button;

    new-instance v1, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$14;

    invoke-direct {v1, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$14;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 872
    sget-boolean v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mAutoGroup:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v0, :cond_3

    .line 873
    :cond_c
    sget-object v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 876
    sget-object v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 878
    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 879
    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    new-instance v4, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 884
    :cond_d
    sget-object v0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 887
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 889
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 890
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    new-instance v3, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_6

    .line 896
    :cond_f
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    sget-object v2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 898
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    new-instance v3, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_6

    :cond_10
    move v0, v1

    goto/16 :goto_4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 541
    instance-of v2, p2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 542
    check-cast v2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iput-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    .line 543
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v2, :cond_2

    .line 545
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    .line 573
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanPreference:Landroid/preference/Preference;

    if-ne p2, v2, :cond_1

    .line 574
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    if-nez v2, :cond_6

    .line 575
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 576
    .local v1, preferenceScreen:Landroid/preference/PreferenceScreen;
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 577
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 578
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 579
    sget-object v2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 581
    invoke-direct {p0, v5, v6}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    .line 587
    .end local v1           #preferenceScreen:Landroid/preference/PreferenceScreen;
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 546
    :cond_2
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 548
    :cond_3
    sget-object v2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iget-object v3, v3, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0b02c4

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 554
    :cond_4
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v2, v5, :cond_5

    .line 555
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto :goto_0

    .line 558
    :cond_5
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getPreferredConfig()Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    .line 559
    .local v0, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v2, :cond_0

    .line 560
    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$6;

    invoke-direct {v4, p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings$6;-><init>(Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 583
    .end local v0           #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_6
    iget-boolean v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    if-eqz v2, :cond_1

    .line 584
    invoke-direct {p0, v6, v5}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 521
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 524
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 480
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(), mAutoFinish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", p2p enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", p2p connected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-super {p0}, Lcom/android/OriginalSettings/SettingsPreferenceFragment;->onResume()V

    .line 484
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 486
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->finish()V

    .line 491
    :cond_0
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pSwitchEnabler:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSettings;->mWifiP2pSwitchEnabler:Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/OriginalSettings/wifi/p2p/WifiP2pSwitchEnabler;->resume()V

    .line 493
    :cond_1
    return-void
.end method
