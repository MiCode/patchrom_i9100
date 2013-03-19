.class public Lcom/android/settings/wifi/mobileap/WifiApLanSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApLanSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDhcpEnable:Z

.field private mDhcpEnableCBPref:Landroid/preference/CheckBoxPreference;

.field private mDhcpEndIp:Ljava/lang/String;

.field private mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

.field private mDhcpLeaseTime:I

.field private mDhcpLeaseTimeETPref:Landroid/preference/EditTextPreference;

.field private mDhcpMaxUser:I

.field private mDhcpMaxUserETPref:Landroid/preference/EditTextPreference;

.field private mDhcpStartIp:Ljava/lang/String;

.field private mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

.field private mIsTablet:Z

.field private mLocalIp:Ljava/lang/String;

.field private mLocalIpETPref:Landroid/preference/EditTextPreference;

.field private mMenuItemCancel:Landroid/view/MenuItem;

.field private mMenuItemSave:Landroid/view/MenuItem;

.field private mPreferenceKeys:[Ljava/lang/String;

.field private mServerConfig:Landroid/net/DhcpServerConfiguration;

.field private mSubnetmask:Ljava/lang/String;

.field private mSubnetmaskETPref:Landroid/preference/EditTextPreference;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 47
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "wifiap_local_ip_addrs"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "wifiap_local_subnetmask"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "wifiap_dhcp_enable"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "wifiap_dhcp_start_ip"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "wifiap_dhcp_end_ip"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "wifiap_dhcp_lease_time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "wifiap_dhcp_max_user"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mPreferenceKeys:[Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->saveAndFinishServerSettings()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->readServerSettings()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->fillLayout()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/net/DhcpServerConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLocalServerConfig()Landroid/net/DhcpServerConfiguration;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->prefs:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/net/DhcpServerConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->convertToSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Landroid/preference/EditTextPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIpETPref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    return-object p1
.end method

.method private convertToSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "referenceIP"
    .parameter "targetIP"
    .parameter "subnetMask"

    .prologue
    .line 493
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v0

    .line 494
    .local v0, intReferenceIP:I
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v2

    .line 495
    .local v2, intTargetIP:I
    invoke-direct {p0, p3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v1

    .line 497
    .local v1, intSubnetMask:I
    and-int v3, v0, v1

    .line 498
    .local v3, networkAddress:I
    xor-int/lit8 v4, v1, -0x1

    and-int/2addr v2, v4

    .line 499
    or-int/2addr v2, v3

    .line 501
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->intToIp(I)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private fillLayout()V
    .locals 6

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIpETPref:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIpETPref:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmaskETPref:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmaskETPref:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnableCBPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnable:Z

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 155
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnableCBPref:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f090324

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 156
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnable:Z

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTimeETPref:Landroid/preference/EditTextPreference;

    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTimeETPref:Landroid/preference/EditTextPreference;

    const v2, 0x7f090326

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUserETPref:Landroid/preference/EditTextPreference;

    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUserETPref:Landroid/preference/EditTextPreference;

    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 170
    return-void

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLastNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, endIP:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getLastNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "anyIP"
    .parameter "subnetMask"

    .prologue
    .line 505
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v1

    .line 506
    .local v1, intanyIP:I
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v0

    .line 508
    .local v0, intSubnetMask:I
    xor-int/lit8 v2, v0, -0x1

    or-int/2addr v1, v2

    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->intToIp(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getLocalServerConfig()Landroid/net/DhcpServerConfiguration;
    .locals 3

    .prologue
    .line 539
    const-string v1, "WifiApLanSettings"

    const-string v2, "getServerConfig"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    new-instance v0, Landroid/net/DhcpServerConfiguration;

    invoke-direct {v0}, Landroid/net/DhcpServerConfiguration;-><init>()V

    .line 542
    .local v0, mCurrentServerConfig:Landroid/net/DhcpServerConfiguration;
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    .line 543
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    .line 544
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnable:Z

    iput-boolean v1, v0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    .line 545
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    .line 547
    iget-boolean v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnable:Z

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    .line 553
    :goto_0
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I

    iput v1, v0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    .line 554
    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I

    iput v1, v0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    .line 555
    return-object v0

    .line 550
    :cond_0
    const-string v1, "static"

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    goto :goto_0
.end method

.method private intToIp(I)Ljava/lang/String;
    .locals 2
    .parameter "i"

    .prologue
    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    and-int/lit16 v1, p1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private ipToInt(Ljava/lang/String;)I
    .locals 7
    .parameter "addr"

    .prologue
    const/4 v6, 0x4

    const/4 v4, -0x1

    .line 512
    if-nez p1, :cond_1

    .line 528
    :cond_0
    :goto_0
    return v4

    .line 515
    :cond_1
    const-string v5, "\\."

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, addrArray:[Ljava/lang/String;
    array-length v5, v0

    if-ne v5, v6, :cond_0

    .line 520
    new-array v3, v6, [I

    .line 521
    .local v3, ipOct:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 523
    :try_start_0
    aget-object v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 524
    :catch_0
    move-exception v1

    .line 525
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 528
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const/4 v4, 0x0

    aget v4, v3, v4

    shl-int/lit8 v4, v4, 0x18

    const/4 v5, 0x1

    aget v5, v3, v5

    shl-int/lit8 v5, v5, 0x10

    add-int/2addr v4, v5

    const/4 v5, 0x2

    aget v5, v3, v5

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    const/4 v5, 0x3

    aget v5, v3, v5

    add-int/2addr v4, v5

    goto :goto_0
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "testIp"

    .prologue
    .line 455
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 456
    const/4 v1, 0x0

    .line 459
    :goto_0
    return v1

    .line 458
    :cond_0
    const-string v1, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 459
    .local v0, validIp:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "firstIp"
    .parameter "secondIp"
    .parameter "subnetMask"

    .prologue
    .line 485
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v0

    .line 486
    .local v0, intFirstIp:I
    invoke-direct {p0, p2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v1

    .line 487
    .local v1, intSecondIp:I
    invoke-direct {p0, p3}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v2

    .line 489
    .local v2, intSubnetMask:I
    and-int v3, v0, v2

    and-int v4, v1, v2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isValidSubnetMask(Ljava/lang/String;)Z
    .locals 7
    .parameter "subnet"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 463
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->ipToInt(Ljava/lang/String;)I

    move-result v2

    .line 464
    .local v2, intsubnet:I
    if-eqz v2, :cond_0

    const v6, 0xffff

    xor-int/2addr v6, v2

    if-eqz v6, :cond_0

    const/4 v6, -0x1

    if-ne v2, v6, :cond_2

    :cond_0
    move v4, v5

    .line 481
    :cond_1
    :goto_0
    return v4

    .line 467
    :cond_2
    const v3, 0x7fffffff

    .line 468
    .local v3, testMask:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v6, 0x1f

    if-ge v1, v6, :cond_5

    .line 469
    ushr-int/lit8 v2, v2, 0x1

    and-int/lit8 v6, v2, 0x1

    if-ne v6, v4, :cond_3

    move v0, v4

    .line 470
    .local v0, bitValue:Z
    :goto_2
    if-eqz v0, :cond_4

    .line 471
    xor-int v6, v2, v3

    if-eqz v6, :cond_1

    move v4, v5

    .line 474
    goto :goto_0

    .end local v0           #bitValue:Z
    :cond_3
    move v0, v5

    .line 469
    goto :goto_2

    .line 477
    .restart local v0       #bitValue:Z
    :cond_4
    ushr-int/lit8 v3, v3, 0x1

    .line 468
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #bitValue:Z
    :cond_5
    move v4, v5

    .line 481
    goto :goto_0
.end method

.method private readServerSettings()V
    .locals 2

    .prologue
    .line 559
    const-string v0, "WifiApLanSettings"

    const-string v1, "readServerSettings 2"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDhcpServerConfiguration()Landroid/net/DhcpServerConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    .line 561
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    if-nez v0, :cond_0

    .line 562
    new-instance v0, Landroid/net/DhcpServerConfiguration;

    invoke-direct {v0}, Landroid/net/DhcpServerConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    .line 563
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    const-string v1, "192.168.1.1"

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    .line 564
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    const-string v1, "255.255.255.0"

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    .line 565
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    .line 566
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    const-string v1, "192.168.1.100"

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    .line 567
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    const-string v1, "192.168.1.254"

    iput-object v1, v0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    .line 568
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    const/16 v1, 0x5a

    iput v1, v0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    .line 569
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    const/16 v1, 0x64

    iput v1, v0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    .line 571
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v0, v0, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    .line 574
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v0, v0, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    .line 575
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-boolean v0, v0, Landroid/net/DhcpServerConfiguration;->dhcpEnable:Z

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnable:Z

    .line 576
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v0, v0, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    .line 577
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v0, v0, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    .line 578
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget v0, v0, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I

    .line 579
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget v0, v0, Landroid/net/DhcpServerConfiguration;->maxClient:I

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I

    .line 580
    return-void
.end method

.method private saveAndFinishServerSettings()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 620
    const-string v4, "WifiApLanSettings"

    const-string v5, "saveAndFinishServerSettings"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLocalServerConfig()Landroid/net/DhcpServerConfiguration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/DhcpServerConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 623
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    .line 624
    .local v3, wifiApState:I
    const/4 v0, 0x0

    .line 626
    .local v0, ClientNum:I
    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    .line 627
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 628
    .local v2, msg:Landroid/os/Message;
    const/4 v4, 0x3

    iput v4, v2, Landroid/os/Message;->what:I

    .line 629
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 632
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_3

    .line 633
    if-lez v0, :cond_2

    .line 634
    const-string v4, "WifiApLanSettings"

    const-string v5, "saveAndFinishServerSettings : WifiAP enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->showDialog(I)V

    .line 654
    .end local v0           #ClientNum:I
    .end local v3           #wifiApState:I
    :cond_1
    :goto_0
    return-void

    .line 637
    .restart local v0       #ClientNum:I
    .restart local v3       #wifiApState:I
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLocalServerConfig()Landroid/net/DhcpServerConfiguration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    .line 639
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    const-string v5, "SAMSUNG_HOTSPOT"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->prefs:Landroid/content/SharedPreferences;

    .line 640
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 641
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v4, "DHCP_CHANGE"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 642
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 644
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 645
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4, v5, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 647
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->finish()V

    goto :goto_0

    .line 650
    .end local v1           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLocalServerConfig()Landroid/net/DhcpServerConfiguration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    .line 651
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->finish()V

    goto :goto_0
.end method

.method private saveServerSettings()V
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/4 v7, 0x1

    .line 583
    const-string v4, "WifiApLanSettings"

    const-string v5, "saveServerSettings"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLocalServerConfig()Landroid/net/DhcpServerConfiguration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/DhcpServerConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 586
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    .line 587
    .local v3, wifiApState:I
    const/4 v0, 0x0

    .line 589
    .local v0, ClientNum:I
    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    .line 590
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 591
    .local v2, msg:Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->what:I

    .line 592
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 595
    .end local v2           #msg:Landroid/os/Message;
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_3

    .line 596
    if-lez v0, :cond_1

    .line 597
    const-string v4, "WifiApLanSettings"

    const-string v5, "saveServerSettings : WifiAP enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->showDialog(I)V

    .line 617
    .end local v0           #ClientNum:I
    .end local v3           #wifiApState:I
    :goto_0
    return-void

    .line 601
    .restart local v0       #ClientNum:I
    .restart local v3       #wifiApState:I
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLocalServerConfig()Landroid/net/DhcpServerConfiguration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    .line 603
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    const-string v5, "SAMSUNG_HOTSPOT"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->prefs:Landroid/content/SharedPreferences;

    .line 604
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 605
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v4, "DHCP_CHANGE"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 606
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 608
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 609
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4, v5, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 616
    .end local v0           #ClientNum:I
    .end local v1           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v3           #wifiApState:I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->finish()V

    goto :goto_0

    .line 612
    .restart local v0       #ClientNum:I
    .restart local v3       #wifiApState:I
    :cond_3
    const-string v4, "WifiApLanSettings"

    const-string v5, "saveServerSettings : Just saveDhcpServerConfiguration"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLocalServerConfig()Landroid/net/DhcpServerConfiguration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->saveDhcpServerConfiguration(Landroid/net/DhcpServerConfiguration;)Z

    goto :goto_1
.end method

.method private setLayout()V
    .locals 3

    .prologue
    .line 135
    const-string v2, "wifiap_local_ip_addrs"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIpETPref:Landroid/preference/EditTextPreference;

    .line 136
    const-string v2, "wifiap_local_subnetmask"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmaskETPref:Landroid/preference/EditTextPreference;

    .line 137
    const-string v2, "wifiap_dhcp_enable"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnableCBPref:Landroid/preference/CheckBoxPreference;

    .line 138
    const-string v2, "wifiap_dhcp_start_ip"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    .line 139
    const-string v2, "wifiap_dhcp_end_ip"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    .line 140
    const-string v2, "wifiap_dhcp_lease_time"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTimeETPref:Landroid/preference/EditTextPreference;

    .line 141
    const-string v2, "wifiap_dhcp_max_user"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUserETPref:Landroid/preference/EditTextPreference;

    .line 143
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mPreferenceKeys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 145
    .local v1, preference:Landroid/preference/Preference;
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v1           #preference:Landroid/preference/Preference;
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 112
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 114
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 115
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->readServerSettings()V

    .line 116
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->setLayout()V

    .line 117
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->fillLayout()V

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->setHasOptionsMenu(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mIsTablet:Z

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 131
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 132
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 189
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 190
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemCancel:Landroid/view/MenuItem;

    const v1, 0x7f02009c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 192
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemSave:Landroid/view/MenuItem;

    const v1, 0x7f02009d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 194
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemSave:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 200
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 201
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 197
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemSave:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v0, 0x7f07008a

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->addPreferencesFromResource(I)V

    .line 108
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .parameter "id"

    .prologue
    const v6, 0x7f090331

    const v5, 0x7f090330

    const v4, 0x7f09032f

    const v3, 0x7f09032e

    const v2, 0x7f09032d

    .line 340
    packed-switch p1, :pswitch_data_0

    .line 447
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 342
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 370
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$5;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 398
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090332

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090333

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$7;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$6;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 423
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090332

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090333

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$9;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$9;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings$8;-><init>(Lcom/android/settings/wifi/mobileap/WifiApLanSettings;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 174
    const/4 v0, 0x2

    const v1, 0x7f0902bb

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemCancel:Landroid/view/MenuItem;

    .line 175
    const v0, 0x7f0902ba

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemSave:Landroid/view/MenuItem;

    .line 176
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemCancel:Landroid/view/MenuItem;

    const v1, 0x7f02009c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 178
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemSave:Landroid/view/MenuItem;

    const v1, 0x7f02009d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 180
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemSave:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 185
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemCancel:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mMenuItemSave:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 451
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 452
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 205
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 213
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 207
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->saveServerSettings()V

    goto :goto_0

    .line 210
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->finish()V

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const v5, 0x7f090328

    const/4 v7, 0x2

    const v6, 0x7f0902bc

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 225
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, key:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 335
    .end local p2
    :goto_0
    return v2

    .line 228
    .restart local p2
    :cond_0
    const-string v4, "wifiap_local_ip_addrs"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 229
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    .line 230
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isIpAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 231
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 235
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 236
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->convertToSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    .line 237
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 240
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 241
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->convertToSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    .line 242
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    :cond_2
    :goto_1
    move v2, v3

    .line 335
    goto :goto_0

    .line 247
    :cond_3
    const-string v4, "WifiApLanSettings"

    const-string v5, "Not a valid IP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 249
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v2, v2, Landroid/net/DhcpServerConfiguration;->localIp:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    goto :goto_1

    .line 251
    .restart local p2
    :cond_4
    const-string v4, "wifiap_local_subnetmask"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 252
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    .line 253
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isValidSubnetMask(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 254
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmaskETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmaskETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 257
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-static {v2, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 259
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 260
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->convertToSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    .line 261
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 264
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 265
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->convertToSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    .line 266
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 270
    :cond_6
    const-string v4, "WifiApLanSettings"

    const-string v5, "Not a valid Subnet"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 272
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v2, v2, Landroid/net/DhcpServerConfiguration;->subnetmask:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    goto/16 :goto_1

    .line 274
    .restart local p2
    :cond_7
    const-string v4, "wifiap_dhcp_enable"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 275
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnable:Z

    .line 276
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnableCBPref:Landroid/preference/CheckBoxPreference;

    iget-boolean v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnable:Z

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 277
    iget-boolean v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEnable:Z

    if-eqz v2, :cond_2

    .line 278
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getLastNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    .line 279
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 281
    .restart local p2
    :cond_8
    const-string v4, "wifiap_dhcp_start_ip"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 282
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    .line 283
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isIpAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 284
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 285
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 288
    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 291
    :cond_a
    const-string v4, "WifiApLanSettings"

    const-string v5, "Not a valid IP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 293
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v2, v2, Landroid/net/DhcpServerConfiguration;->ipRangeStart:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpStartIp:Ljava/lang/String;

    goto/16 :goto_1

    .line 295
    .restart local p2
    :cond_b
    const-string v4, "wifiap_dhcp_end_ip"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 296
    check-cast p2, Ljava/lang/String;

    .end local p2
    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    .line 297
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isIpAddress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 298
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mLocalIp:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mSubnetmask:Ljava/lang/String;

    invoke-direct {p0, v2, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 299
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIpETPref:Landroid/preference/EditTextPreference;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 302
    :cond_c
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->showDialog(I)V

    goto/16 :goto_1

    .line 305
    :cond_d
    const-string v4, "WifiApLanSettings"

    const-string v5, "Not a valid IP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 307
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget-object v2, v2, Landroid/net/DhcpServerConfiguration;->ipRangeEnd:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpEndIp:Ljava/lang/String;

    goto/16 :goto_1

    .line 309
    .restart local p2
    :cond_e
    const-string v2, "wifiap_dhcp_lease_time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 311
    :try_start_0
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I

    .line 312
    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I

    if-lt v2, v7, :cond_f

    .line 313
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTimeETPref:Landroid/preference/EditTextPreference;

    iget v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 314
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTimeETPref:Landroid/preference/EditTextPreference;

    const v4, 0x7f090326

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 318
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    move v2, v3

    .line 319
    goto/16 :goto_0

    .line 316
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_f
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget v2, v2, Landroid/net/DhcpServerConfiguration;->leaseTime:I

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpLeaseTime:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 321
    .restart local p2
    :cond_10
    const-string v2, "wifiap_dhcp_max_user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 323
    :try_start_1
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I

    .line 324
    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I

    if-lez v2, :cond_11

    .line 325
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUserETPref:Landroid/preference/EditTextPreference;

    iget v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUserETPref:Landroid/preference/EditTextPreference;

    iget v4, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 330
    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/lang/NumberFormatException;
    move v2, v3

    .line 331
    goto/16 :goto_0

    .line 328
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_11
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mServerConfig:Landroid/net/DhcpServerConfiguration;

    iget v2, v2, Landroid/net/DhcpServerConfiguration;->maxClient:I

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApLanSettings;->mDhcpMaxUser:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1
.end method
