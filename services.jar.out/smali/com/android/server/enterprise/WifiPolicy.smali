.class public Lcom/android/server/enterprise/WifiPolicy;
.super Landroid/app/enterprise/IWifiPolicy$Stub;
.source "WifiPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;,
        Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;
    }
.end annotation


# static fields
.field private static final IP_REGEX:Ljava/lang/String; = "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

.field private static final TAG:Ljava/lang/String; = "WifiPolicyService"


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

.field private mSecurityLevel:[Ljava/lang/String;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "ctx"

    .prologue
    const/4 v4, 0x0

    .line 94
    invoke-direct {p0}, Landroid/app/enterprise/IWifiPolicy$Stub;-><init>()V

    .line 75
    iput-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 77
    iput-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->toast:Landroid/widget/Toast;

    .line 89
    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Open"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "WEP"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "WPA/WPA2 PSK"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "802.1x EAP-LEAP"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "802.1x EAP-FAST"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "802.1x EAP-PEAP"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "802.1x EAP-TTLS"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "802.1x EAP-TLS"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    .line 116
    iput-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 2637
    new-instance v1, Lcom/android/server/enterprise/WifiPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/WifiPolicy$2;-><init>(Lcom/android/server/enterprise/WifiPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    iput-object p1, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    .line 96
    new-instance v1, Lcom/android/server/enterprise/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "edm.intent.action.lock"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/WifiPolicy;Landroid/net/wifi/WifiConfiguration;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/WifiPolicy;->edmAddOrUpdateTask(Landroid/net/wifi/WifiConfiguration;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/WifiPolicy;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->edmUpdateConfiguredNetworks()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/WifiPolicy;)Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/WifiPolicy;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->updateWpsBlockedNetworks()Z

    move-result v0

    return v0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 7
    .parameter "config"

    .prologue
    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 170
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 171
    .local v2, token:J
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 172
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v5, v6, :cond_1

    .line 174
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v5

    if-ne v5, v6, :cond_0

    move v1, v4

    .line 175
    .local v1, ret:Z
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 182
    :goto_0
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 186
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 187
    return v1

    .line 178
    .end local v1           #ret:Z
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 179
    .local v0, netId:I
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v0, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 180
    if-ne v0, v6, :cond_2

    move v1, v4

    .restart local v1       #ret:Z
    :cond_2
    goto :goto_0

    .line 184
    .end local v0           #netId:I
    .end local v1           #ret:Z
    :cond_3
    const/4 v1, 0x1

    .restart local v1       #ret:Z
    goto :goto_1
.end method

.method private addToBlocked(ILjava/lang/String;)V
    .locals 2
    .parameter "callingUid"
    .parameter "ssid"

    .prologue
    .line 2081
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 2083
    .local v0, list:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2084
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2085
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->saveBlockedList(ILjava/util/Set;)V

    .line 2087
    :cond_0
    return-void
.end method

.method private asyncDisableNetwork(I)V
    .locals 2
    .parameter "netId"

    .prologue
    .line 2687
    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.disable"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2688
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "netId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2689
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2690
    return-void
.end method

.method private asyncEnableNetwork(IZ)V
    .locals 2
    .parameter "netId"
    .parameter "enableOthers"

    .prologue
    .line 2680
    new-instance v0, Landroid/content/Intent;

    const-string v1, "edm.intent.action.enable"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2681
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "netId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2682
    const-string v1, "enableOthers"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2683
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2684
    return-void
.end method

.method public static computeprefixLength(Ljava/net/InetAddress;)I
    .locals 7
    .parameter "mask"

    .prologue
    .line 2626
    const/4 v2, 0x0

    .line 2627
    .local v2, count:I
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .local v0, arr$:[B
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-byte v1, v0, v4

    .line 2628
    .local v1, b:B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/16 v6, 0x8

    if-ge v3, v6, :cond_1

    .line 2629
    const/4 v6, 0x1

    shl-int/2addr v6, v3

    and-int/2addr v6, v1

    if-eqz v6, :cond_0

    .line 2630
    add-int/lit8 v2, v2, 0x1

    .line 2628
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2627
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2634
    .end local v1           #b:B
    .end local v3           #i:I
    :cond_2
    return v2
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    const/16 v2, 0x22

    .line 2139
    if-nez p0, :cond_1

    .line 2140
    const/4 p0, 0x0

    .line 2146
    .end local p0
    .local v0, length:I
    :cond_0
    :goto_0
    return-object p0

    .line 2142
    .end local v0           #length:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2143
    .restart local v0       #length:I
    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 2146
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private disableNetwork(Ljava/lang/String;)Z
    .locals 4
    .parameter "ssid"

    .prologue
    .line 1974
    const/4 v0, 0x1

    .line 1975
    .local v0, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1976
    .local v1, token:J
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1977
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkIdBySSID(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/WifiPolicy;->asyncDisableNetwork(I)V

    .line 1979
    :cond_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1980
    return v0
.end method

.method private edmAddOrUpdateTask(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 7
    .parameter "config"
    .parameter "adminUid"

    .prologue
    const/4 v6, 0x0

    .line 2306
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2307
    .local v3, security:Ljava/lang/String;
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 2308
    .local v0, enterprise:Landroid/net/wifi/WifiConfiguration;
    const-string v4, "WEP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2309
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 2310
    .local v2, index:I
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v6

    if-eqz v4, :cond_0

    .line 2311
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v6

    aput-object v5, v4, v2

    .line 2312
    if-eqz v2, :cond_0

    .line 2313
    iput v2, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 2314
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v5, v5, v6

    aput-object v5, v4, v2

    .line 2315
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v5, v4, v6

    .line 2333
    .end local v2           #index:I
    :cond_0
    :goto_0
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 2335
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v5, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-eq v4, v5, :cond_1

    .line 2336
    new-instance v4, Landroid/net/LinkProperties;

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v4, v5}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 2339
    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    .line 2346
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, p2, v4}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Open"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2348
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v4, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_6

    .line 2349
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_2

    .line 2350
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v1

    .line 2348
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2318
    .end local v1           #i:I
    :cond_3
    const-string v4, "WPA/WPA2 PSK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2319
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2322
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 2324
    :cond_4
    const-string v4, "802.1x EAP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2325
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 2326
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 2327
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v4, v4, v1

    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2325
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2354
    .end local v1           #i:I
    :cond_6
    return-void
.end method

.method private declared-synchronized edmUpdateConfiguredNetworks()V
    .locals 12

    .prologue
    .line 2215
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceSystemUser()V

    .line 2216
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v10, :cond_1

    .line 2270
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 2219
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAllEnterpriseLastSSIDs()Ljava/util/List;

    move-result-object v6

    .line 2223
    .local v6, lastSSIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->hasAnyActiveAdmin()Z

    move-result v10

    if-nez v10, :cond_2

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 2228
    :cond_2
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAllEnterpriseNetworks()Ljava/util/List;

    move-result-object v2

    .line 2229
    .local v2, enterpriseConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 2230
    .local v0, confList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAllEnterpriseSSIDs()Ljava/util/List;

    move-result-object v4

    .line 2231
    .local v4, enterpriseSSIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2234
    .local v3, enterpriseNetIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2235
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v10, :cond_3

    .line 2236
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 2237
    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2215
    .end local v0           #confList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #enterpriseConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3           #enterpriseNetIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4           #enterpriseSSIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #lastSSIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .line 2242
    .restart local v0       #confList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v2       #enterpriseConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v3       #enterpriseNetIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v4       #enterpriseSSIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #lastSSIDs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2243
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2245
    .local v8, notQuotedSSID:Ljava/lang/String;
    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_5
    invoke-interface {v6, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 2249
    :cond_6
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v11, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    goto :goto_2

    .line 2253
    :cond_7
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/app/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/WifiPolicyCache;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v1, v11}, Landroid/app/enterprise/WifiPolicyCache;->isNetworkAllowed(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v10

    if-nez v10, :cond_8

    .line 2254
    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/WifiPolicy;->asyncDisableNetwork(I)V

    goto :goto_2

    .line 2257
    :cond_8
    iget v10, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/server/enterprise/WifiPolicy;->asyncEnableNetwork(IZ)V

    goto :goto_2

    .line 2262
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v8           #notQuotedSSID:Ljava/lang/String;
    :cond_9
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 2265
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2266
    .local v7, newSSIDsList:Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2267
    .local v9, value:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2269
    .end local v9           #value:Ljava/lang/String;
    :cond_a
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/WifiPolicy;->updateNetworkLastSSID(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private enforceSystemUser()V
    .locals 2

    .prologue
    .line 136
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 137
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Can only be called by system user"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    return-void
.end method

.method private enforceWifiPermission()I
    .locals 2

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_WIFI"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 132
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private enforceWifiPermission(Ljava/lang/String;)I
    .locals 3
    .parameter "ssid"

    .prologue
    .line 1294
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 1295
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1297
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "WIFI_CONF"

    const-string v2, "networkSSID"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getAdminUid()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 154
    .local v1, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "ADMIN"

    const-string v4, "adminUid"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 156
    .local v0, adminUid:I
    if-eq v0, v1, :cond_0

    .line 157
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller is not an active admin, adminUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " callingUid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 160
    :cond_0
    return v1
.end method

.method private getAllBlockedList()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2039
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "WIFI"

    const-string v7, "blockedSSIDList"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 2041
    .local v4, var:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2043
    .local v3, ret:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2044
    .local v2, list:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2045
    .local v0, array:[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 2047
    .end local v0           #array:[Ljava/lang/String;
    .end local v2           #list:Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private getAllEnterpriseLastSSIDs()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2376
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2377
    .local v5, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "networkLastSSID"

    invoke-virtual {v7, v8}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2378
    .local v4, list:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 2379
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2380
    .local v2, lastSSIDs:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v6, v0, v1

    .line 2381
    .local v6, value:Ljava/lang/String;
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2380
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2384
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #lastSSIDs:[Ljava/lang/String;
    .end local v3           #len$:I
    .end local v6           #value:Ljava/lang/String;
    :cond_0
    return-object v5
.end method

.method private getAllEnterpriseNetworks()Ljava/util/List;
    .locals 7
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
    const/4 v6, 0x0

    .line 2357
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "adminUid"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "networkSSID"

    aput-object v5, v3, v4

    .line 2360
    .local v3, ret:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI_CONF"

    invoke-virtual {v4, v5, v6, v6, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2362
    .local v1, cv:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2363
    .local v0, config:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 2364
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "adminUid"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v6, "networkSSID"

    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v4}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2363
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2367
    :cond_0
    return-object v0
.end method

.method private getAllEnterpriseSSIDs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2371
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "WIFI_CONF"

    const-string v2, "networkSSID"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getBlockedList(I)Ljava/util/Set;
    .locals 10
    .parameter "callingUid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2052
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "WIFI"

    const-string v9, "blockedSSIDList"

    invoke-virtual {v7, p1, v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2054
    .local v6, var:Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2055
    .local v3, l:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v6, :cond_0

    .line 2056
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2057
    .local v1, array:[Ljava/lang/String;
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 2058
    .local v5, s:Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2057
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2061
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #array:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #s:Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method private getConfigByNetworkId(I)Landroid/net/wifi/WifiConfiguration;
    .locals 8
    .parameter "netId"

    .prologue
    .line 2019
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2020
    .local v5, token:J
    const/4 v3, 0x0

    .line 2021
    .local v3, ret:Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v7, :cond_0

    move-object v4, v3

    .line 2032
    .end local v3           #ret:Landroid/net/wifi/WifiConfiguration;
    .local v4, ret:Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object v4

    .line 2024
    .end local v4           #ret:Landroid/net/wifi/WifiConfiguration;
    .restart local v3       #ret:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 2025
    .local v2, networkList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2026
    .local v0, cfg:Landroid/net/wifi/WifiConfiguration;
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v7, p1, :cond_1

    .line 2027
    move-object v3, v0

    .line 2031
    .end local v0           #cfg:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v4, v3

    .line 2032
    .end local v3           #ret:Landroid/net/wifi/WifiConfiguration;
    .restart local v4       #ret:Landroid/net/wifi/WifiConfiguration;
    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "ssid"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 665
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAdminUid()I

    move-result v0

    .line 667
    .local v0, callingUid:I
    if-gez p2, :cond_1

    .line 675
    :cond_0
    :goto_0
    return-object v2

    .line 671
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 672
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 673
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 2693
    invoke-static {p0}, Landroid/app/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method private getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ssid"
    .parameter "addrType"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1349
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1351
    .local v0, callingUid:I
    if-nez p1, :cond_1

    .line 1367
    :cond_0
    :goto_0
    return-object v4

    .line 1354
    :cond_1
    new-array v1, v6, [Ljava/lang/String;

    const-string v5, "adminUid"

    aput-object v5, v1, v8

    const-string v5, "networkSSID"

    aput-object v5, v1, v7

    .line 1357
    .local v1, col:[Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v8

    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v7

    .line 1360
    .local v3, val:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "WIFI_CONF"

    new-array v7, v7, [Ljava/lang/String;

    aput-object p2, v7, v8

    invoke-virtual {v5, v6, v1, v3, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1364
    .local v2, cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 1365
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    invoke-virtual {v4, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getNetworkAllowDynamicTrustDecision(ILjava/lang/String;)Z
    .locals 1
    .parameter "callingUid"
    .parameter "ssid"

    .prologue
    .line 859
    const/4 v0, 0x0

    return v0
.end method

.method private getNetworkBySSID(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 8
    .parameter "ssid"

    .prologue
    .line 2392
    const/4 v2, 0x0

    .line 2393
    .local v2, ret:Landroid/net/wifi/WifiConfiguration;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2394
    .local v4, token:J
    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_0

    move-object v3, v2

    .line 2406
    .end local v2           #ret:Landroid/net/wifi/WifiConfiguration;
    .local v3, ret:Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object v3

    .line 2397
    .end local v3           #ret:Landroid/net/wifi/WifiConfiguration;
    .restart local v2       #ret:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2398
    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2399
    .local v0, auxNet:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2400
    move-object v2, v0

    .line 2405
    .end local v0           #auxNet:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v3, v2

    .line 2406
    .end local v2           #ret:Landroid/net/wifi/WifiConfiguration;
    .restart local v3       #ret:Landroid/net/wifi/WifiConfiguration;
    goto :goto_0
.end method

.method private getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 26
    .parameter "callingUid"
    .parameter "ssid"

    .prologue
    .line 2489
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v4, v0, [Ljava/lang/String;

    const/16 v23, 0x0

    const-string v24, "adminUid"

    aput-object v24, v4, v23

    const/16 v23, 0x1

    const-string v24, "networkSSID"

    aput-object v24, v4, v23

    .line 2492
    .local v4, col:[Ljava/lang/String;
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    .line 2496
    .local v22, val:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v24, "WIFI_CONF"

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 2498
    .local v8, cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2499
    .local v5, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v7, 0x0

    .line 2501
    .local v7, cv:Landroid/content/ContentValues;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 2502
    :cond_0
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    .end local v5           #config:Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2622
    :cond_1
    :goto_0
    return-object v5

    .line 2504
    .restart local v5       #config:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #cv:Landroid/content/ContentValues;
    check-cast v7, Landroid/content/ContentValues;

    .line 2508
    .restart local v7       #cv:Landroid/content/ContentValues;
    const-string v23, "networkSSID"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2509
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_3

    .line 2510
    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    .end local v5           #config:Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    goto :goto_0

    .line 2512
    .restart local v5       #config:Landroid/net/wifi/WifiConfiguration;
    :cond_3
    const-string v23, "networkBSSID"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 2513
    const-string v23, "networkKeyMgmt"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 2515
    const-string v23, "networkAllowedProtos"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 2517
    const-string v23, "networkAuthAlg"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 2520
    const-string v23, "networkAllowedPairwiseCiphers"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 2523
    const-string v23, "networkAllowedGroupProtocols"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    sget-object v24, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/WifiPolicy;->makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 2526
    const-string v23, "networkPSK"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 2527
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "networkWEPKey1"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 2528
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const-string v25, "networkWEPKey2"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 2529
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const-string v25, "networkWEPKey3"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 2530
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const-string v25, "networkWEPKey4"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    .line 2531
    const-string v23, "networkWEPKeyId"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move/from16 v0, v23

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 2532
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->eap:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v24

    aget-object v23, v23, v24

    const-string v24, "networkEAP"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2534
    const-string v23, "networkPhase2"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_4

    .line 2535
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->phase2:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v24

    aget-object v23, v23, v24

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "auth="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "networkPhase2"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2539
    :cond_4
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->identity:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v24

    aget-object v23, v23, v24

    const-string v24, "networkIdentity"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2541
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->anonymous_identity:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v24

    aget-object v23, v23, v24

    const-string v24, "networkAnonymousId"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2543
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->password:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v24

    aget-object v23, v23, v24

    const-string v24, "networkPassword"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2545
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->client_cert:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v24

    aget-object v23, v23, v24

    const-string v24, "networkClientCertification"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2547
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->private_key:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v24

    aget-object v23, v23, v24

    const-string v24, "networkPrivateKey"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2549
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v23, v0

    sget-object v24, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ca_cert:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v24

    aget-object v23, v23, v24

    const-string v24, "networkCaCertificate"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2552
    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v5, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 2553
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkBySSID(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 2554
    .local v6, configAux:Landroid/net/wifi/WifiConfiguration;
    if-eqz v6, :cond_5

    .line 2555
    iget v0, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2556
    iget v0, v6, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v5, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 2560
    :cond_5
    const-string v23, "networkStaticIpEnabled"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    .line 2561
    .local v15, ipAssignment:Ljava/lang/Integer;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    sget-object v23, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_1
    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 2562
    new-instance v23, Landroid/net/LinkProperties;

    invoke-direct/range {v23 .. v23}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, v23

    iput-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 2563
    const-string v23, "networkStaticIp"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 2564
    .local v20, staticIp:Ljava/lang/String;
    const-string v23, "networkStaticGateway"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 2565
    .local v19, staticGateway:Ljava/lang/String;
    const-string v23, "networkStaticPrimaryDns"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 2566
    .local v17, staticDns1:Ljava/lang/String;
    const-string v23, "networkStaticSecondaryDns"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2567
    .local v18, staticDns2:Ljava/lang/String;
    const-string v23, "networkStaticSubnetMask"

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2569
    .local v21, staticSubnetMask:Ljava/lang/String;
    if-eqz v20, :cond_8

    .line 2571
    :try_start_0
    invoke-static/range {v20 .. v20}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    .line 2573
    .local v13, inetAddr:Ljava/net/InetAddress;
    if-eqz v21, :cond_7

    .line 2574
    invoke-static/range {v21 .. v21}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v14

    .line 2576
    .local v14, inetsubNetAddr:Ljava/net/InetAddress;
    invoke-static {v14}, Lcom/android/server/enterprise/WifiPolicy;->computeprefixLength(Ljava/net/InetAddress;)I

    move-result v16

    .line 2580
    .end local v14           #inetsubNetAddr:Ljava/net/InetAddress;
    .local v16, maskLength:I
    :goto_2
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    new-instance v24, Landroid/net/LinkAddress;

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-direct {v0, v13, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2590
    .end local v13           #inetAddr:Ljava/net/InetAddress;
    .end local v16           #maskLength:I
    :goto_3
    if-eqz v19, :cond_9

    .line 2592
    :try_start_1
    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    .line 2593
    .local v12, gatewayAddr:Ljava/net/InetAddress;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    new-instance v24, Landroid/net/RouteInfo;

    move-object/from16 v0, v24

    invoke-direct {v0, v12}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 2602
    .end local v12           #gatewayAddr:Ljava/net/InetAddress;
    :goto_4
    if-eqz v17, :cond_a

    .line 2604
    :try_start_2
    invoke-static/range {v17 .. v17}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 2605
    .local v9, dns1Addr:Ljava/net/InetAddress;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3

    .line 2613
    .end local v9           #dns1Addr:Ljava/net/InetAddress;
    :goto_5
    if-eqz v18, :cond_1

    .line 2615
    :try_start_3
    invoke-static/range {v18 .. v18}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    .line 2616
    .local v10, dns2Addr:Ljava/net/InetAddress;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 2617
    .end local v10           #dns2Addr:Ljava/net/InetAddress;
    :catch_0
    move-exception v11

    .line 2618
    .local v11, e:Ljava/lang/IllegalArgumentException;
    const-string v23, "WifiPolicyService"

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2561
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    .end local v17           #staticDns1:Ljava/lang/String;
    .end local v18           #staticDns2:Ljava/lang/String;
    .end local v19           #staticGateway:Ljava/lang/String;
    .end local v20           #staticIp:Ljava/lang/String;
    .end local v21           #staticSubnetMask:Ljava/lang/String;
    :cond_6
    sget-object v23, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto/16 :goto_1

    .line 2578
    .restart local v13       #inetAddr:Ljava/net/InetAddress;
    .restart local v17       #staticDns1:Ljava/lang/String;
    .restart local v18       #staticDns2:Ljava/lang/String;
    .restart local v19       #staticGateway:Ljava/lang/String;
    .restart local v20       #staticIp:Ljava/lang/String;
    .restart local v21       #staticSubnetMask:Ljava/lang/String;
    :cond_7
    const/16 v16, 0x18

    .restart local v16       #maskLength:I
    goto :goto_2

    .line 2581
    .end local v13           #inetAddr:Ljava/net/InetAddress;
    .end local v16           #maskLength:I
    :catch_1
    move-exception v11

    .line 2582
    .restart local v11       #e:Ljava/lang/IllegalArgumentException;
    const-string v23, "WifiPolicyService"

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 2585
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :cond_8
    const-string v23, "::1"

    invoke-static/range {v23 .. v23}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    .line 2586
    .restart local v13       #inetAddr:Ljava/net/InetAddress;
    const/16 v16, 0x18

    .line 2587
    .restart local v16       #maskLength:I
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    new-instance v24, Landroid/net/LinkAddress;

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-direct {v0, v13, v1}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    goto :goto_3

    .line 2594
    .end local v13           #inetAddr:Ljava/net/InetAddress;
    .end local v16           #maskLength:I
    :catch_2
    move-exception v11

    .line 2595
    .restart local v11       #e:Ljava/lang/IllegalArgumentException;
    const-string v23, "WifiPolicyService"

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 2598
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :cond_9
    const-string v23, "::1"

    invoke-static/range {v23 .. v23}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v12

    .line 2599
    .restart local v12       #gatewayAddr:Ljava/net/InetAddress;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    new-instance v24, Landroid/net/RouteInfo;

    move-object/from16 v0, v24

    invoke-direct {v0, v12}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual/range {v23 .. v24}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_4

    .line 2606
    .end local v12           #gatewayAddr:Ljava/net/InetAddress;
    :catch_3
    move-exception v11

    .line 2607
    .restart local v11       #e:Ljava/lang/IllegalArgumentException;
    const-string v23, "WifiPolicyService"

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 2610
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :cond_a
    const-string v23, "::1"

    invoke-static/range {v23 .. v23}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v9

    .line 2611
    .restart local v9       #dns1Addr:Ljava/net/InetAddress;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto/16 :goto_5
.end method

.method private getNetworkIdBySSID(Ljava/lang/String;)I
    .locals 8
    .parameter "ssid"

    .prologue
    .line 1985
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1986
    .local v4, token:J
    const/4 v2, -0x1

    .line 1987
    .local v2, netId:I
    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v6, :cond_0

    .line 1988
    const/4 v6, -0x1

    .line 1998
    :goto_0
    return v6

    .line 1990
    :cond_0
    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 1991
    .local v3, netList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1992
    .local v0, cfg:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1993
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1997
    .end local v0           #cfg:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v2

    .line 1998
    goto :goto_0
.end method

.method private getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "adminUid"
    .parameter "ssid"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 400
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 401
    .local v1, enterpriseNetwork:Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_5

    .line 402
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 403
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 404
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    aget-object v2, v2, v4

    .line 421
    :goto_0
    return-object v2

    .line 406
    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    aget-object v2, v2, v3

    goto :goto_0

    .line 407
    :cond_1
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 408
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    aget-object v2, v2, v5

    goto :goto_0

    .line 409
    :cond_2
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 411
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, eap:Ljava/lang/String;
    const-string v2, "PEAP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 413
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    goto :goto_0

    .line 414
    :cond_3
    const-string v2, "TTLS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 415
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    goto :goto_0

    .line 416
    :cond_4
    const-string v2, "TLS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 417
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mSecurityLevel:[Ljava/lang/String;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    goto :goto_0

    .line 421
    .end local v0           #eap:Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .parameter "ssid"
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 541
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAdminUid()I

    move-result v0

    .line 543
    .local v0, callingUid:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    if-ltz p2, :cond_0

    const/4 v3, 0x3

    if-le p2, v3, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-object v2

    .line 547
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 548
    .local v1, enterprise:Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 549
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, p2

    if-eqz v3, :cond_0

    .line 550
    const-string v2, "*"

    goto :goto_0
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 1448
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1449
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1450
    .local v0, ret:Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1451
    return-object v0
.end method

.method private isBlocked(Ljava/lang/String;)Z
    .locals 2
    .parameter "ssid"

    .prologue
    .line 2090
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAllBlockedList()Ljava/util/Set;

    move-result-object v0

    .line 2091
    .local v0, list:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isHoneycombOrHigher()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 142
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 144
    .local v0, mainVersion:I
    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    .line 147
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private isIpAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 2010
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 2011
    :cond_0
    const/4 v1, 0x1

    .line 2015
    :goto_0
    return v1

    .line 2014
    :cond_1
    const-string v1, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2015
    .local v0, validIp:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private isNetworkSecure(II)Z
    .locals 5
    .parameter "netId"
    .parameter "minSec"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1886
    const/4 v3, -0x1

    if-eq p1, v3, :cond_2

    .line 1887
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getConfigByNetworkId(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1888
    .local v0, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 1889
    invoke-static {v0}, Lcom/android/server/enterprise/WifiPolicy;->getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    if-le p2, v3, :cond_1

    .line 1899
    .end local v0           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return v1

    .restart local v0       #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    move v1, v2

    .line 1892
    goto :goto_0

    .line 1898
    .end local v0           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const-string v1, "WifiPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Network id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1899
    goto :goto_0
.end method

.method private isWifiStateEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1966
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_1

    .line 1969
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadWifiManager()V
    .locals 3

    .prologue
    .line 1959
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 1960
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 1961
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->asyncConnect(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1963
    :cond_0
    return-void
.end method

.method private static lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "string"
    .parameter "strings"

    .prologue
    .line 2150
    array-length v1, p1

    .line 2151
    .local v1, size:I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 2152
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2153
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2155
    .end local v0           #i:I
    :goto_1
    return v0

    .line 2152
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2155
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private makeBitSet(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/BitSet;
    .locals 8
    .parameter "value"
    .parameter "strings"

    .prologue
    .line 2181
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 2182
    .local v1, bitset:Ljava/util/BitSet;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2183
    const-string v7, " "

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2184
    .local v6, vals:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 2185
    .local v5, val:Ljava/lang/String;
    invoke-static {v5, p2}, Lcom/android/server/enterprise/WifiPolicy;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 2186
    .local v3, index:I
    if-ltz v3, :cond_0

    .line 2187
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 2184
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2191
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #index:I
    .end local v4           #len$:I
    .end local v5           #val:Ljava/lang/String;
    .end local v6           #vals:[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "set"
    .parameter "strings"

    .prologue
    .line 2159
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2160
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 2166
    .local v1, nextSetBit:I
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {p1, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p1

    .line 2168
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2169
    aget-object v2, p2, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2173
    :cond_0
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    .line 2174
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2177
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private putString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "str"
    .parameter "value"

    .prologue
    .line 1441
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1442
    .local v1, token:J
    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1443
    .local v0, ret:Z
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1444
    return v0
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 2128
    if-nez p0, :cond_1

    .line 2129
    const/4 p0, 0x0

    .line 2135
    .end local p0
    .local v0, length:I
    :cond_0
    :goto_0
    return-object p0

    .line 2131
    .end local v0           #length:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 2132
    .restart local v0       #length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 2133
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private removeFromBlocked(ILjava/lang/String;)V
    .locals 1
    .parameter "callingUid"
    .parameter "ssid"

    .prologue
    .line 2075
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getBlockedList(I)Ljava/util/Set;

    move-result-object v0

    .line 2076
    .local v0, list:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2077
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->saveBlockedList(ILjava/util/Set;)V

    .line 2078
    return-void
.end method

.method private saveBlockedList(ILjava/util/Set;)V
    .locals 7
    .parameter "callingUid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2066
    .local p2, list:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2067
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2068
    .local v1, s:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2070
    .end local v1           #s:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "WIFI"

    const-string v5, "blockedSSIDList"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2072
    return-void
.end method

.method private sendCacheUpdateCommand(Ljava/lang/String;)V
    .locals 2
    .parameter "type"

    .prologue
    .line 2699
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.enterprise.action.ACTION_WIFI_POLICY_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2700
    .local v0, intent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 2701
    const-string v1, "android.app.enterprise.extra.WIFI_TYPE_CHANGED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2703
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2704
    return-void
.end method

.method private setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .parameter "ssid"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 642
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_2

    .line 643
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 650
    .local v0, callingUid:I
    :goto_0
    if-eqz p3, :cond_0

    if-gez p2, :cond_3

    .line 651
    :cond_0
    const/4 v2, 0x0

    .line 661
    :cond_1
    :goto_1
    return v2

    .line 645
    .end local v0           #callingUid:I
    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "WIFI_CONF"

    const-string v5, "networkSSID"

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0       #callingUid:I
    goto :goto_0

    .line 654
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 655
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x1

    .line 656
    .local v2, ret:Z
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 657
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    aget-object v3, v3, p2

    invoke-virtual {v3, p3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 658
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 659
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_1
.end method

.method private setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "ssid"
    .parameter "addr"
    .parameter "addrType"

    .prologue
    .line 1331
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v2

    .line 1333
    .local v2, callingUid:I
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 1334
    :cond_0
    const/4 v6, 0x0

    .line 1344
    :goto_0
    return v6

    .line 1336
    :cond_1
    const/4 v6, 0x1

    .line 1338
    .local v6, ret:Z
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 1339
    .local v5, cv:Landroid/content/ContentValues;
    invoke-virtual {v5, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "WIFI_CONF"

    const-string v3, "networkSSID"

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    and-int/2addr v6, v0

    .line 1343
    invoke-direct {p0, v2, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method private setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z
    .locals 18
    .parameter "callingUid"
    .parameter "config"

    .prologue
    .line 2413
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2414
    .local v6, cv:Landroid/content/ContentValues;
    const-string v1, "networkSSID"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2415
    const-string v1, "networkBSSID"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2416
    const-string v1, "networkKeyMgmt"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2418
    const-string v1, "networkAllowedProtos"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2420
    const-string v1, "networkAuthAlg"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2422
    const-string v1, "networkAllowedPairwiseCiphers"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2424
    const-string v1, "networkAllowedGroupProtocols"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/enterprise/WifiPolicy;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2426
    const-string v1, "networkPSK"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2427
    const-string v1, "networkWEPKey1"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2428
    const-string v1, "networkWEPKey2"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2429
    const-string v1, "networkWEPKey3"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    const-string v1, "networkWEPKey4"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2431
    const-string v1, "networkWEPKeyId"

    move-object/from16 v0, p2

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2432
    const-string v1, "networkEAP"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    sget-object v3, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->eap:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v3}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2434
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    sget-object v2, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->phase2:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v2}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v15

    .line 2435
    .local v15, phase2:Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 2436
    const-string v1, "networkPhase2"

    const-string v2, "auth="

    const-string v3, ""

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2438
    :cond_0
    const-string v1, "networkIdentity"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    sget-object v3, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->identity:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v3}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2440
    const-string v1, "networkAnonymousId"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    sget-object v3, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->anonymous_identity:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v3}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2442
    const-string v1, "networkPassword"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    sget-object v3, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->password:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v3}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    const-string v1, "networkClientCertification"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    sget-object v3, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->client_cert:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v3}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2446
    const-string v1, "networkPrivateKey"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    sget-object v3, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->private_key:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v3}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2448
    const-string v1, "networkCaCertificate"

    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    sget-object v3, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ca_cert:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v3}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2451
    const-string v2, "networkStaticIpEnabled"

    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v1, v3, :cond_6

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2453
    const/4 v12, 0x0

    .local v12, ipAddr:Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, subnetAddr:Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, gatewayAddr:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, dns1Addr:Ljava/lang/String;
    const/4 v8, 0x0

    .line 2454
    .local v8, dns2Addr:Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 2455
    .local v13, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2456
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/LinkAddress;

    .line 2457
    .local v14, linkAddress:Landroid/net/LinkAddress;
    invoke-virtual {v14}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v12

    .line 2458
    invoke-virtual {v14}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->prefixLengthToNetmaskInt(I)I

    move-result v1

    invoke-static {v1}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v17

    .line 2462
    .end local v14           #linkAddress:Landroid/net/LinkAddress;
    :cond_1
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/RouteInfo;

    .line 2463
    .local v16, route:Landroid/net/RouteInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2464
    invoke-virtual/range {v16 .. v16}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    .line 2468
    .end local v16           #route:Landroid/net/RouteInfo;
    :cond_3
    move-object/from16 v0, p2

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 2469
    .local v9, dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2470
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 2472
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2473
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    .line 2475
    :cond_5
    const-string v1, "networkStaticIp"

    invoke-virtual {v6, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2476
    const-string v1, "networkStaticGateway"

    invoke-virtual {v6, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2477
    const-string v1, "networkStaticPrimaryDns"

    invoke-virtual {v6, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2478
    const-string v1, "networkStaticSecondaryDns"

    invoke-virtual {v6, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2479
    const-string v1, "networkStaticSubnetMask"

    move-object/from16 v0, v17

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2481
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "WIFI_CONF"

    const-string v4, "networkSSID"

    move-object/from16 v0, p2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    return v1

    .line 2451
    .end local v7           #dns1Addr:Ljava/lang/String;
    .end local v8           #dns2Addr:Ljava/lang/String;
    .end local v9           #dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v10           #gatewayAddr:Ljava/lang/String;
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #ipAddr:Ljava/lang/String;
    .end local v13           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v17           #subnetAddr:Ljava/lang/String;
    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "ssid"
    .parameter "lastssid"

    .prologue
    .line 1166
    iget-object v8, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v9, "networkLastSSID"

    invoke-virtual {v8, v9}, Lcom/android/server/enterprise/EdmStorageProvider;->getGenericValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1169
    .local v3, lastSSIDs:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1171
    .local v6, newList:Ljava/lang/StringBuilder;
    if-eqz v3, :cond_2

    .line 1172
    if-eqz p2, :cond_1

    .line 1173
    move-object v2, p2

    .line 1174
    .local v2, last:Ljava/lang/String;
    const-string v8, ","

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1175
    .local v5, list:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v7, v0, v1

    .line 1177
    .local v7, value:Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1178
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1183
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #last:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #list:[Ljava/lang/String;
    .end local v7           #value:Ljava/lang/String;
    :cond_1
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    :cond_2
    if-eqz p1, :cond_3

    .line 1188
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/WifiPolicy;->updateNetworkLastSSID(Ljava/lang/String;)Z

    move-result v8

    return v8
.end method

.method private setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 6
    .parameter "ssid"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 478
    .local v0, callingUid:I
    if-eqz p3, :cond_0

    if-ltz p2, :cond_0

    const/4 v4, 0x3

    if-le p2, v4, :cond_2

    .line 479
    :cond_0
    const/4 v3, 0x0

    .line 496
    :cond_1
    :goto_0
    return v3

    .line 481
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 482
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v3, 0x1

    .line 483
    .local v3, ret:Z
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_1

    if-eqz p3, :cond_1

    .line 484
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 486
    .local v2, length:I
    const/16 v4, 0xa

    if-eq v2, v4, :cond_3

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_3

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_4

    :cond_3
    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {p3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 488
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object p3, v4, p2

    .line 493
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    .line 494
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0

    .line 491
    :cond_4
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {p3}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, p2

    goto :goto_1
.end method

.method private updateNetworkLastSSID(Ljava/lang/String;)Z
    .locals 2
    .parameter "list"

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v1, "networkLastSSID"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putGenericValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized updateWpsBlockedNetworks()Z
    .locals 10

    .prologue
    .line 2095
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceSystemUser()V

    .line 2096
    const/4 v5, 0x1

    .line 2097
    .local v5, success:Z
    const/4 v4, 0x0

    .line 2098
    .local v4, showMsg:Z
    const/4 v0, 0x0

    .line 2099
    .local v0, hasChanged:Z
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 2100
    .local v3, listWifi:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 2101
    .local v6, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    const/4 v7, 0x1

    iget v8, v6, Landroid/net/wifi/WifiConfiguration;->status:I

    if-eq v7, v8, :cond_0

    .line 2102
    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p0, v7, v4}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkSecure(IZ)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p0, v7, v4}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkBlocked(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2104
    :cond_1
    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v7, :cond_2

    .line 2106
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2107
    .local v1, i:Landroid/content/Intent;
    const-string v7, "message"

    iget-object v8, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const v9, 0x10401a7

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2110
    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2113
    .end local v1           #i:Landroid/content/Intent;
    :cond_2
    iget v7, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/WifiPolicy;->asyncDisableNetwork(I)V

    .line 2114
    const/4 v0, 0x1

    goto :goto_0

    .line 2118
    .end local v6           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_3
    if-eqz v0, :cond_4

    iget-object v7, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v7

    if-nez v7, :cond_4

    .line 2119
    const-string v7, "WifiPolicyService"

    const-string v8, "updateWpsBlockedNetworks - error saving network configuration."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2120
    const/4 v5, 0x0

    .line 2122
    :cond_4
    monitor-exit p0

    return v5

    .line 2095
    .end local v0           #hasChanged:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #listWifi:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4           #showMsg:Z
    .end local v5           #success:Z
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method


# virtual methods
.method public addBlockedNetwork(Ljava/lang/String;)Z
    .locals 2
    .parameter "ssid"

    .prologue
    .line 1213
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1215
    .local v0, callingUid:I
    if-nez p1, :cond_0

    .line 1216
    const/4 v1, 0x0

    .line 1224
    :goto_0
    return v1

    .line 1219
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addToBlocked(ILjava/lang/String;)V

    .line 1222
    const-string v1, "BLOCKED_NETWORKS"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 1224
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->disableNetwork(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 7
    .parameter "config"
    .parameter "netSSID"

    .prologue
    .line 2277
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceSystemUser()V

    .line 2280
    iput-object p2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 2282
    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v4, "WIFI_CONF"

    const-string v5, "networkSSID"

    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2284
    .local v0, adminUid:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 2300
    :goto_0
    return-void

    .line 2293
    :cond_0
    new-instance v1, Lcom/android/server/enterprise/WifiPolicy$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy$1;-><init>(Lcom/android/server/enterprise/WifiPolicy;Landroid/net/wifi/WifiConfiguration;I)V

    .line 2298
    .local v1, taskToUpdateNetwork:Ljava/lang/Runnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2299
    .local v2, threadToUpdateNetwork:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public getAllowUserPolicyChanges()Z
    .locals 7

    .prologue
    .line 1719
    const/4 v1, 0x1

    .line 1720
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowUserChanges"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1723
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1724
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 1725
    move v1, v2

    .line 1729
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public getAllowUserProfiles(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 1671
    const/4 v2, 0x1

    .line 1672
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "WIFI"

    const-string v7, "allowUserProfiles"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1674
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1675
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 1676
    move v2, v3

    .line 1680
    .end local v3           #value:Z
    :cond_1
    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    .line 1681
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1682
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401a8

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1684
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1686
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public getBlockedNetworks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1261
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 1262
    .local v2, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAllBlockedList()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1263
    .local v0, aux:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1265
    .end local v0           #aux:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public getDHCPEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 1430
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1431
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1433
    .local v1, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_use_static_ip"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1435
    .local v0, ret:I
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1437
    if-nez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public getDefaultGateway()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1495
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1496
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1497
    const/4 v0, 0x0

    .line 1500
    :goto_0
    return-object v0

    .line 1499
    :cond_0
    const-string v1, "wifi_static_gateway"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1500
    .local v0, ret:Ljava/lang/String;
    goto :goto_0
.end method

.method public getDefaultIp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1472
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1473
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1474
    const/4 v0, 0x0

    .line 1477
    :goto_0
    return-object v0

    .line 1476
    :cond_0
    const-string v1, "wifi_static_ip"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1477
    .local v0, ret:Ljava/lang/String;
    goto :goto_0
.end method

.method public getDefaultPrimaryDNS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1518
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1519
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1520
    const/4 v0, 0x0

    .line 1523
    :goto_0
    return-object v0

    .line 1522
    :cond_0
    const-string v1, "wifi_static_dns1"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1523
    .local v0, ret:Ljava/lang/String;
    goto :goto_0
.end method

.method public getDefaultSecondaryDNS()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1541
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1542
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1543
    const/4 v0, 0x0

    .line 1546
    :goto_0
    return-object v0

    .line 1545
    :cond_0
    const-string v1, "wifi_static_dns2"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1546
    .local v0, ret:Ljava/lang/String;
    goto :goto_0
.end method

.method public getDefaultSubnetMask()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1564
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1565
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1566
    const/4 v0, 0x0

    .line 1569
    :goto_0
    return-object v0

    .line 1568
    :cond_0
    const-string v1, "wifi_static_netmask"

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1569
    .local v0, ret:Ljava/lang/String;
    goto :goto_0
.end method

.method public getMinimumRequiredSecurity()I
    .locals 7

    .prologue
    .line 1836
    const/4 v1, 0x0

    .line 1837
    .local v1, ret:I
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "minimumRequiredSecurity"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1839
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1840
    .local v2, value:I
    if-le v2, v1, :cond_0

    .line 1841
    move v1, v2

    goto :goto_0

    .line 1844
    .end local v2           #value:I
    :cond_1
    return v1
.end method

.method public getNetworkAllowDynamicTrustDecision(Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"

    .prologue
    .line 851
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkAnonymousIdValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"

    .prologue
    .line 980
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->anonymous_identity:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCaCertification(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 920
    sget-object v1, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ca_cert:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v1}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 922
    const-string v1, "keystore://CACERT_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 924
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkClientCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 934
    sget-object v1, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->client_cert:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v1}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 935
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 936
    const-string v1, "keystore://USRCERT_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 938
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkCnMatchList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "ssid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 789
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method public getNetworkDHCPEnabled(Ljava/lang/String;)Z
    .locals 5
    .parameter "ssid"

    .prologue
    const/4 v2, 0x0

    .line 1319
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAdminUid()I

    move-result v0

    .line 1321
    .local v0, callingUid:I
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1322
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1323
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v4, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 1325
    :cond_0
    return v2
.end method

.method public getNetworkEAPType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"

    .prologue
    .line 897
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->eap:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkFingerprintMatchList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter "ssid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 820
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .local v0, ret:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-object v0
.end method

.method public getNetworkGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"

    .prologue
    .line 1384
    const-string v0, "networkStaticGateway"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkIdentityValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"

    .prologue
    .line 973
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->identity:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkIp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"

    .prologue
    .line 1376
    const-string v0, "networkStaticIp"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkLinkSecurity(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAdminUid()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPSK(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "ssid"

    .prologue
    const/4 v2, 0x0

    .line 627
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAdminUid()I

    move-result v0

    .line 628
    .local v0, callingUid:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    .line 635
    :cond_0
    :goto_0
    return-object v2

    .line 631
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 632
    .local v1, enterprise:Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 633
    const-string v2, "*"

    goto :goto_0
.end method

.method public getNetworkPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "ssid"

    .prologue
    .line 962
    sget-object v1, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->password:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v1}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 963
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 964
    const-string v1, "*"

    .line 966
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPhase2(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 906
    sget-object v1, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->phase2:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v1}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 907
    .local v0, phase2:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 908
    const-string v1, "auth="

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 910
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPrimaryDNS(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"

    .prologue
    .line 1392
    const-string v0, "networkStaticPrimaryDns"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 948
    sget-object v1, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->private_key:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v1}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/WifiPolicy;->getEnterpriseFieldValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 949
    .local v0, value:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 950
    const-string v1, "keystore://USRPKEY_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 952
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkSSIDList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 255
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v0, SSIDList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "networkSSID"

    aput-object v5, v3, v4

    .line 260
    .local v3, ret:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI_CONF"

    invoke-virtual {v4, v5, v6, v6, v3}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 262
    .local v1, cv:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 263
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    const-string v5, "networkSSID"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    :cond_0
    return-object v0
.end method

.method public getNetworkSecondaryDNS(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"

    .prologue
    .line 1400
    const-string v0, "networkStaticSecondaryDns"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSubnetMask(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"

    .prologue
    .line 1408
    const-string v0, "networkStaticSubnetMask"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"

    .prologue
    .line 563
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey2(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"

    .prologue
    .line 572
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"

    .prologue
    .line 581
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKey4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"

    .prologue
    .line 590
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkWEPKey(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkWEPKeyId(Ljava/lang/String;)I
    .locals 2
    .parameter "ssid"

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAdminUid()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 458
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 461
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    add-int/lit8 v1, v1, 0x1

    .line 463
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPasswordHidden()Z
    .locals 7

    .prologue
    .line 1942
    const/4 v1, 0x0

    .line 1943
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "passwordHidden"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1946
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1947
    .local v2, value:Z
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 1948
    move v1, v2

    goto :goto_0

    .line 1951
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public getPromptCredentialsEnabled()Z
    .locals 7

    .prologue
    .line 1760
    const/4 v1, 0x1

    .line 1761
    .local v1, ret:Z
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "promptCredentials"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1764
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1765
    .local v2, value:Z
    if-nez v2, :cond_0

    .line 1766
    move v1, v2

    .line 1770
    .end local v2           #value:Z
    :cond_1
    return v1
.end method

.method public getTlsCertificateSecurityLevel()I
    .locals 7

    .prologue
    .line 1869
    const/4 v2, 0x0

    .line 1871
    .local v2, ret:I
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "tlsCertificateSecurityLevel"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1873
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1874
    .local v3, value:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 1875
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 1878
    .end local v3           #value:Ljava/lang/Integer;
    :cond_1
    return v2
.end method

.method public getWifiProfile(Ljava/lang/String;)Landroid/app/enterprise/WifiAdminProfile;
    .locals 11
    .parameter "ssid"

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 1082
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1084
    .local v0, adminUid:I
    new-instance v4, Landroid/app/enterprise/WifiAdminProfile;

    invoke-direct {v4}, Landroid/app/enterprise/WifiAdminProfile;-><init>()V

    .line 1086
    .local v4, ret:Landroid/app/enterprise/WifiAdminProfile;
    new-array v1, v10, [Ljava/lang/String;

    const-string v6, "adminUid"

    aput-object v6, v1, v9

    const-string v6, "networkSSID"

    aput-object v6, v1, v8

    .line 1089
    .local v1, col:[Ljava/lang/String;
    new-array v5, v10, [Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 1092
    .local v5, val:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v8, "WIFI_CONF"

    invoke-virtual {v6, v8, v1, v5, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1096
    .local v3, cvList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_e

    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    invoke-virtual {v6}, Landroid/content/ContentValues;->size()I

    move-result v6

    if-eqz v6, :cond_e

    .line 1097
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1102
    .local v2, cv:Landroid/content/ContentValues;
    const-string v6, "networkSSID"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1103
    const-string v6, "networkSSID"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    .line 1105
    :cond_0
    const-string v6, "networkPSK"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1106
    const-string v6, "networkPSK"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    .line 1108
    :cond_1
    const-string v6, "networkPassword"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1109
    const-string v6, "networkPassword"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    .line 1111
    :cond_2
    const-string v6, "networkWEPKey1"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1112
    const-string v6, "networkWEPKey1"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    .line 1114
    :cond_3
    const-string v6, "networkWEPKey2"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1115
    const-string v6, "networkWEPKey2"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    .line 1117
    :cond_4
    const-string v6, "networkWEPKey3"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1118
    const-string v6, "networkWEPKey3"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    .line 1120
    :cond_5
    const-string v6, "networkWEPKey4"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1121
    const-string v6, "networkWEPKey4"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    .line 1123
    :cond_6
    const-string v6, "networkWEPKeyId"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1124
    const-string v6, "networkWEPKeyId"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, v4, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    .line 1126
    :cond_7
    const-string v6, "networkIdentity"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1127
    const-string v6, "networkIdentity"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    .line 1129
    :cond_8
    const-string v6, "networkAnonymousId"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1130
    const-string v6, "networkAnonymousId"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    .line 1132
    :cond_9
    const-string v6, "networkPhase2"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1133
    const-string v6, "networkPhase2"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    .line 1135
    :cond_a
    const-string v6, "networkCaCertificate"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1136
    const-string v6, "networkCaCertificate"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    .line 1137
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    if-eqz v6, :cond_b

    .line 1138
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    const-string v7, "keystore://CACERT_"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    .line 1142
    :cond_b
    const-string v6, "networkClientCertification"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1143
    const-string v6, "networkClientCertification"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    .line 1144
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 1145
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    const-string v7, "keystore://USRCERT_"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    .line 1149
    :cond_c
    const-string v6, "networkPrivateKey"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1150
    const-string v6, "networkPrivateKey"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 1151
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    if-eqz v6, :cond_d

    .line 1152
    iget-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    const-string v7, "keystore://USRPKEY_"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    .line 1156
    :cond_d
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkLinkSecurity(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    .line 1158
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v4           #ret:Landroid/app/enterprise/WifiAdminProfile;
    :goto_0
    return-object v4

    .restart local v4       #ret:Landroid/app/enterprise/WifiAdminProfile;
    :cond_e
    move-object v4, v7

    .line 1099
    goto :goto_0
.end method

.method public isDynamicTrustDecisionAllowed(Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"

    .prologue
    .line 879
    const/4 v0, 0x0

    return v0
.end method

.method public isEnterpriseNetwork(Ljava/lang/String;)Z
    .locals 2
    .parameter "ssid"

    .prologue
    .line 2204
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceSystemUser()V

    .line 2205
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->getAllEnterpriseSSIDs()Ljava/util/List;

    move-result-object v0

    .line 2206
    .local v0, ssidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isNetworkBlocked(Ljava/lang/String;Z)Z
    .locals 5
    .parameter "ssid"
    .parameter "showMsg"

    .prologue
    .line 1276
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->isBlocked(Ljava/lang/String;)Z

    move-result v1

    .line 1277
    .local v1, ret:Z
    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 1278
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1279
    .local v0, i:Landroid/content/Intent;
    const-string v2, "message"

    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const v4, 0x10401a5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1281
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1283
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return v1
.end method

.method public isNetworkSecure(IZ)Z
    .locals 5
    .parameter "netId"
    .parameter "showMsg"

    .prologue
    .line 1911
    invoke-virtual {p0}, Lcom/android/server/enterprise/WifiPolicy;->getMinimumRequiredSecurity()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkSecure(II)Z

    move-result v1

    .line 1912
    .local v1, ret:Z
    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 1913
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1914
    .local v0, i:Landroid/content/Intent;
    const-string v2, "message"

    iget-object v3, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const v4, 0x10401a7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1916
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1918
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return v1
.end method

.method public isWifiAllowed(Z)Z
    .locals 8
    .parameter "showMsg"

    .prologue
    .line 1638
    const/4 v2, 0x1

    .line 1639
    .local v2, ret:Z
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "WIFI"

    const-string v7, "allowWifi"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1642
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 1643
    .local v3, value:Z
    if-nez v3, :cond_0

    .line 1644
    move v2, v3

    .line 1648
    .end local v3           #value:Z
    :cond_1
    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    .line 1649
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.enterprise.SHOW_UI"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1650
    .local v0, i:Landroid/content/Intent;
    const-string v5, "message"

    iget-object v6, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    const v7, 0x10401a6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1652
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1654
    .end local v0           #i:Landroid/content/Intent;
    :cond_2
    return v2
.end method

.method public onAdminRemoved()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public removeBlockedNetwork(Ljava/lang/String;)Z
    .locals 6
    .parameter "ssid"

    .prologue
    const/4 v4, 0x0

    .line 1235
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1237
    .local v0, callingUid:I
    if-nez p1, :cond_0

    move v1, v4

    .line 1252
    :goto_0
    return v1

    .line 1240
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/android/server/enterprise/WifiPolicy;->removeFromBlocked(ILjava/lang/String;)V

    .line 1241
    const/4 v1, 0x1

    .line 1242
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1244
    .local v2, token:J
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkBlocked(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1245
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkIdBySSID(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5, v4}, Lcom/android/server/enterprise/WifiPolicy;->asyncEnableNetwork(IZ)V

    .line 1247
    :cond_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1250
    const-string v4, "BLOCKED_NETWORKS"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removeNetworkConfiguration(Ljava/lang/String;)Z
    .locals 8
    .parameter "ssid"

    .prologue
    .line 273
    const/4 v2, 0x1

    .line 276
    .local v2, ret:Z
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 280
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_2

    .line 281
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 288
    .local v0, callingUid:I
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 289
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 290
    .local v3, token:J
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 291
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 292
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    .line 293
    const/4 v5, 0x0

    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 295
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 298
    .end local v3           #token:J
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "WIFI_CONF"

    const-string v7, "networkSSID"

    invoke-virtual {v5, v6, v0, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v2, v5

    .line 302
    const-string v5, "ENTERPRISE_SSIDS"

    invoke-direct {p0, v5}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 304
    return v2

    .line 283
    .end local v0           #callingUid:I
    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v6, "WIFI_CONF"

    const-string v7, "networkSSID"

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->getAdminByField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .restart local v0       #callingUid:I
    goto :goto_0
.end method

.method public setAllowUserPolicyChanges(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    .line 1700
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1701
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "WIFI"

    const-string v4, "allowUserChanges"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1705
    .local v1, ret:Z
    const-string v2, "ALLOW_USER_CHANGES"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 1707
    return v1
.end method

.method public setAllowUserProfiles(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    .line 1659
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1660
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "WIFI"

    const-string v4, "allowUserProfiles"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1664
    .local v1, ret:Z
    const-string v2, "ALLOW_USER_PROFILES"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 1666
    return v1
.end method

.method public setDHCPEnabled(Z)Z
    .locals 6
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 1416
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1417
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1425
    :goto_0
    return v3

    .line 1420
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1422
    .local v1, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_use_static_ip"

    if-eqz p1, :cond_1

    :goto_1
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 1424
    .local v0, ret:Z
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v0

    .line 1425
    goto :goto_0

    .line 1422
    .end local v0           #ret:Z
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public setDefaultGateway(Ljava/lang/String;)Z
    .locals 2
    .parameter "ipAddr"

    .prologue
    .line 1482
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1483
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1484
    const/4 v0, 0x0

    .line 1490
    :cond_0
    :goto_0
    return v0

    .line 1486
    :cond_1
    const/4 v0, 0x0

    .line 1487
    .local v0, ret:Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1488
    const-string v1, "wifi_static_gateway"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setDefaultIp(Ljava/lang/String;)Z
    .locals 2
    .parameter "ipAddr"

    .prologue
    .line 1459
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1460
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1461
    const/4 v0, 0x0

    .line 1467
    :cond_0
    :goto_0
    return v0

    .line 1463
    :cond_1
    const/4 v0, 0x0

    .line 1464
    .local v0, ret:Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1465
    const-string v1, "wifi_static_ip"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setDefaultPrimaryDNS(Ljava/lang/String;)Z
    .locals 2
    .parameter "ipAddr"

    .prologue
    .line 1505
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1506
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1507
    const/4 v0, 0x0

    .line 1513
    :cond_0
    :goto_0
    return v0

    .line 1509
    :cond_1
    const/4 v0, 0x0

    .line 1510
    .local v0, ret:Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1511
    const-string v1, "wifi_static_dns1"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setDefaultSecondaryDNS(Ljava/lang/String;)Z
    .locals 2
    .parameter "ipAddr"

    .prologue
    .line 1528
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1529
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1530
    const/4 v0, 0x0

    .line 1536
    :cond_0
    :goto_0
    return v0

    .line 1532
    :cond_1
    const/4 v0, 0x0

    .line 1533
    .local v0, ret:Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1534
    const-string v1, "wifi_static_dns2"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setDefaultSubnetMask(Ljava/lang/String;)Z
    .locals 2
    .parameter "ipAddr"

    .prologue
    .line 1551
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 1552
    const/4 v0, 0x0

    .line 1553
    .local v0, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isHoneycombOrHigher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1554
    const/4 v1, 0x0

    .line 1559
    :goto_0
    return v1

    .line 1556
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isIpAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1557
    const-string v1, "wifi_static_netmask"

    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/WifiPolicy;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_1
    move v1, v0

    .line 1559
    goto :goto_0
.end method

.method public setMinimumRequiredSecurity(I)Z
    .locals 16
    .parameter "secType"

    .prologue
    .line 1775
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v1

    .line 1778
    .local v1, callingUid:I
    if-ltz p1, :cond_0

    const/4 v13, 0x7

    move/from16 v0, p1

    if-gt v0, v13, :cond_0

    const/4 v13, 0x4

    move/from16 v0, p1

    if-eq v0, v13, :cond_0

    const/4 v13, 0x3

    move/from16 v0, p1

    if-ne v0, v13, :cond_1

    .line 1780
    :cond_0
    const/4 v8, 0x0

    .line 1818
    :goto_0
    return v8

    .line 1783
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/WifiPolicy;->getMinimumRequiredSecurity()I

    move-result v4

    .line 1785
    .local v4, lastSec:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "WIFI"

    const-string v15, "minimumRequiredSecurity"

    move/from16 v0, p1

    invoke-virtual {v13, v1, v14, v15, v0}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    .line 1788
    .local v8, ret:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v14, "WIFI"

    const-string v15, "minimumRequiredSecurity"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/enterprise/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1790
    .local v12, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 1791
    .local v7, newSec:I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1792
    .local v11, value:I
    if-le v11, v7, :cond_2

    .line 1793
    move v7, v11

    goto :goto_1

    .line 1800
    .end local v11           #value:I
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 1801
    .local v9, token:J
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1802
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    .line 1803
    .local v5, listWifi:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 1804
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    iget v6, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1805
    .local v6, netId:I
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkSecure(II)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1806
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/WifiPolicy;->asyncDisableNetwork(I)V

    goto :goto_2

    .line 1807
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v4}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkSecure(II)Z

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/android/server/enterprise/WifiPolicy;->isNetworkSecure(II)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1809
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v13}, Lcom/android/server/enterprise/WifiPolicy;->asyncEnableNetwork(IZ)V

    goto :goto_2

    .line 1813
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #listWifi:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v6           #netId:I
    :cond_6
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1816
    const-string v13, "MINIMUM_SECURITY_LEVEL"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setNetworkAllowDynamicTrustDecision(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 836
    const/4 v0, 0x0

    return v0
.end method

.method public setNetworkAnonymousIdValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 711
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->anonymous_identity:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 748
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ca_cert:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v0

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    .line 751
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ca_cert:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keystore://CACERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setNetworkClientCertification(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 734
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->client_cert:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v0

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    .line 737
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->client_cert:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keystore://USRCERT_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setNetworkCnMatchList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .parameter "ssid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 775
    .local p2, value:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public setNetworkDHCPEnabled(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "ssid"
    .parameter "enable"

    .prologue
    .line 1303
    if-nez p1, :cond_0

    .line 1304
    const/4 v2, 0x0

    .line 1315
    :goto_0
    return v2

    .line 1307
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission(Ljava/lang/String;)I

    move-result v0

    .line 1309
    .local v0, callingUid:I
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 1310
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x1

    .line 1311
    .local v2, ret:Z
    if-eqz p2, :cond_1

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_1
    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 1312
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 1313
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0

    .line 1311
    :cond_1
    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_1
.end method

.method public setNetworkFingerprintMatchList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 1
    .parameter "ssid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 805
    .local p2, value:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public setNetworkGateway(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"
    .parameter "addr"

    .prologue
    .line 1380
    const-string v0, "networkStaticGateway"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkIdentityValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 698
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    .line 699
    const-string v0, "WifiPolicyService"

    const-string v1, "Identity value excedes maximum length (32)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/4 v0, 0x0

    .line 702
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->identity:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setNetworkIp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"
    .parameter "addr"

    .prologue
    .line 1372
    const-string v0, "networkStaticIp"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkLinkSecurity(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "ssid"
    .parameter "value"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 313
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 315
    .local v0, callingUid:I
    if-nez p2, :cond_1

    move v3, v4

    .line 385
    :cond_0
    :goto_0
    return v3

    .line 319
    :cond_1
    const-string v5, "FAST"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "LEAP"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move v3, v4

    .line 320
    goto :goto_0

    .line 323
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 324
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v3, 0x1

    .line 325
    .local v3, ret:Z
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 327
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->clear()V

    .line 328
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->clear()V

    .line 329
    const-string v5, "NONE"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 330
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    .line 351
    :cond_4
    :goto_1
    const-string v4, "EAP"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 352
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 357
    :cond_5
    const/4 v4, -0x1

    iput v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 358
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->removeNetworkConfiguration(Ljava/lang/String;)Z

    move-result v3

    .line 359
    const-string v4, "WifiPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setNetworkLinkSecurity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    and-int/2addr v3, v4

    .line 362
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 363
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    .line 372
    :cond_6
    const-string v4, "NONE"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 373
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    sget-object v4, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_e

    .line 374
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-eqz v4, :cond_7

    .line 375
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const-string v5, ""

    aput-object v5, v4, v2

    .line 373
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 331
    .end local v2           #i:I
    :cond_8
    const-string v5, "WEP"

    invoke-virtual {p2, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 332
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    .line 333
    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5, v4}, Ljava/util/BitSet;->set(I)V

    .line 334
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 335
    :cond_9
    const-string v4, "PSK"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 336
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v6}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 337
    :cond_a
    const-string v4, "EAP"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 338
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 339
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 340
    const-string v4, "PEAP"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 341
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v5, "PEAP"

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 342
    :cond_b
    const-string v4, "TTLS"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 343
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v5, "TTLS"

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 344
    :cond_c
    const-string v4, "TLS"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 345
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v5, "TLS"

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 347
    :cond_d
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v5, "PEAP"

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 380
    :cond_e
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 383
    const-string v4, "ENTERPRISE_SSIDS"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setNetworkPSK(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 601
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 603
    .local v0, callingUid:I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_2

    .line 604
    :cond_0
    const/4 v2, 0x0

    .line 618
    :cond_1
    :goto_0
    return v2

    .line 607
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 608
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v2, 0x1

    .line 609
    .local v2, ret:Z
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-le v3, v4, :cond_1

    .line 610
    const-string v3, "[0-9A-Fa-f]{64}"

    invoke-virtual {p2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 611
    iput-object p2, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 615
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 616
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0

    .line 613
    :cond_3
    invoke-static {p2}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_1
.end method

.method public setNetworkPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 685
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_0

    .line 686
    const-string v0, "WifiPolicyService"

    const-string v1, "Password excedes maximum length (32)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/4 v0, 0x0

    .line 689
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->password:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setNetworkPhase2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 720
    if-eqz p2, :cond_0

    .line 721
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->phase2:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "auth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    .line 724
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNetworkPrimaryDNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"
    .parameter "addr"

    .prologue
    .line 1388
    const-string v0, "networkStaticPrimaryDns"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkPrivateKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 762
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->private_key:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v0

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    .line 765
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->private_key:Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mEnterpriseFields;->ordinal()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keystore://USRPKEY_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setEnterpriseFieldValue(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public setNetworkSSID(Ljava/lang/String;)Z
    .locals 13
    .parameter "ssid"

    .prologue
    const/4 v10, 0x0

    .line 196
    const/4 v6, 0x0

    .line 198
    .local v6, ret:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 200
    .local v0, callingUid:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x20

    if-le v11, v12, :cond_2

    .line 201
    :cond_0
    const-string v11, "WifiPolicyService"

    const-string v12, "SSID is invalid or excedes maximum length (32)"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_1
    :goto_0
    return v10

    .line 206
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 207
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 208
    .local v4, lastSSID:Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 209
    const/4 v10, 0x1

    goto :goto_0

    .line 213
    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 214
    .local v7, token:J
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v1

    .line 215
    .local v1, checkEnterprise:Z
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 216
    if-nez v1, :cond_1

    .line 220
    invoke-static {p1}, Lcom/android/server/enterprise/WifiPolicy;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 221
    const/4 v11, -0x1

    iput v11, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 223
    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/util/BitSet;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 224
    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v11, v10}, Ljava/util/BitSet;->set(I)V

    .line 226
    :cond_4
    invoke-direct {p0, v0, v2}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v6

    .line 229
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 230
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->isWifiStateEnabled()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 231
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v5

    .line 232
    .local v5, list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 233
    .local v9, wifi:Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v11, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    if-eqz v4, :cond_5

    iget-object v10, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 235
    :cond_6
    iget-object v10, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v11, v9, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    goto :goto_1

    .line 238
    .end local v9           #wifi:Landroid/net/wifi/WifiConfiguration;
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    .line 239
    if-eqz v4, :cond_9

    .line 240
    invoke-static {v4}, Lcom/android/server/enterprise/WifiPolicy;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p1, v10}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    .line 246
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_8
    :goto_2
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 249
    const-string v10, "ENTERPRISE_SSIDS"

    invoke-direct {p0, v10}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    move v10, v6

    .line 251
    goto/16 :goto_0

    .line 242
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #list:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_9
    invoke-direct {p0, p1, v4}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkLastSSID(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2
.end method

.method public setNetworkSecondaryDNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"
    .parameter "addr"

    .prologue
    .line 1396
    const-string v0, "networkStaticSecondaryDns"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkSubnetMask(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"
    .parameter "addr"

    .prologue
    .line 1404
    const-string v0, "networkStaticSubnetMask"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey1(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 506
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey1:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 516
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey2:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey3(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 526
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey3:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKey4(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 536
    sget-object v0, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->wepkey4:Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;

    invoke-virtual {v0}, Lcom/android/server/enterprise/WifiPolicy$mWepKeyIndex;->ordinal()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNetworkWEPKeyId(Ljava/lang/String;I)Z
    .locals 4
    .parameter "ssid"
    .parameter "keyId"

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 433
    .local v0, callingUid:I
    const/4 v3, 0x1

    if-lt p2, v3, :cond_0

    const/4 v3, 0x4

    if-le p2, v3, :cond_1

    .line 434
    :cond_0
    const/4 v2, 0x0

    .line 448
    :goto_0
    return v2

    .line 437
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/WifiPolicy;->getNetworkConfiguration(ILjava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 439
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 442
    add-int/lit8 v3, p2, -0x1

    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 443
    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkConfiguration(ILandroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    .line 444
    .local v2, ret:Z
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/WifiPolicy;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0

    .line 446
    .end local v2           #ret:Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #ret:Z
    goto :goto_0
.end method

.method public setPasswordHidden(Z)Z
    .locals 4
    .parameter "value"

    .prologue
    .line 1930
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1931
    .local v0, callingUid:I
    iget-object v1, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v2, "WIFI"

    const-string v3, "passwordHidden"

    invoke-virtual {v1, v0, v2, v3, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public setPromptCredentialsEnabled(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    .line 1743
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1744
    .local v0, callingUid:I
    iget-object v2, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v3, "WIFI"

    const-string v4, "promptCredentials"

    invoke-virtual {v2, v0, v3, v4, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1748
    .local v1, ret:Z
    const-string v2, "PROMPT_CREDENTIALS_ENABLED"

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 1750
    return v1
.end method

.method public setTlsCertificateSecurityLevel(I)Z
    .locals 7
    .parameter "level"

    .prologue
    .line 1853
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1855
    .local v0, callingUid:I
    if-ltz p1, :cond_0

    const/4 v4, 0x1

    if-le p1, v4, :cond_1

    .line 1856
    :cond_0
    const/4 v1, 0x0

    .line 1864
    :goto_0
    return v1

    .line 1859
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "tlsCertificateSecurityLevel"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 1862
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1863
    .local v2, token:J
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public setWifi(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    const/4 v7, 0x0

    .line 1583
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1584
    .local v0, adminUid:I
    const/4 v1, 0x1

    .line 1585
    .local v1, success:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1587
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifi"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1591
    const-string v4, "WIFI_ALLOWED"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    .line 1593
    if-eqz p1, :cond_0

    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/WifiPolicy;->isWifiAllowed(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1594
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1599
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1601
    return v1

    .line 1596
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method

.method public setWifiAllowed(Z)Z
    .locals 7
    .parameter "enable"

    .prologue
    .line 1612
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    move-result v0

    .line 1613
    .local v0, callingUid:I
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/EdmStorageProvider;

    const-string v5, "WIFI"

    const-string v6, "allowWifi"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 1615
    .local v1, ret:Z
    if-nez p1, :cond_1

    .line 1616
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v4, :cond_0

    .line 1617
    const/4 v4, 0x0

    .line 1627
    :goto_0
    return v4

    .line 1619
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1620
    .local v2, token:J
    iget-object v4, p0, Lcom/android/server/enterprise/WifiPolicy;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v4

    and-int/2addr v1, v4

    .line 1621
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1625
    .end local v2           #token:J
    :cond_1
    const-string v4, "WIFI_ALLOWED"

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/WifiPolicy;->sendCacheUpdateCommand(Ljava/lang/String;)V

    move v4, v1

    .line 1627
    goto :goto_0
.end method

.method public setWifiProfile(Landroid/app/enterprise/WifiAdminProfile;)Z
    .locals 10
    .parameter "profile"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 985
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->enforceWifiPermission()I

    .line 986
    const/4 v1, 0x1

    .line 988
    .local v1, ret:Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 989
    .local v3, token:J
    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/server/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    .line 990
    .local v0, isEnterprise:Z
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 994
    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 995
    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v2, v6, v5

    .line 996
    .local v2, sec:Ljava/lang/String;
    const-string v6, "PSK"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 997
    const-string v6, "WifiPolicyService"

    const-string v7, "PSK not set"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    .end local v2           #sec:Ljava/lang/String;
    :goto_0
    return v5

    .line 1000
    .restart local v2       #sec:Ljava/lang/String;
    :cond_0
    const-string v6, "WEP"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1001
    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    if-lt v6, v8, :cond_1

    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    if-le v6, v9, :cond_2

    .line 1002
    :cond_1
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKeyId invalid"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1005
    :cond_2
    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    if-ne v6, v8, :cond_4

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1007
    :cond_3
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKey1 not set"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1010
    :cond_4
    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1012
    :cond_5
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKey2 not set"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1015
    :cond_6
    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1017
    :cond_7
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKey3 not set"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1020
    :cond_8
    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    if-ne v6, v9, :cond_a

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    if-eqz v6, :cond_9

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1022
    :cond_9
    const-string v6, "WifiPolicyService"

    const-string v7, "WebKey4 not set"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1029
    .end local v2           #sec:Ljava/lang/String;
    :cond_a
    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    if-eqz v6, :cond_1a

    if-nez v0, :cond_1a

    .line 1030
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkSSID(Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1034
    :cond_b
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    if-eqz v5, :cond_c

    .line 1035
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey1:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1037
    :cond_c
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    if-eqz v5, :cond_d

    .line 1038
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey2:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1040
    :cond_d
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    if-eqz v5, :cond_e

    .line 1041
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey3:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey3(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1043
    :cond_e
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    if-eqz v5, :cond_f

    .line 1044
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKey4:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKey4(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1046
    :cond_f
    iget v5, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_10

    .line 1047
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget v6, p1, Landroid/app/enterprise/WifiAdminProfile;->wepKeyId:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkWEPKeyId(Ljava/lang/String;I)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1049
    :cond_10
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    if-eqz v5, :cond_11

    .line 1050
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->password:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1052
    :cond_11
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    if-eqz v5, :cond_12

    .line 1053
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->psk:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkPSK(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1055
    :cond_12
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    if-eqz v5, :cond_13

    .line 1056
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->security:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkLinkSecurity(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1058
    :cond_13
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    if-eqz v5, :cond_14

    .line 1059
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->caCertificate:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1061
    :cond_14
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    if-eqz v5, :cond_15

    .line 1062
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->clientCertification:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkClientCertification(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1064
    :cond_15
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    if-eqz v5, :cond_16

    .line 1065
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->phase2:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkPhase2(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1067
    :cond_16
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    if-eqz v5, :cond_17

    .line 1068
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->privateKey:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkPrivateKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1070
    :cond_17
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    if-eqz v5, :cond_18

    .line 1071
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->userIdentity:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkIdentityValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    .line 1073
    :cond_18
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    if-eqz v5, :cond_19

    .line 1074
    iget-object v5, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->anonymousIdentity:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/enterprise/WifiPolicy;->setNetworkAnonymousIdValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    and-int/2addr v1, v5

    :cond_19
    move v5, v1

    .line 1077
    goto/16 :goto_0

    .line 1031
    :cond_1a
    iget-object v6, p1, Landroid/app/enterprise/WifiAdminProfile;->ssid:Ljava/lang/String;

    if-nez v6, :cond_b

    goto/16 :goto_0
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/server/enterprise/WifiPolicy;->loadWifiManager()V

    .line 108
    iget-object v0, p0, Lcom/android/server/enterprise/WifiPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/WifiPolicyCache;

    .line 109
    return-void
.end method
