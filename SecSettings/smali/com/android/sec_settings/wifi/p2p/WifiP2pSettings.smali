.class public Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# static fields
.field private static mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private static mCurrentLeftMenuType:I

.field private static mCurrentRightMenuType:I

.field private static mInvited:Z

.field private static mIsDetached:Z

.field private static mMultiConnectClicked:Z

.field private static mMultiConnectInProgress:Z

.field private static mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private static mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private static mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;


# instance fields
.field private btnBundle:Z

.field private customActionBarView:Landroid/view/View;

.field private isBtnEnabled:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAutoFinish:Z

.field private mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mCancelConnectDialog:Landroid/app/AlertDialog;

.field private mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mDeviceNameDialog:Landroid/app/AlertDialog;

.field private mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mEditDeviceName:Landroid/widget/EditText;

.field private mEmptyView:Landroid/widget/TextView;

.field private mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mHaveSwitch:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsLandscape:Z

.field private mIsMdpiOrLdpi:Z

.field private mIsTablet:Z

.field private mListView:Landroid/widget/ListView;

.field private mMultiButOneDev:Z

.field private mMultiConnect:Z

.field private mMultiConnectFooter:Landroid/widget/TextView;

.field private mNoDevicePref:Landroid/preference/PreferenceGroup;

.field private mP2pMenu:Landroid/view/MenuItem;

.field private mP2pMultiConnect:Landroid/view/MenuItem;

.field private mPeersBusy:Landroid/preference/PreferenceGroup;

.field private mPeersConnected:Landroid/preference/PreferenceGroup;

.field private mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

.field private mReceivedStickyEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSavedDeviceName:Ljava/lang/String;

.field private mScanClicked:Z

.field private mScanDialog:Landroid/app/AlertDialog;

.field private mScanTimer:Landroid/os/CountDownTimer;

.field private mSelectAll:Landroid/preference/CheckBoxPreference;

.field private mSelectedWifiPeer:Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

.field mTempSsid:Ljava/lang/String;

.field private mThisDevicePref:Landroid/preference/PreferenceGroup;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field protected revertMenuItem:Landroid/view/View;

.field protected revertMenuItemIcon:Landroid/view/View;

.field protected revertMenuItemText:Landroid/view/View;

.field protected saveMenuItem:Landroid/view/View;

.field protected saveMenuItemIcon:Landroid/view/View;

.field protected saveMenuItemText:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 152
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    sput-object v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 153
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    sput-object v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 156
    const/4 v0, 0x0

    sput-object v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 163
    sput-boolean v1, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 165
    sput-boolean v1, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    .line 167
    sput-boolean v1, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 183
    sput-boolean v1, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsDetached:Z

    .line 189
    const/4 v0, 0x1

    sput v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCurrentLeftMenuType:I

    .line 190
    const/4 v0, 0x6

    sput v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCurrentRightMenuType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 154
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 161
    iput-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    .line 164
    iput-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z

    .line 166
    iput-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z

    .line 176
    iput-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z

    .line 177
    iput-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->btnBundle:Z

    .line 179
    iput-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    .line 180
    iput-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsMdpiOrLdpi:Z

    .line 181
    iput-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z

    .line 188
    iput-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 201
    iput-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mTempSsid:Ljava/lang/String;

    .line 202
    iput-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 203
    iput-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    .line 204
    iput-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;

    .line 207
    iput-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;

    .line 213
    new-instance v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$1;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Lcom/android/sec_settings/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnect:Z

    return p1
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    sput-boolean p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    return p0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    return v0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    sput-boolean p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$1900()Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->addThisDevicePreference()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->addMessagePreference(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    return v0
.end method

.method static synthetic access$2700()Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z

    return v0
.end method

.method static synthetic access$3000()Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$3002(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    sput-object p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mReceivedStickyEnabled:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->btnBundle:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->btnBundle:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/os/CountDownTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$600()Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$602(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    sput-object p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 92
    sget-boolean v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    sput-boolean p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    return-void
.end method

.method private addMessagePreference(I)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 1259
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 1260
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1263
    :cond_0
    return-void
.end method

.method private addThisDevicePreference()V
    .locals 3

    .prologue
    .line 1642
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1643
    sget-object v1, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1644
    sget-object v1, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1652
    :cond_0
    :goto_0
    const v1, 0x7f0201f3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 1653
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1655
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1656
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1657
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1658
    return-void

    .line 1646
    :cond_1
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_p2p_device_name"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1648
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1649
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private changeActionBar()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v4, 0x0

    const/4 v5, -0x2

    .line 1485
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1487
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-boolean v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    if-eqz v2, :cond_1

    .line 1488
    iget-boolean v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v2, :cond_0

    .line 1490
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1496
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1519
    :goto_1
    return-void

    .line 1492
    :cond_0
    const/16 v2, 0x14

    const/16 v3, 0x10

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1494
    invoke-virtual {v0, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    goto :goto_0

    .line 1498
    :cond_1
    const/16 v1, 0x12

    .line 1499
    .local v1, actionBarFlag:I
    iget-boolean v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1501
    :cond_2
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->saveMenuItemIcon:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1502
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->revertMenuItemIcon:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1508
    :goto_2
    iget-boolean v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v2, :cond_4

    .line 1509
    or-int/lit8 v1, v1, 0x4

    .line 1513
    :goto_3
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 1514
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->customActionBarView:Landroid/view/View;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v4, 0x15

    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_1

    .line 1504
    :cond_3
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->saveMenuItemIcon:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1505
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->revertMenuItemIcon:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1511
    :cond_4
    or-int/lit8 v1, v1, 0x8

    goto :goto_3
.end method

.method private convertDevAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0xe

    const/16 v5, 0xc

    const/4 v4, 0x0

    .line 1248
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 1249
    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1250
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1252
    xor-int/lit16 v1, v1, 0x80

    .line 1253
    const-string v2, "%02x"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 3
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 1293
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 1294
    .local v0, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1296
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1297
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1305
    :goto_0
    return-object v0

    .line 1298
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1299
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x2

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 1300
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1301
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 1303
    :cond_2
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0
.end method

.method private getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x11

    .line 1635
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1636
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

    .line 1638
    :cond_0
    return-object p1
.end method

.method private isP2pConnected()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1279
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1280
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1282
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v2, :cond_0

    .line 1283
    const/4 v0, 0x1

    .line 1289
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1285
    goto :goto_0

    .line 1286
    :catch_0
    move-exception v0

    .line 1287
    const-string v0, "WifiP2pSettings"

    const-string v2, "isP2pConnected - NullPointerException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1289
    goto :goto_0
.end method

.method private isP2pEnabled()Z
    .locals 2

    .prologue
    .line 1267
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1268
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1270
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1274
    :goto_0
    return v0

    .line 1271
    :catch_0
    move-exception v0

    .line 1272
    const-string v0, "WifiP2pSettings"

    const-string v1, "isP2pEnabled - NullPointerException"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setP2pMenu(I)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0200a3

    const/4 v4, 0x5

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1523
    const/4 v0, 0x4

    if-gt p1, v0, :cond_1

    .line 1524
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1525
    sput v3, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCurrentRightMenuType:I

    .line 1526
    :cond_0
    sput p1, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCurrentLeftMenuType:I

    .line 1531
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 1632
    :goto_1
    return-void

    .line 1528
    :cond_1
    sput p1, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCurrentRightMenuType:I

    goto :goto_0

    .line 1533
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsMdpiOrLdpi:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_2

    .line 1534
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1535
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1545
    :goto_2
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v1, 0x7f090387

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1537
    :cond_2
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_4

    .line 1538
    :cond_3
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1539
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2

    .line 1541
    :cond_4
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1542
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2

    .line 1548
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsMdpiOrLdpi:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_5

    .line 1549
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1550
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1560
    :goto_3
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v1, 0x7f090387

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1552
    :cond_5
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_7

    .line 1553
    :cond_6
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1554
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3

    .line 1556
    :cond_7
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1557
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3

    .line 1563
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsMdpiOrLdpi:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_8

    .line 1564
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v1, 0x7f0200a5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1565
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1575
    :goto_4
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v1, 0x7f09061e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1567
    :cond_8
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_a

    .line 1568
    :cond_9
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v1, 0x7f0200a5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1569
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_4

    .line 1571
    :cond_a
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1572
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_4

    .line 1578
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsMdpiOrLdpi:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_b

    .line 1579
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v1, 0x7f02009f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1580
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1590
    :goto_5
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1591
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v1, 0x7f090388

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1582
    :cond_b
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_d

    .line 1583
    :cond_c
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v1, 0x7f02009f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1584
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_5

    .line 1586
    :cond_d
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1587
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_5

    .line 1594
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsMdpiOrLdpi:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_e

    .line 1595
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v1, 0x7f0200a2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1596
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1606
    :goto_6
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1607
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v1, 0x7f0903a6

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1598
    :cond_e
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_10

    .line 1599
    :cond_f
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v1, 0x7f0200a2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1600
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_6

    .line 1602
    :cond_10
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1603
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_6

    .line 1610
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsMdpiOrLdpi:Z

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_11

    .line 1611
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v1, 0x7f02009c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1612
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1622
    :goto_7
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v1, 0x7f0903a7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1623
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1614
    :cond_11
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v0, :cond_13

    .line 1615
    :cond_12
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v1, 0x7f02009c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1616
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_7

    .line 1618
    :cond_13
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1619
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_7

    .line 1626
    :pswitch_6
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1627
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1531
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private setScanTimer(ZZ)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 1310
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScanTimer - scan : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", listen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    if-eqz p1, :cond_1

    .line 1313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    .line 1314
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$15;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$15;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeersWithFlush(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1357
    :cond_0
    :goto_0
    return-void

    .line 1345
    :cond_1
    sget-boolean v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    if-nez v0, :cond_2

    .line 1346
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1347
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/sec_settings/ProgressCategory;->setProgress(Z)V

    .line 1349
    iput-boolean p1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    .line 1350
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1353
    if-eqz p2, :cond_0

    .line 1354
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestP2pListen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method private showConnectingDevices(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 1392
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 1393
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const v1, 0x7f09037a

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 1394
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 1395
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1397
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    const v1, 0x7f0903a9

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 1398
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 1399
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1401
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 1403
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f09036c

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1406
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 1407
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/ProgressCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 1408
    :cond_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/sec_settings/ProgressCategory;->removeAll()V

    .line 1410
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1413
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1417
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1418
    sget-object v7, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v7

    .line 1419
    new-instance v8, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1421
    invoke-interface {v7, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1422
    iget-object v7, v8, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v9, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    iput v9, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1423
    iget v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v9, 0x3

    if-eq v7, v9, :cond_2

    iget v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v7, v10, :cond_3

    .line 1424
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 1425
    iget-object v0, v8, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput v10, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1426
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v8}, Lcom/android/sec_settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    move v0, v1

    move v1, v3

    move v3, v4

    :goto_1
    move v4, v3

    move v3, v1

    move v1, v0

    .line 1435
    goto :goto_0

    .line 1427
    :cond_3
    iget v7, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_4

    .line 1428
    add-int/lit8 v3, v3, 0x1

    .line 1429
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    move v0, v1

    move v1, v3

    move v3, v4

    goto :goto_1

    .line 1430
    :cond_4
    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v0, :cond_5

    .line 1431
    add-int/lit8 v1, v1, 0x1

    .line 1432
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    :cond_5
    move v0, v1

    move v1, v3

    move v3, v4

    goto :goto_1

    .line 1437
    :cond_6
    sget-object v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1438
    const-string v6, "WifiP2pSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "available : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", failed : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", connected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", selected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    if-nez v4, :cond_7

    .line 1444
    iget-object v4, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1445
    :cond_7
    if-nez v1, :cond_8

    .line 1446
    iget-object v4, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1447
    :cond_8
    if-nez v3, :cond_9

    .line 1448
    iget-object v4, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1450
    :cond_9
    add-int v4, v1, v3

    if-ne v4, v0, :cond_c

    .line 1451
    sget-boolean v4, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    if-eqz v4, :cond_a

    if-ne v3, v0, :cond_a

    .line 1453
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$16;

    invoke-direct {v4, p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$16;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1462
    :cond_a
    if-lez v1, :cond_b

    .line 1463
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1465
    :cond_b
    sput-boolean v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 1466
    iput-boolean v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z

    .line 1467
    sput-boolean v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    .line 1473
    :goto_2
    invoke-direct {p0, v2, v2}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    .line 1475
    sget-boolean v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    if-eqz v0, :cond_d

    .line 1476
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    const v1, 0x7f0903b1

    invoke-virtual {v0, v10, v1}, Lcom/android/sec_settings/ProgressCategory;->setProgressText(ZI)V

    .line 1477
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v10}, Lcom/android/sec_settings/ProgressCategory;->setProgress(Z)V

    .line 1482
    :goto_3
    return-void

    .line 1469
    :cond_c
    sput-boolean v10, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 1470
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    goto :goto_2

    .line 1479
    :cond_d
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/sec_settings/ProgressCategory;->setProgressText(ZI)V

    .line 1480
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/sec_settings/ProgressCategory;->setProgress(Z)V

    goto :goto_3
.end method

.method private showMultiConnectDevices()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1361
    iput-boolean v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 1362
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    .line 1363
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1365
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    .line 1366
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f0903ae

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 1367
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOrder(I)V

    .line 1368
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1369
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/sec_settings/ProgressCategory;->removeAll()V

    .line 1372
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

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

    .line 1373
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isInvitationProcedureCapable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1374
    new-instance v4, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1375
    sget-object v5, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v5

    .line 1376
    invoke-interface {v5, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1377
    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    .line 1379
    :cond_0
    add-int/lit8 v0, v1, 0x1

    .line 1380
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v1, v4}, Lcom/android/sec_settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    :goto_1
    move v1, v0

    .line 1381
    goto :goto_0

    .line 1384
    :cond_1
    if-lez v1, :cond_2

    .line 1385
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1387
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1388
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public connectFromMultiView()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 891
    sget-object v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 892
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0903af

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 925
    :goto_0
    return v0

    .line 896
    :cond_0
    sget-object v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 897
    iput-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z

    .line 898
    sget-object v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 899
    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    .line 900
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v3, :cond_1

    .line 901
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v4, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$8;

    invoke-direct {v5, p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$8;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v3, v4, v0, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_1

    .line 912
    :cond_2
    iput-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 913
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    :goto_2
    move v0, v1

    .line 925
    goto :goto_0

    .line 915
    :cond_3
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$9;

    invoke-direct {v3, p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$9;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x10

    const/4 v10, 0x1

    .line 411
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 412
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 414
    .local v3, intent:Landroid/content/Intent;
    instance-of v7, v0, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_2

    move-object v4, v0

    .line 415
    check-cast v4, Landroid/preference/PreferenceActivity;

    .line 416
    .local v4, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v7

    if-nez v7, :cond_1

    .line 417
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 421
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const v8, 0x7f09036c

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setTitle(I)V

    .line 424
    :cond_1
    invoke-static {v0}, Lcom/android/sec_settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    .line 426
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_p2p_device_name"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 428
    .local v6, ssid:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 429
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_p2p_device_name"

    sget-object v9, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v9, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 434
    .end local v4           #preferenceActivity:Landroid/preference/PreferenceActivity;
    .end local v6           #ssid:Ljava/lang/String;
    :cond_2
    if-eqz p1, :cond_3

    const-string v7, "PEER_STATE"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 435
    const-string v7, "PEER_STATE"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 436
    .local v1, device:Landroid/net/wifi/p2p/WifiP2pDevice;
    new-instance v7, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v7, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    .line 438
    .end local v1           #device:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_3
    if-eqz p1, :cond_4

    const-string v7, "DEV_NAME"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 439
    const-string v7, "DEV_NAME"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSavedDeviceName:Ljava/lang/String;

    .line 443
    :cond_4
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x102000a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mListView:Landroid/widget/ListView;

    .line 444
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mEmptyView:Landroid/widget/TextView;

    .line 445
    iget-object v7, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mListView:Landroid/widget/ListView;

    iget-object v8, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 447
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 448
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 450
    .local v5, preferenceScreen:Landroid/preference/PreferenceScreen;
    iget-object v7, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    const v8, 0x7f090379

    invoke-virtual {v7, v8}, Lcom/android/sec_settings/ProgressCategory;->setTitle(I)V

    .line 451
    iget-object v7, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v7, v10}, Lcom/android/sec_settings/ProgressCategory;->setEnabled(Z)V

    .line 452
    iget-object v7, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 457
    .end local v5           #preferenceScreen:Landroid/preference/PreferenceScreen;
    :goto_0
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v2, v7, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 458
    .local v2, dpi:I
    iget-boolean v7, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v7, :cond_6

    const/16 v7, 0xa0

    if-eq v2, v7, :cond_5

    const/16 v7, 0x78

    if-ne v2, v7, :cond_6

    .line 460
    :cond_5
    iput-boolean v10, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsMdpiOrLdpi:Z

    .line 463
    :cond_6
    const-string v7, "AUTO_FINISH"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    .line 464
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/ListView;->setForcedClick(Z)V

    .line 466
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 467
    return-void

    .line 454
    .end local v2           #dpi:I
    :cond_7
    const v7, 0x7f090382

    invoke-direct {p0, v7}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->addMessagePreference(I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 879
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    .line 881
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    .line 882
    sget v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCurrentLeftMenuType:I

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 883
    sget v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCurrentRightMenuType:I

    if-eqz v0, :cond_0

    .line 884
    sget v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCurrentRightMenuType:I

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 886
    :cond_0
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 887
    return-void

    .line 879
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const v12, 0x7f0b0034

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 481
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 482
    if-eqz p1, :cond_0

    .line 483
    const-string v0, "isBtnEnabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z

    .line 484
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z

    if-eqz v0, :cond_0

    .line 485
    iput-boolean v10, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->btnBundle:Z

    .line 488
    :cond_0
    const v0, 0x7f070087

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->addPreferencesFromResource(I)V

    .line 490
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 497
    .local v6, activity:Landroid/app/Activity;
    const-string v0, "available"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/ProgressCategory;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    .line 498
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v10}, Lcom/android/sec_settings/ProgressCategory;->setIgnoreNoDevice(Z)V

    .line 499
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v10}, Lcom/android/sec_settings/ProgressCategory;->setIgnoreMessage(Z)V

    .line 500
    const-string v0, "connected"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    .line 501
    const-string v0, "busy"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    .line 503
    const-string v0, "this_device"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    .line 504
    const-string v0, "no_device"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    .line 506
    new-instance v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$2;

    const-wide/16 v2, 0x7530

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$2;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;JJ)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanTimer:Landroid/os/CountDownTimer;

    .line 525
    const-string v0, "layout_inflater"

    invoke-virtual {v6, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 526
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f040124

    invoke-virtual {v8, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->customActionBarView:Landroid/view/View;

    .line 528
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->customActionBarView:Landroid/view/View;

    const v1, 0x7f0b0395

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->saveMenuItem:Landroid/view/View;

    .line 529
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->customActionBarView:Landroid/view/View;

    const v1, 0x7f0b0393

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->revertMenuItem:Landroid/view/View;

    .line 530
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->customActionBarView:Landroid/view/View;

    const v1, 0x7f0b0396

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->saveMenuItemText:Landroid/view/View;

    .line 531
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->saveMenuItem:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->saveMenuItemIcon:Landroid/view/View;

    .line 532
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->customActionBarView:Landroid/view/View;

    const v1, 0x7f0b0394

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->revertMenuItemText:Landroid/view/View;

    .line 533
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->revertMenuItem:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->revertMenuItemIcon:Landroid/view/View;

    .line 535
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->saveMenuItem:Landroid/view/View;

    new-instance v1, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$3;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$3;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 543
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->revertMenuItem:Landroid/view/View;

    new-instance v1, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$4;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$4;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 556
    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 557
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_3

    .line 558
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v6, v1, v11}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 559
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_1

    .line 561
    const-string v0, "WifiP2pSettings"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iput-object v11, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 568
    :cond_1
    :goto_0
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 569
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 570
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 571
    .local v9, msg:Landroid/os/Message;
    const/16 v0, 0x12

    iput v0, v9, Landroid/os/Message;->what:I

    .line 573
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 574
    .local v7, args:Landroid/os/Bundle;
    const-string v0, "stop"

    invoke-virtual {v7, v0, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 575
    iput-object v7, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 576
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v9}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 580
    .end local v7           #args:Landroid/os/Bundle;
    .end local v9           #msg:Landroid/os/Message;
    :cond_2
    new-instance v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$5;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$5;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 599
    new-instance v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$6;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$6;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 638
    invoke-virtual {p0, v10}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setHasOptionsMenu(Z)V

    .line 639
    return-void

    .line 565
    :cond_3
    const-string v0, "WifiP2pSettings"

    const-string v1, "mWifiP2pManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const v4, 0x7f0905e4

    const v7, 0x7f0905e3

    const/4 v1, 0x0

    .line 930
    if-ne p1, v5, :cond_0

    .line 931
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090388

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f090399

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 938
    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;

    .line 1086
    :goto_0
    return-object v0

    .line 941
    :cond_0
    if-ne p1, v6, :cond_1

    .line 942
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090387

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0903a8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 949
    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 953
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 954
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090381

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f090392

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCancelConnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 960
    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCancelConnectDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 962
    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    .line 963
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09036c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09039e

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 969
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 970
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 971
    const v2, 0x7f040126

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 972
    const v0, 0x7f0b0398

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f09038a

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 973
    const v0, 0x7f0b0342

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 974
    const v0, 0x7f0b0399

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f090362

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 975
    const v0, 0x7f0b0319

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090123

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$10;

    invoke-direct {v2, p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$10;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 985
    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mAlertDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 987
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 988
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 989
    const v2, 0x7f040127

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 990
    const v0, 0x7f0b0342

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    .line 991
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 992
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    const/16 v2, 0x4000

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 993
    sget-object v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_5

    .line 994
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    sget-object v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    :goto_1
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1002
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 1003
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1005
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090377

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$12;

    invoke-direct {v3, p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$12;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$11;

    invoke-direct {v3, p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$11;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1031
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1032
    new-instance v1, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$13;

    invoke-direct {v1, p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$13;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1045
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1047
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 1048
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    new-instance v3, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$14;

    invoke-direct {v3, p0, v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$14;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;Landroid/widget/Button;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1083
    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mDeviceNameDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 996
    :cond_5
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_p2p_device_name"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 998
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_6
    move-object v0, v1

    .line 1086
    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 8
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v7, 0x7f0200a2

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 715
    :try_start_0
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_0

    move v3, v1

    :goto_0
    iput-boolean v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    :goto_1
    const v3, 0x7f090387

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    .line 724
    const v3, 0x7f0903a6

    invoke-interface {p1, v2, v5, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    .line 727
    iget-boolean v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsMdpiOrLdpi:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v3, :cond_2

    .line 728
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v4, 0x7f0200a3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 729
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 731
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 732
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    sget-boolean v4, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-nez v4, :cond_1

    :goto_2
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 745
    :goto_3
    const/4 v1, 0x3

    const v3, 0x7f090377

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v3, 0x7f02009e

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v3

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 749
    const/4 v1, 0x4

    const v3, 0x7f09038c

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v3, 0x7f0200a0

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 752
    return-void

    :cond_0
    move v3, v2

    .line 715
    goto :goto_0

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v3, "WifiP2pSettings"

    const-string v4, "Fragment not attached to Activity"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :cond_1
    move v1, v2

    .line 732
    goto :goto_2

    .line 735
    :cond_2
    iget-boolean v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsLandscape:Z

    if-eqz v3, :cond_4

    .line 736
    :cond_3
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    const v4, 0x7f0200a3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 737
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 740
    :cond_4
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 741
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mP2pMultiConnect:Landroid/view/MenuItem;

    sget-boolean v4, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-nez v4, :cond_5

    :goto_4
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 472
    const v1, 0x7f040123

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 475
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0b02ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;

    .line 476
    return-object v0
.end method

.method public onDetach()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 692
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onDetach()V

    .line 694
    sget-boolean v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsDetached:Z

    if-eqz v2, :cond_1

    .line 695
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 696
    sput-boolean v5, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 697
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 700
    :cond_0
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 701
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 702
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x12

    iput v2, v1, Landroid/os/Message;->what:I

    .line 704
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 705
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "stop"

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 706
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 707
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 710
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 764
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 804
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 766
    :pswitch_0
    sget-boolean v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    if-eqz v0, :cond_1

    .line 767
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    :cond_0
    :goto_1
    move v0, v7

    .line 778
    goto :goto_0

    .line 769
    :cond_1
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 770
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    goto :goto_1

    .line 772
    :cond_2
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    if-nez v0, :cond_3

    .line 773
    invoke-direct {p0, v7, v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    goto :goto_1

    .line 774
    :cond_3
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    if-eqz v0, :cond_0

    .line 775
    invoke-direct {p0, v6, v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    goto :goto_1

    .line 780
    :pswitch_1
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 781
    invoke-virtual {p0, v7}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    :cond_4
    :goto_2
    move v0, v7

    .line 787
    goto :goto_0

    .line 782
    :cond_5
    sget-boolean v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-nez v0, :cond_4

    .line 783
    sput-boolean v7, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 784
    sget-object v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 785
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->showMultiConnectDevices()V

    goto :goto_2

    .line 789
    :pswitch_2
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_6

    .line 790
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    :cond_6
    move v0, v7

    .line 791
    goto :goto_0

    .line 793
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_7

    .line 794
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/sec_settings/wifi/p2p/WifiP2pHelp;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09038c

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_3
    move v0, v7

    .line 802
    goto :goto_0

    .line 800
    :cond_7
    const-class v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pHelp;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_3

    .line 764
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 669
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPause()V

    .line 671
    sput-boolean v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsDetached:Z

    .line 673
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 674
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 675
    iput-boolean v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 676
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    .line 678
    :cond_0
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 679
    invoke-direct {p0, v1, v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    .line 687
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 688
    return-void

    .line 681
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isInactiveState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 682
    invoke-direct {p0, v1, v2}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    goto :goto_0

    .line 684
    :cond_3
    invoke-direct {p0, v1, v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    goto :goto_0
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 13
    .parameter

    .prologue
    const/16 v12, 0x8

    const/4 v11, 0x2

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1101
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1102
    const-string v0, "WifiP2pSettings"

    const-string v1, "return, P2P is not enabled..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    :goto_0
    return-void

    .line 1106
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 1107
    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 1109
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/sec_settings/ProgressCategory;->removeAll()V

    .line 1110
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1111
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1112
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 1114
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiButOneDev:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectInProgress:Z

    if-eqz v0, :cond_2

    .line 1115
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->showConnectingDevices(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    goto :goto_0

    .line 1119
    :cond_2
    sget-object v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1120
    :cond_3
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    const v1, 0x7f090379

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/ProgressCategory;->setTitle(I)V

    .line 1121
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v5}, Lcom/android/sec_settings/ProgressCategory;->setEnabled(Z)V

    .line 1122
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1123
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1125
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1126
    :cond_4
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1242
    :cond_5
    :goto_1
    sput-object p1, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    goto :goto_0

    .line 1130
    :cond_6
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1135
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    const v1, 0x7f09037b

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 1136
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 1137
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1139
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1140
    iget-object v8, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v8, :cond_7

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    :cond_7
    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v8

    if-nez v8, :cond_9

    .line 1142
    sget-object v8, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v8, v8, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v9, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1143
    iget-object v8, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    new-instance v9, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1144
    add-int/lit8 v3, v3, 0x1

    .line 1153
    :cond_8
    :goto_3
    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v0, v5, :cond_16

    move v0, v5

    :goto_4
    move v1, v0

    .line 1154
    goto :goto_2

    .line 1147
    :cond_9
    new-instance v8, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1148
    add-int/lit8 v4, v4, 0x1

    .line 1149
    iget-object v9, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v9, v8}, Lcom/android/sec_settings/ProgressCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1150
    iget-object v9, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v8, v8, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v9, v8}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_3

    .line 1158
    :cond_a
    if-lez v3, :cond_b

    sget-boolean v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_c

    .line 1159
    :cond_b
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1161
    :cond_c
    sget-boolean v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_d

    .line 1162
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->showMultiConnectDevices()V

    .line 1164
    :cond_d
    if-eqz v1, :cond_f

    .line 1165
    sput-boolean v5, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 1166
    invoke-direct {p0, v2, v2}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setScanTimer(ZZ)V

    .line 1167
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1168
    sget-boolean v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_e

    .line 1169
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 1170
    sput-boolean v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 1171
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1172
    iput-boolean v5, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 1173
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    .line 1175
    :cond_e
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    const v1, 0x7f0903b1

    invoke-virtual {v0, v5, v1}, Lcom/android/sec_settings/ProgressCategory;->setProgressText(ZI)V

    .line 1176
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v5}, Lcom/android/sec_settings/ProgressCategory;->setProgress(Z)V

    goto/16 :goto_1

    .line 1178
    :cond_f
    sput-boolean v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 1179
    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mScanClicked:Z

    if-nez v0, :cond_10

    .line 1180
    invoke-direct {p0, v11}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1182
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/sec_settings/ProgressCategory;->setProgressText(ZI)V

    .line 1183
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/sec_settings/ProgressCategory;->setProgress(Z)V

    .line 1186
    :cond_10
    sget-boolean v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-nez v0, :cond_5

    .line 1187
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    goto/16 :goto_1

    .line 1191
    :cond_11
    const-string v0, "WifiP2pSettings"

    const-string v1, "show connected devices"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1193
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1194
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 1199
    sget-boolean v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_12

    .line 1200
    sput-boolean v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    .line 1201
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectFooter:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1202
    iput-boolean v5, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 1203
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    .line 1206
    :cond_12
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const v1, 0x7f09037a

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 1207
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 1208
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 1210
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/sec_settings/ProgressCategory;->setProgressText(ZI)V

    .line 1211
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/sec_settings/ProgressCategory;->setProgress(Z)V

    .line 1212
    sput-boolean v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 1213
    invoke-direct {p0, v11}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1214
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->setP2pMenu(I)V

    .line 1216
    sget-object v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v0, :cond_5

    .line 1217
    sget-object v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1218
    const-string v0, "WifiP2pSettings"

    const-string v1, "I am GO"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    sget-object v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1221
    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1222
    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    new-instance v4, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 1225
    :cond_13
    sget-object v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1226
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->convertDevAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1227
    const-string v0, "WifiP2pSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "I am GC, my GO addr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", converted : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1231
    iget-object v4, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1233
    :cond_15
    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1234
    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersConnected:Landroid/preference/PreferenceGroup;

    new-instance v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_16
    move v0, v1

    goto/16 :goto_4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x6

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 809
    instance-of v0, p2, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 810
    check-cast v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    iput-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    .line 811
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-nez v0, :cond_4

    .line 812
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    .line 832
    :cond_0
    :goto_0
    instance-of v0, p2, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 833
    check-cast v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;

    .line 834
    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 835
    sget-object v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    sget v3, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    if-lt v2, v3, :cond_7

    .line 836
    invoke-virtual {v0, v5}, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    .line 837
    invoke-virtual {p0, v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    .line 850
    :cond_1
    :goto_1
    const-string v0, "WifiP2pSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# of Selected Peers : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_2
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_3

    .line 853
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/sec_settings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sget v2, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    if-le v0, v2, :cond_a

    .line 854
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 855
    invoke-virtual {p0, v6}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V

    .line 874
    :cond_3
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 813
    :cond_4
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 814
    :cond_5
    sget-object v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    iget-object v2, v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 815
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090384

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 818
    :cond_6
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    .line 819
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v2, :cond_0

    .line 820
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$7;

    invoke-direct {v4, p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings$7;-><init>(Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_0

    .line 839
    :cond_7
    sget-object v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v0, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 840
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/sec_settings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sget-object v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 842
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 846
    :cond_8
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 847
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 848
    :cond_9
    sget-object v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v0, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    goto/16 :goto_1

    .line 858
    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0}, Lcom/android/sec_settings/ProgressCategory;->getPreferenceCount()I

    move-result v0

    if-ge v1, v0, :cond_d

    .line 859
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mPeersGroup:Lcom/android/sec_settings/ProgressCategory;

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/ProgressCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 860
    instance-of v2, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;

    if-eqz v2, :cond_b

    .line 861
    check-cast v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;

    .line 862
    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->setChecked(Z)V

    .line 863
    invoke-virtual {v0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 864
    sget-object v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v0, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 858
    :cond_b
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 866
    :cond_c
    sget-object v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v0, v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v2, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    goto :goto_4

    .line 870
    :cond_d
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SelectAll, # of Selected Peers : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 756
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 757
    .local v0, enableMenu:Z
    :goto_0
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 759
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 760
    return-void

    .line 756
    .end local v0           #enableMenu:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 643
    const-string v0, "WifiP2pSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(), mAutoFinish : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", p2p enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isP2pEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", p2p connected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onResume()V

    .line 647
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 649
    sput-boolean v3, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mIsDetached:Z

    .line 651
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_2

    .line 653
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isInactiveState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    sput-boolean v3, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mInvited:Z

    .line 656
    :cond_0
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mAutoFinish:Z

    if-eqz v0, :cond_1

    .line 657
    invoke-virtual {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->finish()V

    .line 659
    :cond_1
    sget-boolean v0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mMultiConnectClicked:Z

    if-eqz v0, :cond_3

    .line 660
    iput-boolean v3, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    .line 663
    :goto_0
    invoke-direct {p0}, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->changeActionBar()V

    .line 665
    :cond_2
    return-void

    .line 662
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mHaveSwitch:Z

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    if-eqz v0, :cond_0

    .line 1092
    const-string v0, "PEER_STATE"

    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mSelectedWifiPeer:Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/sec_settings/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 1095
    const-string v0, "DEV_NAME"

    iget-object v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    :cond_1
    const-string v0, "isBtnEnabled"

    iget-boolean v1, p0, Lcom/android/sec_settings/wifi/p2p/WifiP2pSettings;->isBtnEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1098
    return-void
.end method
