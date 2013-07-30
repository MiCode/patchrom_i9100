.class public Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "WifiP2pDevicePicker.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# static fields
.field private static mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;


# instance fields
.field private customActionBarView:Landroid/view/View;

.field private mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectInProgress:Z

.field private mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsLandscape:Z

.field private mIsTablet:Z

.field private mMultiConnect:Z

.field private mMultiConnectClicked:Z

.field private mMultiConnectFooter:Landroid/widget/TextView;

.field private mNoDevicePref:Landroid/preference/PreferenceGroup;

.field private mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field private mP2pMenu:Landroid/view/MenuItem;

.field private mP2pMultiConnect:Landroid/view/MenuItem;

.field private mPeersBusy:Landroid/preference/PreferenceGroup;

.field private mPeersConnected:Landroid/preference/PreferenceGroup;

.field private mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

.field private mReceivedStickyEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanClicked:Z

.field private mScanTimer:Landroid/os/CountDownTimer;

.field private mSelectAll:Landroid/preference/CheckBoxPreference;

.field private mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mSelectedWifiPeer:Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mThisDevicePref:Landroid/preference/PreferenceGroup;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field protected revertMenuItem:Landroid/view/View;

.field protected revertMenuItemIcon:Landroid/view/View;

.field protected revertMenuItemText:Landroid/view/View;

.field protected saveMenuItem:Landroid/view/View;

.field protected saveMenuItemIcon:Landroid/view/View;

.field protected saveMenuItemText:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    sput-object v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    .line 140
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 141
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 143
    iput-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z

    .line 145
    iput-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 146
    iput-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 152
    iput-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    .line 155
    iput-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mConnectInProgress:Z

    .line 157
    iput-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    .line 158
    iput-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z

    .line 165
    iput-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    .line 166
    iput-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    .line 179
    new-instance v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$1;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->send()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectFooter:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->useCustomActionBar(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/sec_settings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->addThisDevicePreference()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$900()Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method private addThisDevicePreference()V
    .locals 3

    .prologue
    .line 1074
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1075
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1076
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1084
    :cond_0
    :goto_0
    const v1, 0x7f0201f3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 1085
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1087
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1088
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1089
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1090
    return-void

    .line 1078
    :cond_1
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_p2p_device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1080
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1081
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private convertDevAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "addr"

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xc

    const/4 v6, 0x0

    .line 789
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    .line 790
    .local v1, partialMacAddr:Ljava/util/Formatter;
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 791
    .local v2, subString:Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 793
    .local v0, enable:I
    xor-int/lit16 v0, v0, 0x80

    .line 794
    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 796
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 3
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 834
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 835
    .local v0, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 837
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 838
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 846
    :goto_0
    return-object v0

    .line 839
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 840
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x2

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 841
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 842
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 844
    :cond_2
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0
.end method

.method private getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mac"

    .prologue
    const/16 v3, 0x11

    .line 800
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0xe

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 803
    .end local p1
    :cond_0
    return-object p1
.end method

.method private isP2pConnected()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 820
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 821
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 823
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    .line 824
    const/4 v3, 0x1

    .line 830
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v3

    .line 827
    :catch_0
    move-exception v1

    .line 828
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "WifiP2pDevicePicker"

    const-string v5, "isP2pConnected - NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isP2pEnabled()Z
    .locals 5

    .prologue
    .line 808
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 809
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 811
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 815
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 812
    :catch_0
    move-exception v1

    .line 813
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiP2pDevicePicker"

    const-string v4, "isP2pEnabled - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private send()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, -0x1

    const/4 v1, 0x1

    .line 1017
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1018
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0903af

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1070
    :goto_0
    return v0

    .line 1022
    :cond_0
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1025
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1026
    const-string v2, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1027
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    invoke-virtual {v2, v6, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1029
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    :goto_1
    move v0, v1

    .line 1070
    goto :goto_0

    .line 1035
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 1036
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1037
    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    .line 1038
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v3, :cond_2

    .line 1039
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v4, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$8;

    invoke-direct {v5, p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$8;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v3, v4, v0, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_2

    .line 1050
    :cond_3
    iput-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mConnectInProgress:Z

    .line 1052
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1053
    const-string v2, "com.android.settings.wifi.p2p.WifiP2pDeviceList"

    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1054
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    invoke-virtual {v2, v6, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1056
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    goto :goto_1

    .line 1058
    :cond_4
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$9;

    invoke-direct {v3, p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$9;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_1
.end method

.method private setP2pMenu(I)V
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 959
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 960
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->useCustomActionBar(Z)V

    .line 962
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v0, :cond_4

    .line 963
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 964
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 970
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 1014
    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v1

    .line 960
    goto :goto_0

    .line 966
    :cond_4
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemIcon:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 967
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemIcon:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 972
    :pswitch_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v2, 0x7f090387

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 975
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v0, :cond_6

    .line 976
    :cond_5
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v1, 0x7f0200a3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 977
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 982
    :goto_3
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v1, 0x7f090387

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 979
    :cond_6
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 980
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3

    .line 985
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v0, :cond_8

    .line 986
    :cond_7
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v1, 0x7f0200a5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 987
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 992
    :goto_4
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v1, 0x7f09061e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 989
    :cond_8
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 990
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_4

    .line 995
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v0, :cond_a

    .line 996
    :cond_9
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v1, 0x7f0200a2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 997
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1003
    :goto_5
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1004
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v1, 0x7f0903a6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1000
    :cond_a
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1001
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_5

    .line 1007
    :pswitch_4
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1008
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 970
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setScanTimer(ZZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 850
    if-eqz p1, :cond_1

    .line 851
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 852
    sget-object v1, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 853
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 854
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 855
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 856
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v1}, Lcom/android/sec_settings/ProgressCategory;->removeAll()V

    .line 857
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/sec_settings/ProgressCategory;->setProgress(Z)V

    .line 859
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 860
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 861
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 862
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 863
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 868
    iput-boolean p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    .line 869
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 871
    const-string v0, "WifiP2pDevicePicker"

    const-string v1, "setScanTimer - true ===> discoverPeersWithFlush one time for 30 sec"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$7;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$7;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeersWithFlush(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    const-string v0, "WifiP2pDevicePicker"

    const-string v1, "setScanTimer - false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    .line 885
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/sec_settings/ProgressCategory;->setProgress(Z)V

    .line 887
    iput-boolean p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    .line 888
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 891
    if-eqz p2, :cond_0

    .line 892
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestP2pListen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method private showMultiConnectDevices()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 898
    invoke-direct {p0, v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->useCustomActionBar(Z)V

    .line 899
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    .line 901
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    .line 902
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0903ae

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 903
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 904
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 905
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/sec_settings/ProgressCategory;->removeAll()V

    .line 908
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 909
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isInvitationProcedureCapable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 910
    new-instance v4, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 911
    iget-object v5, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v5

    .line 912
    invoke-interface {v5, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    invoke-virtual {v4, v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    .line 915
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 916
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v1, v4}, Lcom/android/sec_settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    :goto_1
    move v1, v0

    .line 917
    goto :goto_0

    .line 920
    :cond_1
    if-lez v1, :cond_2

    .line 921
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 923
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 924
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private useCustomActionBar(Z)V
    .locals 7
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 927
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 929
    if-eqz p1, :cond_3

    .line 930
    iget-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v1, :cond_1

    .line 931
    :cond_0
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemIcon:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 932
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemIcon:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 938
    :goto_0
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 941
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v5, v5, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 944
    iget-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-eqz v1, :cond_2

    .line 945
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 956
    :goto_1
    return-void

    .line 935
    :cond_1
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemIcon:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 936
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemIcon:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 947
    :cond_2
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_1

    .line 950
    :cond_3
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 952
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 953
    const v1, 0x7f0903a3

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 954
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f0b0034

    const/4 v3, 0x1

    .line 304
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 306
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    .line 309
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_1
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 316
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040124

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    .line 318
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    const v4, 0x7f0b0395

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItem:Landroid/view/View;

    .line 319
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    const v4, 0x7f0b0393

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItem:Landroid/view/View;

    .line 320
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    const v4, 0x7f0b0396

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemText:Landroid/view/View;

    .line 321
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItem:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemIcon:Landroid/view/View;

    .line 322
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    const v4, 0x7f0b0394

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemText:Landroid/view/View;

    .line 323
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItem:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemIcon:Landroid/view/View;

    .line 325
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->saveMenuItem:Landroid/view/View;

    new-instance v4, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$2;

    invoke-direct {v4, p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$2;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->revertMenuItem:Landroid/view/View;

    new-instance v4, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$3;

    invoke-direct {v4, p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$3;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->useCustomActionBar(Z)V

    .line 348
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->addThisDevicePreference()V

    .line 350
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setForcedClick(Z)V

    .line 351
    return-void

    .line 309
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "WifiP2pDevicePicker"

    const-string v4, "Fragment not attached to Activity"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x2

    .line 524
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    .line 526
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    .line 527
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x5

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    .line 529
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 530
    return-void

    .line 524
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 526
    goto :goto_1

    .line 527
    :cond_3
    const/4 v0, 0x4

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 365
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 367
    const v0, 0x7f070085

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->addPreferencesFromResource(I)V

    .line 369
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 376
    .local v6, activity:Landroid/app/Activity;
    const-string v0, "available"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/ProgressCategory;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    .line 377
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v7}, Lcom/android/sec_settings/ProgressCategory;->setIgnoreNoDevice(Z)V

    .line 378
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v7}, Lcom/android/sec_settings/ProgressCategory;->setIgnoreMessage(Z)V

    .line 379
    const-string v0, "connected"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    .line 380
    const-string v0, "busy"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    .line 381
    const-string v0, "this_device"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    .line 382
    const-string v0, "no_device"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    .line 384
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 386
    new-instance v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$4;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$4;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;JJ)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    .line 404
    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 405
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v6, v1, v8}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 407
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_1

    .line 409
    const-string v0, "WifiP2pDevicePicker"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iput-object v8, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 420
    :cond_0
    :goto_0
    new-instance v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$5;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$5;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 438
    invoke-virtual {p0, v7}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->setHasOptionsMenu(Z)V

    .line 441
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 442
    return-void

    .line 412
    :cond_1
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0

    .line 416
    :cond_2
    const-string v0, "WifiP2pDevicePicker"

    const-string v1, "mWifiP2pManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const v7, 0x7f0905e3

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 631
    if-ne p1, v4, :cond_1

    .line 632
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090387

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0903a8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0905e4

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 647
    :cond_0
    :goto_0
    return-object v0

    .line 639
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 640
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09036c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09039e

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 645
    .local v0, dialog:Landroid/app/AlertDialog;
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 502
    const v2, 0x7f090387

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    .line 505
    const/4 v2, 0x2

    const v3, 0x7f0903a6

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    .line 507
    iget-boolean v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v2, :cond_2

    .line 508
    :cond_0
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v3, 0x7f0200a3

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 509
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 511
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v3, 0x7f0200a2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 512
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v3, :cond_1

    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 520
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 512
    goto :goto_0

    .line 516
    :cond_2
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 517
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v3, :cond_3

    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v0

    :cond_3
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 356
    const v1, 0x7f040125

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 359
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0b02ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectFooter:Landroid/widget/TextView;

    .line 360
    return-object v0
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 494
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onDetach()V

    .line 495
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mConnectInProgress:Z

    if-nez v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 498
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 534
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 557
    :goto_0
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    .line 536
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->finish()V

    goto :goto_0

    .line 539
    :sswitch_1
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 540
    iget-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    if-nez v1, :cond_1

    .line 541
    invoke-direct {p0, v0, v2}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    goto :goto_1

    .line 542
    :cond_1
    iget-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    if-eqz v1, :cond_0

    .line 543
    invoke-direct {p0, v2, v2}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    goto :goto_1

    .line 546
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->showDialog(I)V

    goto :goto_1

    .line 550
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v1, :cond_0

    .line 551
    iput-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    .line 552
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 553
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->showMultiConnectDevices()V

    goto :goto_1

    .line 534
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 477
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPause()V

    .line 479
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 481
    invoke-direct {p0, v1, v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    .line 486
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 489
    :cond_1
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 490
    return-void

    .line 483
    :cond_2
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mConnectInProgress:Z

    if-nez v0, :cond_0

    .line 484
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    goto :goto_0
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 18
    .parameter "peers"

    .prologue
    .line 651
    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    .line 653
    .local v10, preferenceScreen:Landroid/preference/PreferenceScreen;
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 655
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v15}, Lcom/android/sec_settings/ProgressCategory;->removeAll()V

    .line 656
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 657
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 658
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 660
    invoke-direct/range {p0 .. p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v15

    if-nez v15, :cond_0

    .line 661
    const-string v15, "WifiP2pDevicePicker"

    const-string v16, "return, P2P is not enabled..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :goto_0
    return-void

    .line 665
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v7

    .line 667
    .local v7, devices:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v15

    if-nez v15, :cond_b

    .line 668
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    const v16, 0x7f090379

    invoke-virtual/range {v15 .. v16}, Lcom/android/sec_settings/ProgressCategory;->setTitle(I)V

    .line 669
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/sec_settings/ProgressCategory;->setEnabled(Z)V

    .line 670
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 672
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 674
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 675
    :cond_1
    const-string v15, "WifiP2pDevicePicker"

    const-string v16, "no devices found"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 783
    :cond_2
    :goto_1
    sput-object p1, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    goto :goto_0

    .line 680
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 682
    const/4 v2, 0x0

    .local v2, av_cnt:I
    const/4 v3, 0x0

    .line 684
    .local v3, busy_cnt:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    const v16, 0x7f090379

    invoke-virtual/range {v15 .. v16}, Lcom/android/sec_settings/ProgressCategory;->setTitle(I)V

    .line 685
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/android/sec_settings/ProgressCategory;->setEnabled(Z)V

    .line 686
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 688
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    const v16, 0x7f09037b

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 689
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 690
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 692
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 693
    .local v9, peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v15, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v15, :cond_5

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    :cond_5
    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v15

    if-nez v15, :cond_6

    .line 695
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v15, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v0, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 696
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    new-instance v16, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v9}, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 697
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 702
    :cond_6
    new-instance v11, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v11, v15, v9}, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 707
    .local v11, temp:Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;
    add-int/lit8 v2, v2, 0x1

    .line 708
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v15, v11}, Lcom/android/sec_settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 709
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v0, v11, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_2

    .line 713
    .end local v9           #peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v11           #temp:Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;
    :cond_7
    if-gtz v2, :cond_8

    .line 714
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 716
    :cond_8
    if-lez v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-eqz v15, :cond_a

    .line 717
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 719
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-eqz v15, :cond_2

    .line 720
    invoke-direct/range {p0 .. p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->showMultiConnectDevices()V

    goto/16 :goto_1

    .line 725
    .end local v2           #av_cnt:I
    .end local v3           #busy_cnt:I
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 726
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 727
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 729
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const v16, 0x7f09037a

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 730
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 731
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 733
    const/4 v6, 0x0

    .line 734
    .local v6, devCount:I
    const/4 v15, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    .line 736
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v15, :cond_2

    .line 737
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 738
    const-string v15, "WifiP2pDevicePicker"

    const-string v16, "I am GO"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 741
    .local v4, client:Landroid/net/wifi/p2p/WifiP2pDevice;
    const/4 v15, 0x0

    iput v15, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 742
    new-instance v12, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v12, v15, v4}, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 743
    .local v12, temp_c:Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;
    invoke-interface {v7, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_c

    .line 744
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    .line 746
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15, v12}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 747
    add-int/lit8 v6, v6, 0x1

    .line 748
    goto :goto_3

    .line 750
    .end local v4           #client:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v12           #temp_c:Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 751
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v15, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->convertDevAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 752
    .local v5, convertedAddr:Ljava/lang/String;
    const-string v15, "WifiP2pDevicePicker"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "I am GC, my GO addr : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", converted : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_e
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 756
    .restart local v9       #peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v15, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v0, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    iget-object v15, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 758
    :cond_f
    const/4 v15, 0x0

    iput v15, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 759
    new-instance v14, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v14, v15, v9}, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 760
    .local v14, temp_go:Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;
    invoke-interface {v7, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 761
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    .line 763
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15, v14}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 764
    add-int/lit8 v6, v6, 0x1

    .line 765
    goto :goto_4

    .line 767
    .end local v14           #temp_go:Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v15, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v0, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v15, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v0, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_e

    .line 769
    const/4 v15, 0x0

    iput v15, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 770
    new-instance v13, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v13, v15, v9}, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 771
    .local v13, temp_gc:Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;
    invoke-interface {v7, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 772
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    .line 774
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15, v13}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 775
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 562
    instance-of v3, p2, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    if-eqz v3, :cond_0

    move-object v3, p2

    .line 563
    check-cast v3, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    iput-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedWifiPeer:Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    .line 564
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedWifiPeer:Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 565
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->send()Z

    .line 567
    :cond_0
    instance-of v3, p2, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;

    if-eqz v3, :cond_2

    move-object v1, p2

    .line 568
    check-cast v1, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;

    .line 569
    .local v1, peer:Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 570
    invoke-virtual {v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 571
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    sget v4, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    if-lt v3, v4, :cond_4

    .line 572
    invoke-virtual {v1, v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    .line 573
    invoke-virtual {p0, v7}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->showDialog(I)V

    .line 601
    :cond_1
    :goto_0
    const-string v3, "WifiP2pDevicePicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# of Selected Peers : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    .end local v1           #peer:Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;
    :cond_2
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_3

    .line 604
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v3}, Lcom/android/sec_settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sget v4, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    if-le v3, v4, :cond_a

    .line 605
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 606
    invoke-virtual {p0, v7}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->showDialog(I)V

    .line 626
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 576
    .restart local v1       #peer:Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;
    :cond_4
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, v1, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_0

    .line 579
    :cond_5
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, v1, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    goto :goto_0

    .line 582
    :cond_6
    invoke-virtual {v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 583
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    sget v4, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    if-lt v3, v4, :cond_7

    .line 584
    invoke-virtual {v1, v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    .line 585
    invoke-virtual {p0, v7}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->showDialog(I)V

    goto :goto_0

    .line 588
    :cond_7
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, v1, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 589
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v3}, Lcom/android/sec_settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 591
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 596
    :cond_8
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 597
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 598
    :cond_9
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, v1, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    goto/16 :goto_0

    .line 609
    .end local v1           #peer:Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;
    :cond_a
    const/4 v0, 0x1

    .local v0, i:I
    :goto_2
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v3}, Lcom/android/sec_settings/ProgressCategory;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 610
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v3, v0}, Lcom/android/sec_settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 611
    .local v2, temp:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;

    if-eqz v3, :cond_b

    move-object v1, v2

    .line 612
    check-cast v1, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;

    .line 613
    .restart local v1       #peer:Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    .line 614
    invoke-virtual {v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 615
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, v1, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 609
    .end local v1           #peer:Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;
    :cond_b
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 618
    .restart local v1       #peer:Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;
    :cond_c
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, v1, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    goto :goto_3

    .line 622
    .end local v1           #peer:Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;
    .end local v2           #temp:Landroid/preference/Preference;
    :cond_d
    const-string v3, "WifiP2pDevicePicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SelectAll, # of Selected Peers : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 446
    const-string v0, "WifiP2pDevicePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(), p2p enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", p2p connected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$6;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker$6;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 471
    :cond_0
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onResume()V

    .line 472
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 473
    return-void
.end method
