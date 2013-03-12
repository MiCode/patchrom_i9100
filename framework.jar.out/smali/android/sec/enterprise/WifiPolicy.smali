.class public Landroid/sec/enterprise/WifiPolicy;
.super Ljava/lang/Object;
.source "WifiPolicy.java"


# static fields
.field public static final ACTION_DISABLE_NETWORK:Ljava/lang/String; = "edm.intent.action.disable"

.field public static final ACTION_ENABLE_NETWORK:Ljava/lang/String; = "edm.intent.action.enable"

.field public static final ACTION_LOCK_KEYSTORE:Ljava/lang/String; = "edm.intent.action.lock"

.field public static final SECURITY_LEVEL_EAP_FAST:I = 0x4

.field public static final SECURITY_LEVEL_EAP_LEAP:I = 0x3

.field public static final SECURITY_LEVEL_EAP_PEAP:I = 0x5

.field public static final SECURITY_LEVEL_EAP_TLS:I = 0x7

.field public static final SECURITY_LEVEL_EAP_TTLS:I = 0x6

.field public static final SECURITY_LEVEL_OPEN:I = 0x0

.field public static final SECURITY_LEVEL_WEP:I = 0x1

.field public static final SECURITY_LEVEL_WPA:I = 0x2

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "WifiPolicy"

    sput-object v0, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, sec:I
    if-eqz p0, :cond_0

    .line 222
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    const/4 v0, 0x2

    .line 247
    :cond_0
    :goto_0
    return v0

    .line 224
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 226
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PEAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 228
    const/4 v0, 0x5

    goto :goto_0

    .line 229
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TTLS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 230
    const/4 v0, 0x6

    goto :goto_0

    .line 231
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TLS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 232
    const/4 v0, 0x7

    goto :goto_0

    .line 233
    :cond_5
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LEAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 234
    const/4 v0, 0x3

    goto :goto_0

    .line 235
    :cond_6
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FAST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 236
    const/4 v0, 0x4

    goto :goto_0

    .line 238
    :cond_7
    const/4 v0, 0x7

    goto :goto_0

    .line 242
    :cond_8
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-nez v3, :cond_9

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v3, :cond_9

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v4

    if-nez v3, :cond_9

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v3, v3, v5

    if-eqz v3, :cond_a

    :cond_9
    move v0, v2

    :goto_1
    goto/16 :goto_0

    :cond_a
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 3
    .parameter "config"
    .parameter "netSSID"

    .prologue
    .line 189
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-edmAddOrUpdate returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAllowUserPolicyChanges()Z
    .locals 3

    .prologue
    .line 105
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getAllowUserPolicyChanges()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 109
    :goto_0
    return v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-getAllowUserPolicyChanges returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAllowUserProfiles(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 121
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->getAllowUserProfiles(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 125
    :goto_0
    return v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-getAllowUserProfiles returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v1, 0x1

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
    .line 90
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getBlockedNetworks()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 94
    :goto_0
    return-object v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-getBlockedNetworks returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMinimumRequiredSecurity()I
    .locals 3

    .prologue
    .line 175
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getMinimumRequiredSecurity()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 179
    :goto_0
    return v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-getMinimumRequiredSecurity returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
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
    .line 76
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getNetworkSSIDList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 80
    :goto_0
    return-object v1

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-getNetworkSSID returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPromptCredentialsEnabled()Z
    .locals 3

    .prologue
    .line 151
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getPromptCredentialsEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 155
    :goto_0
    return v1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-getPromptCredentialsEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isWifiAllowed(Z)Z
    .locals 3
    .parameter "showMsg"

    .prologue
    .line 136
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isWifiAllowed(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 140
    :goto_0
    return v1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isWifiAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isWifiStateChangeAllowed()Z
    .locals 3

    .prologue
    .line 257
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isWifiStateChangeAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 261
    :goto_0
    return v1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isWifiStateChangeAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public removeNetworkConfiguration(Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"

    .prologue
    .line 211
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->removeNetworkConfiguration(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 215
    :goto_0
    return v1

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/WifiPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-removeNetworkConfiguration returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 v1, 0x0

    goto :goto_0
.end method
