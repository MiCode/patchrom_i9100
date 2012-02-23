.class public Landroid/app/enterprise/WifiPolicy;
.super Ljava/lang/Object;
.source "WifiPolicy.java"


# static fields
.field public static final ACTION_DISABLE_NETWORK:Ljava/lang/String; = "edm.intent.action.disable"

.field public static final ACTION_ENABLE_NETWORK:Ljava/lang/String; = "edm.intent.action.enable"

.field public static final ACTION_LOCK_KEYSTORE:Ljava/lang/String; = "edm.intent.action.lock"

.field public static final CERTIFICATE_SECURITY_LEVEL_HIGH:I = 0x1

.field public static final CERTIFICATE_SECURITY_LEVEL_LOW:I = 0x0

.field public static final SECURITY_LEVEL_EAP_FAST:I = 0x4

.field public static final SECURITY_LEVEL_EAP_LEAP:I = 0x3

.field public static final SECURITY_LEVEL_EAP_PEAP:I = 0x5

.field public static final SECURITY_LEVEL_EAP_TLS:I = 0x7

.field public static final SECURITY_LEVEL_EAP_TTLS:I = 0x6

.field public static final SECURITY_LEVEL_OPEN:I = 0x0

.field public static final SECURITY_LEVEL_WEP:I = 0x1

.field public static final SECURITY_LEVEL_WPA:I = 0x2

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IWifiPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "WifiPolicy"

    sput-object v0, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const-string/jumbo v0, "wifi_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IWifiPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IWifiPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    .line 62
    return-void
.end method

.method public static getLinkSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .parameter "config"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1933
    const/4 v0, 0x0

    .line 1934
    .local v0, sec:I
    if-eqz p0, :cond_0

    .line 1935
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1936
    const/4 v0, 0x2

    .line 1958
    :cond_0
    :goto_0
    return v0

    .line 1937
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1939
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1940
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PEAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1941
    const/4 v0, 0x5

    goto :goto_0

    .line 1942
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TTLS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1943
    const/4 v0, 0x6

    goto :goto_0

    .line 1944
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TLS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1945
    const/4 v0, 0x7

    goto :goto_0

    .line 1946
    :cond_5
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LEAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1947
    const/4 v0, 0x3

    goto :goto_0

    .line 1948
    :cond_6
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FAST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1949
    const/4 v0, 0x4

    goto :goto_0

    .line 1953
    :cond_7
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-nez v3, :cond_8

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v3, :cond_8

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v4

    if-nez v3, :cond_8

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v5

    if-eqz v3, :cond_9

    :cond_8
    move v0, v2

    :goto_1
    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public addBlockedNetwork(Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"

    .prologue
    .line 1172
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1174
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->addBlockedNetwork(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1181
    :goto_0
    return v1

    .line 1175
    :catch_0
    move-exception v0

    .line 1176
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "addBlockedNetwork - Failed talking with Wifi service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1181
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 3
    .parameter "config"
    .parameter "netSSID"

    .prologue
    .line 1923
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1924
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1929
    :cond_0
    :goto_0
    return-void

    .line 1926
    :catch_0
    move-exception v0

    .line 1927
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API edmAddOrUpdate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAllowUserPolicyChanges()Z
    .locals 3

    .prologue
    .line 1668
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1670
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getAllowUserPolicyChanges()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1675
    :goto_0
    return v1

    .line 1671
    :catch_0
    move-exception v0

    .line 1672
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getAllowUserPolicyChanges"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1675
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllowUserProfiles(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 1624
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1626
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getAllowUserProfiles(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1631
    :goto_0
    return v1

    .line 1627
    :catch_0
    move-exception v0

    .line 1628
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getAllowUserProfiles"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1631
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBlockedNetworks()Ljava/util/List;
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
    .line 1218
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1220
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getBlockedNetworks()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1229
    :goto_0
    return-object v1

    .line 1221
    :catch_0
    move-exception v0

    .line 1222
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "getBlockedNetworks - Failed talking with Wifi service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1229
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDHCPEnabled()Z
    .locals 3

    .prologue
    .line 1284
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1286
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getDHCPEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1291
    :goto_0
    return v1

    .line 1287
    :catch_0
    move-exception v0

    .line 1288
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "- Failed talking with setDHCPEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1291
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultGateway()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1380
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1382
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getDefaultGateway()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1387
    :goto_0
    return-object v1

    .line 1383
    :catch_0
    move-exception v0

    .line 1384
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setDefaultGateway"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1387
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultIp()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1332
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1334
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getDefaultIp()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1339
    :goto_0
    return-object v1

    .line 1335
    :catch_0
    move-exception v0

    .line 1336
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setDefaultIp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1339
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultPrimaryDNS()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1429
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1431
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getDefaultPrimaryDNS()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1436
    :goto_0
    return-object v1

    .line 1432
    :catch_0
    move-exception v0

    .line 1433
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getDefaultPrimaryDNS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1436
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultSecondaryDNS()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1477
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1479
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getDefaultSecondaryDNS()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1484
    :goto_0
    return-object v1

    .line 1480
    :catch_0
    move-exception v0

    .line 1481
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getDefaultSecondaryDNS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1484
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultSubnetMask()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1525
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1527
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getDefaultSubnetMask()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1532
    :goto_0
    return-object v1

    .line 1528
    :catch_0
    move-exception v0

    .line 1529
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getDefaultSubnetMask"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1532
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMinimumRequiredSecurity()I
    .locals 3

    .prologue
    .line 1775
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1777
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getMinimumRequiredSecurity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1782
    :goto_0
    return v1

    .line 1778
    :catch_0
    move-exception v0

    .line 1779
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getSupportedSecurity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1782
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkAnonymousIdValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 803
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 804
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkAnonymousIdValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 810
    :goto_0
    return-object v1

    .line 806
    :catch_0
    move-exception v0

    .line 807
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkAnonymousIdValue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 810
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkCaCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 695
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 696
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkCaCertification(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 701
    :goto_0
    return-object v1

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkCaCertification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 701
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkClientCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 713
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 714
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkClientCertificate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 719
    :goto_0
    return-object v1

    .line 716
    :catch_0
    move-exception v0

    .line 717
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkClientCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 719
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkDHCPEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"

    .prologue
    .line 845
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 847
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkDHCPEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 852
    :goto_0
    return v1

    .line 848
    :catch_0
    move-exception v0

    .line 849
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "- Failed talking with getNetworkDHCPEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 852
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkEAPType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 659
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 660
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkEAPType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 665
    :goto_0
    return-object v1

    .line 662
    :catch_0
    move-exception v0

    .line 663
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkEAPType"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 665
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 949
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 951
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkGateway(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 956
    :goto_0
    return-object v1

    .line 952
    :catch_0
    move-exception v0

    .line 953
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getNetworkGateway"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 956
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkIdentityValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 785
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 786
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkIdentityValue(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 791
    :goto_0
    return-object v1

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Wi-Fi policy API getNetworkIdentityValue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 791
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkIp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 897
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 899
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkIp(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 904
    :goto_0
    return-object v1

    .line 900
    :catch_0
    move-exception v0

    .line 901
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getNetworkIp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 904
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkLinkSecurity(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 179
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkLinkSecurity(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 185
    :goto_0
    return-object v1

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkLinkSecurity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPSK(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 731
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 732
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkPSK(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 737
    :goto_0
    return-object v1

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkPrivateKey"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 737
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 767
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 768
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkPassword(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 773
    :goto_0
    return-object v1

    .line 770
    :catch_0
    move-exception v0

    .line 771
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkPassword"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 773
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPhase2(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 677
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkPhase2(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 683
    :goto_0
    return-object v1

    .line 680
    :catch_0
    move-exception v0

    .line 681
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkPhase2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 683
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPrimaryDNS(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 1001
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1003
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkPrimaryDNS(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1008
    :goto_0
    return-object v1

    .line 1004
    :catch_0
    move-exception v0

    .line 1005
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getNetworkPrimaryDNS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1008
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 749
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 750
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 755
    :goto_0
    return-object v1

    .line 752
    :catch_0
    move-exception v0

    .line 753
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkPrivateKey"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 755
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkSSIDList()Ljava/util/List;
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
    .line 100
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkSSIDList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 106
    :goto_0
    return-object v1

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkSSID"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkSecondaryDNS(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 1053
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1055
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkSecondaryDNS(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1060
    :goto_0
    return-object v1

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getNetworkSecondaryDNS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1060
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkSubnetMask(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 1105
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1107
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkSubnetMask(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1112
    :goto_0
    return-object v1

    .line 1108
    :catch_0
    move-exception v0

    .line 1109
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getNetworkSubnetMask"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1112
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkWEPKey1(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 333
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 334
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkWEPKey1(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 339
    :goto_0
    return-object v1

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkWEPKey1"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkWEPKey2(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 355
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkWEPKey2(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 361
    :goto_0
    return-object v1

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkWEPKey2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 361
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkWEPKey3(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 377
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkWEPKey3(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 383
    :goto_0
    return-object v1

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkWEPKey3"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkWEPKey4(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 399
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkWEPKey4(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 405
    :goto_0
    return-object v1

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkWEPKey4"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkWEPKeyId(Ljava/lang/String;)I
    .locals 3
    .parameter "ssid"

    .prologue
    .line 641
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 642
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getNetworkWEPKeyId(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 647
    :goto_0
    return v1

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getNetworkWEPKeyId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 647
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPasswordHidden()Z
    .locals 3

    .prologue
    .line 1888
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1890
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getPasswordHidden()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1895
    :goto_0
    return v1

    .line 1891
    :catch_0
    move-exception v0

    .line 1892
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getPasswordHidden"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1895
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPromptCredentialsEnabled()Z
    .locals 3

    .prologue
    .line 1712
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1714
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getPromptCredentialsEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1719
    :goto_0
    return v1

    .line 1715
    :catch_0
    move-exception v0

    .line 1716
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getPromptCredentialsEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1719
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTlsCertificateSecurityLevel()I
    .locals 3

    .prologue
    .line 1827
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1829
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IWifiPolicy;->getTlsCertificateSecurityLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1834
    :goto_0
    return v1

    .line 1830
    :catch_0
    move-exception v0

    .line 1831
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with getTlsCertificateSecurityLevel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1834
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiProfile(Ljava/lang/String;)Landroid/app/enterprise/WifiAdminProfile;
    .locals 3
    .parameter "ssid"

    .prologue
    .line 1145
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1146
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->getWifiProfile(Ljava/lang/String;)Landroid/app/enterprise/WifiAdminProfile;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1151
    :goto_0
    return-object v1

    .line 1148
    :catch_0
    move-exception v0

    .line 1149
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API getWifiProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1151
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnterpriseNetwork(Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"

    .prologue
    .line 1907
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1908
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1913
    :goto_0
    return v1

    .line 1910
    :catch_0
    move-exception v0

    .line 1911
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API isEnterpriseNetwork"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1913
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNetworkBlocked(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "ssid"
    .parameter "showMsg"

    .prologue
    .line 1242
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1244
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->isNetworkBlocked(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1251
    :goto_0
    return v1

    .line 1245
    :catch_0
    move-exception v0

    .line 1246
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isNetworkBlocked - Failed talking with Wifi service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1251
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNetworkSecure(IZ)Z
    .locals 3
    .parameter "netId"
    .parameter "showMsg"

    .prologue
    .line 1847
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1849
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->isNetworkSecure(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1854
    :goto_0
    return v1

    .line 1850
    :catch_0
    move-exception v0

    .line 1851
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with isNetworkSecure"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1854
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWifiAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 1579
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1581
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->isWifiAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1586
    :goto_0
    return v1

    .line 1582
    :catch_0
    move-exception v0

    .line 1583
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with isWifiEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1586
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeBlockedNetwork(Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"

    .prologue
    .line 1198
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1200
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->removeBlockedNetwork(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1209
    :goto_0
    return v1

    .line 1201
    :catch_0
    move-exception v0

    .line 1202
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "removeBlockedNetwork - Failed talking with Wifi service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1209
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeNetworkConfiguration(Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"

    .prologue
    .line 127
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->removeNetworkConfiguration(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 134
    :goto_0
    return v1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API removeNetworkConfiguration"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAllowUserPolicyChanges(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 1651
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1653
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setAllowUserPolicyChanges(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1658
    :goto_0
    return v1

    .line 1654
    :catch_0
    move-exception v0

    .line 1655
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setAllowUserPolicyChanges"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1658
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAllowUserProfiles(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 1605
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1607
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setAllowUserProfiles(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1612
    :goto_0
    return v1

    .line 1608
    :catch_0
    move-exception v0

    .line 1609
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setAllowUserProfiles"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1612
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDHCPEnabled(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 1264
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1266
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setDHCPEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1271
    :goto_0
    return v1

    .line 1267
    :catch_0
    move-exception v0

    .line 1268
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "- Failed talking with setDHCPEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1271
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDefaultGateway(Ljava/lang/String;)Z
    .locals 3
    .parameter "ipAddr"

    .prologue
    .line 1356
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1358
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setDefaultGateway(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1363
    :goto_0
    return v1

    .line 1359
    :catch_0
    move-exception v0

    .line 1360
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setDefaultGateway"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1363
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDefaultIp(Ljava/lang/String;)Z
    .locals 3
    .parameter "ipAddr"

    .prologue
    .line 1308
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1310
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setDefaultIp(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1315
    :goto_0
    return v1

    .line 1311
    :catch_0
    move-exception v0

    .line 1312
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setDefaultIp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1315
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDefaultPrimaryDNS(Ljava/lang/String;)Z
    .locals 3
    .parameter "ipAddr"

    .prologue
    .line 1404
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1406
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setDefaultPrimaryDNS(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1411
    :goto_0
    return v1

    .line 1407
    :catch_0
    move-exception v0

    .line 1408
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setDefaultPrimaryDNS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1411
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDefaultSecondaryDNS(Ljava/lang/String;)Z
    .locals 3
    .parameter "ipAddr"

    .prologue
    .line 1453
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1455
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setDefaultSecondaryDNS(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1460
    :goto_0
    return v1

    .line 1456
    :catch_0
    move-exception v0

    .line 1457
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setDefaultSecondaryDNS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1460
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDefaultSubnetMask(Ljava/lang/String;)Z
    .locals 3
    .parameter "ipAddr"

    .prologue
    .line 1501
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1503
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setDefaultSubnetMask(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1508
    :goto_0
    return v1

    .line 1504
    :catch_0
    move-exception v0

    .line 1505
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setDefaultSubnetMask"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1508
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMinimumRequiredSecurity(I)Z
    .locals 3
    .parameter "secType"

    .prologue
    .line 1748
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1750
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setMinimumRequiredSecurity(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1755
    :goto_0
    return v1

    .line 1751
    :catch_0
    move-exception v0

    .line 1752
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setMinimumRequiredSecurity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1755
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkAnonymousIdValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 512
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkAnonymousIdValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 519
    :goto_0
    return v1

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkAnonymousIdValue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 596
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 597
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 602
    :goto_0
    return v1

    .line 599
    :catch_0
    move-exception v0

    .line 600
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 602
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkClientCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 567
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkClientCertification(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 575
    :goto_0
    return v1

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkClientCertification"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkDHCPEnabled(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "ssid"
    .parameter "enable"

    .prologue
    .line 824
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 826
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkDHCPEnabled(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 831
    :goto_0
    return v1

    .line 827
    :catch_0
    move-exception v0

    .line 828
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "- Failed talking with setNetworkDHCPEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 831
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkGateway(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "ipAddr"

    .prologue
    .line 923
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 925
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkGateway(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 930
    :goto_0
    return v1

    .line 926
    :catch_0
    move-exception v0

    .line 927
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setNetworkGateway"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 930
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkIdentityValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 483
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 484
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkIdentityValue(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 489
    :goto_0
    return v1

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkIdentityValue"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 489
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkIp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "ipAddr"

    .prologue
    .line 871
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 873
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkIp(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 878
    :goto_0
    return v1

    .line 874
    :catch_0
    move-exception v0

    .line 875
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setNetworkIp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 878
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkLinkSecurity(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 155
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkLinkSecurity(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 161
    :goto_0
    return v1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkLinkSecurity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkPSK(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "psk"

    .prologue
    .line 427
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkPSK(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 433
    :goto_0
    return v1

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkPSK"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 455
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkPassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 461
    :goto_0
    return v1

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkPassword"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 461
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkPhase2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 540
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 541
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkPhase2(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 546
    :goto_0
    return v1

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkPhase2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 546
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkPrimaryDNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "ipAddr"

    .prologue
    .line 975
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 977
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkPrimaryDNS(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 982
    :goto_0
    return v1

    .line 978
    :catch_0
    move-exception v0

    .line 979
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setNetworkPrimaryDNS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 982
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkPrivateKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 623
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 624
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkPrivateKey(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 629
    :goto_0
    return v1

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkPrivateKey"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 629
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkSSID(Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setNetworkSSID(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 86
    :goto_0
    return v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkSSID"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkSecondaryDNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "ipAddr"

    .prologue
    .line 1027
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1029
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkSecondaryDNS(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1034
    :goto_0
    return v1

    .line 1030
    :catch_0
    move-exception v0

    .line 1031
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setNetworkSecondaryDNS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1034
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkSubnetMask(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "ipAddr"

    .prologue
    .line 1079
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1081
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkSubnetMask(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1086
    :goto_0
    return v1

    .line 1082
    :catch_0
    move-exception v0

    .line 1083
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setNetworkSubnetMask"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1086
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkWEPKey1(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 233
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkWEPKey1(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 239
    :goto_0
    return v1

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkWEPKey1"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkWEPKey2(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 259
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 260
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkWEPKey2(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 265
    :goto_0
    return v1

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkWEPKey2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkWEPKey3(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 285
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkWEPKey3(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 291
    :goto_0
    return v1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkWEPKey3"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 291
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkWEPKey4(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "value"

    .prologue
    .line 311
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkWEPKey4(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 317
    :goto_0
    return v1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkWEPKey4"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkWEPKeyId(Ljava/lang/String;I)Z
    .locals 3
    .parameter "ssid"
    .parameter "keyId"

    .prologue
    .line 207
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IWifiPolicy;->setNetworkWEPKeyId(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 213
    :goto_0
    return v1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setNetworkWEPKeyId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPasswordHidden(Z)Z
    .locals 3
    .parameter "passHidden"

    .prologue
    .line 1872
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1874
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setPasswordHidden(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1879
    :goto_0
    return v1

    .line 1875
    :catch_0
    move-exception v0

    .line 1876
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setPasswordHidden"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1879
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPromptCredentialsEnabled(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 1695
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1697
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setPromptCredentialsEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1702
    :goto_0
    return v1

    .line 1698
    :catch_0
    move-exception v0

    .line 1699
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setPromptCredentialsEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1702
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTlsCertificateSecurityLevel(I)Z
    .locals 3
    .parameter "level"

    .prologue
    .line 1803
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1805
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setTlsCertificateSecurityLevel(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1814
    :goto_0
    return v1

    .line 1806
    :catch_0
    move-exception v0

    .line 1807
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setTlsCertificateSecurityLevel"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1814
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifi(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 1544
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1546
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setWifi(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1551
    :goto_0
    return v1

    .line 1547
    :catch_0
    move-exception v0

    .line 1548
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setWifiEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1551
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiAllowed(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 1561
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1563
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setWifiAllowed(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1568
    :goto_0
    return v1

    .line 1564
    :catch_0
    move-exception v0

    .line 1565
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with setWifiEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1568
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiProfile(Landroid/app/enterprise/WifiAdminProfile;)Z
    .locals 3
    .parameter "profile"

    .prologue
    .line 1126
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    if-eqz v1, :cond_0

    .line 1127
    iget-object v1, p0, Landroid/app/enterprise/WifiPolicy;->mService:Landroid/app/enterprise/IWifiPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IWifiPolicy;->setWifiProfile(Landroid/app/enterprise/WifiAdminProfile;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1132
    :goto_0
    return v1

    .line 1129
    :catch_0
    move-exception v0

    .line 1130
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at WiFi policy API setWifiProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1132
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
