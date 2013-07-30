.class public Lcom/android/sec_settings/vpn2/VpnSettings;
.super Lcom/android/sec_settings/SettingsPreferenceFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;
    }
.end annotation


# instance fields
.field filter:Landroid/content/IntentFilter;

.field private mBroadCastReceiver:Landroid/content/BroadcastReceiver;

.field private mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

.field private mInfo:Lcom/android/internal/net/LegacyVpnInfo;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mPreferences:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedKey:Ljava/lang/String;

.field private final mService:Landroid/net/IConnectivityManager;

.field private mUnlocking:Z

.field private mUpdater:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;-><init>()V

    .line 67
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    .line 69
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mUnlocking:Z

    .line 82
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->filter:Landroid/content/IntentFilter;

    .line 566
    new-instance v0, Lcom/android/sec_settings/vpn2/VpnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/sec_settings/vpn2/VpnSettings$1;-><init>(Lcom/android/sec_settings/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/sec_settings/vpn2/VpnSettings;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/sec_settings/vpn2/VpnSettings;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    return-object p1
.end method

.method private connect(Lcom/android/sec_settings/vpn2/VpnProfile;)V
    .locals 14
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->getDefaultNetwork()[Ljava/lang/String;

    move-result-object v5

    .line 378
    .local v5, network:[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v3, v5, v11

    .line 379
    .local v3, interfaze:Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v2, v5, v11

    .line 382
    .local v2, gateway:Ljava/lang/String;
    const-string v6, ""

    .line 383
    .local v6, privateKey:Ljava/lang/String;
    const-string v9, ""

    .line 384
    .local v9, userCert:Ljava/lang/String;
    const-string v0, ""

    .line 385
    .local v0, caCert:Ljava/lang/String;
    const-string v8, ""

    .line 386
    .local v8, serverCert:Ljava/lang/String;
    iget-object v11, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 391
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "USRPKEY_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 392
    iget-object v11, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "USRCERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    .line 393
    .local v10, value:[B
    if-nez v10, :cond_4

    const/4 v9, 0x0

    .line 395
    .end local v10           #value:[B
    :cond_0
    :goto_0
    iget-object v11, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 396
    iget-object v11, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CACERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    .line 397
    .restart local v10       #value:[B
    if-nez v10, :cond_5

    const/4 v0, 0x0

    .line 399
    .end local v10           #value:[B
    :cond_1
    :goto_1
    iget-object v11, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2

    .line 400
    iget-object v11, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "USRCERT_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v10

    .line 401
    .restart local v10       #value:[B
    if-nez v10, :cond_6

    const/4 v8, 0x0

    .line 403
    .end local v10           #value:[B
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    if-eqz v9, :cond_3

    if-eqz v0, :cond_3

    if-nez v8, :cond_7

    .line 404
    :cond_3
    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f090862

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 405
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Cannot load credentials"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 393
    .restart local v10       #value:[B
    :cond_4
    new-instance v9, Ljava/lang/String;

    .end local v9           #userCert:Ljava/lang/String;
    sget-object v11, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    .line 397
    .restart local v9       #userCert:Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/String;

    .end local v0           #caCert:Ljava/lang/String;
    sget-object v11, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_1

    .line 401
    .restart local v0       #caCert:Ljava/lang/String;
    :cond_6
    new-instance v8, Ljava/lang/String;

    .end local v8           #serverCert:Ljava/lang/String;
    sget-object v11, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_2

    .line 409
    .end local v10           #value:[B
    .restart local v8       #serverCert:Ljava/lang/String;
    :cond_7
    const/4 v7, 0x0

    .line 410
    .local v7, racoon:[Ljava/lang/String;
    iget v11, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->type:I

    packed-switch v11, :pswitch_data_0

    .line 444
    :goto_3
    const/4 v4, 0x0

    .line 445
    .local v4, mtpd:[Ljava/lang/String;
    iget v11, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->type:I

    packed-switch v11, :pswitch_data_1

    .line 466
    :goto_4
    new-instance v1, Lcom/android/internal/net/VpnConfig;

    invoke-direct {v1}, Lcom/android/internal/net/VpnConfig;-><init>()V

    .line 467
    .local v1, config:Lcom/android/internal/net/VpnConfig;
    iget-object v11, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 468
    iput-object v3, v1, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 469
    iget-object v11, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->session:Ljava/lang/String;

    .line 470
    iget-object v11, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->routes:Ljava/lang/String;

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->routes:Ljava/lang/String;

    .line 471
    iget-object v11, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    .line 472
    iget-object v11, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->dnsServers:Ljava/lang/String;

    const-string v12, " +"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 474
    :cond_8
    iget-object v11, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    .line 475
    iget-object v11, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->searchDomains:Ljava/lang/String;

    const-string v12, " +"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    iput-object v11, v1, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    .line 478
    :cond_9
    iget-object v11, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v11, v1, v7, v4}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 479
    return-void

    .line 412
    .end local v1           #config:Lcom/android/internal/net/VpnConfig;
    .end local v4           #mtpd:[Ljava/lang/String;
    :pswitch_0
    const/4 v11, 0x6

    new-array v7, v11, [Ljava/lang/String;

    .end local v7           #racoon:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "udppsk"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    iget-object v12, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x4

    iget-object v12, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x5

    const-string v12, "1701"

    aput-object v12, v7, v11

    .line 416
    .restart local v7       #racoon:[Ljava/lang/String;
    goto :goto_3

    .line 418
    :pswitch_1
    const/16 v11, 0x8

    new-array v7, v11, [Ljava/lang/String;

    .end local v7           #racoon:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "udprsa"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    aput-object v6, v7, v11

    const/4 v11, 0x4

    aput-object v9, v7, v11

    const/4 v11, 0x5

    aput-object v0, v7, v11

    const/4 v11, 0x6

    aput-object v8, v7, v11

    const/4 v11, 0x7

    const-string v12, "1701"

    aput-object v12, v7, v11

    .line 422
    .restart local v7       #racoon:[Ljava/lang/String;
    goto/16 :goto_3

    .line 424
    :pswitch_2
    const/16 v11, 0x9

    new-array v7, v11, [Ljava/lang/String;

    .end local v7           #racoon:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "xauthpsk"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    iget-object v12, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x4

    iget-object v12, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->ipsecSecret:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x5

    iget-object v12, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x6

    iget-object v12, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x7

    const-string v12, ""

    aput-object v12, v7, v11

    const/16 v11, 0x8

    aput-object v2, v7, v11

    .line 428
    .restart local v7       #racoon:[Ljava/lang/String;
    goto/16 :goto_3

    .line 430
    :pswitch_3
    const/16 v11, 0xb

    new-array v7, v11, [Ljava/lang/String;

    .end local v7           #racoon:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "xauthrsa"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    aput-object v6, v7, v11

    const/4 v11, 0x4

    aput-object v9, v7, v11

    const/4 v11, 0x5

    aput-object v0, v7, v11

    const/4 v11, 0x6

    aput-object v8, v7, v11

    const/4 v11, 0x7

    iget-object v12, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v7, v11

    const/16 v11, 0x8

    iget-object v12, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v7, v11

    const/16 v11, 0x9

    const-string v12, ""

    aput-object v12, v7, v11

    const/16 v11, 0xa

    aput-object v2, v7, v11

    .line 434
    .restart local v7       #racoon:[Ljava/lang/String;
    goto/16 :goto_3

    .line 436
    :pswitch_4
    const/16 v11, 0x9

    new-array v7, v11, [Ljava/lang/String;

    .end local v7           #racoon:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v7, v11

    const/4 v11, 0x1

    iget-object v12, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "hybridrsa"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    aput-object v0, v7, v11

    const/4 v11, 0x4

    aput-object v8, v7, v11

    const/4 v11, 0x5

    iget-object v12, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x6

    iget-object v12, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v7, v11

    const/4 v11, 0x7

    const-string v12, ""

    aput-object v12, v7, v11

    const/16 v11, 0x8

    aput-object v2, v7, v11

    .restart local v7       #racoon:[Ljava/lang/String;
    goto/16 :goto_3

    .line 447
    .restart local v4       #mtpd:[Ljava/lang/String;
    :pswitch_5
    const/16 v11, 0x14

    new-array v4, v11, [Ljava/lang/String;

    .end local v4           #mtpd:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v4, v11

    const/4 v11, 0x1

    const-string v12, "pptp"

    aput-object v12, v4, v11

    const/4 v11, 0x2

    iget-object v12, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v4, v11

    const/4 v11, 0x3

    const-string v12, "1723"

    aput-object v12, v4, v11

    const/4 v11, 0x4

    const-string v12, "name"

    aput-object v12, v4, v11

    const/4 v11, 0x5

    iget-object v12, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v4, v11

    const/4 v11, 0x6

    const-string v12, "password"

    aput-object v12, v4, v11

    const/4 v11, 0x7

    iget-object v12, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v4, v11

    const/16 v11, 0x8

    const-string v12, "linkname"

    aput-object v12, v4, v11

    const/16 v11, 0x9

    const-string v12, "vpn"

    aput-object v12, v4, v11

    const/16 v11, 0xa

    const-string v12, "refuse-eap"

    aput-object v12, v4, v11

    const/16 v11, 0xb

    const-string v12, "nodefaultroute"

    aput-object v12, v4, v11

    const/16 v11, 0xc

    const-string v12, "usepeerdns"

    aput-object v12, v4, v11

    const/16 v11, 0xd

    const-string v12, "idle"

    aput-object v12, v4, v11

    const/16 v11, 0xe

    const-string v12, "1800"

    aput-object v12, v4, v11

    const/16 v11, 0xf

    const-string v12, "mtu"

    aput-object v12, v4, v11

    const/16 v11, 0x10

    const-string v12, "1400"

    aput-object v12, v4, v11

    const/16 v11, 0x11

    const-string v12, "mru"

    aput-object v12, v4, v11

    const/16 v11, 0x12

    const-string v12, "1400"

    aput-object v12, v4, v11

    const/16 v12, 0x13

    iget-boolean v11, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->mppe:Z

    if-eqz v11, :cond_a

    const-string v11, "+mppe"

    :goto_5
    aput-object v11, v4, v12

    .line 454
    .restart local v4       #mtpd:[Ljava/lang/String;
    goto/16 :goto_4

    .line 447
    .end local v4           #mtpd:[Ljava/lang/String;
    :cond_a
    const-string v11, "nomppe"

    goto :goto_5

    .line 457
    .restart local v4       #mtpd:[Ljava/lang/String;
    :pswitch_6
    const/16 v11, 0x14

    new-array v4, v11, [Ljava/lang/String;

    .end local v4           #mtpd:[Ljava/lang/String;
    const/4 v11, 0x0

    aput-object v3, v4, v11

    const/4 v11, 0x1

    const-string v12, "l2tp"

    aput-object v12, v4, v11

    const/4 v11, 0x2

    iget-object v12, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->server:Ljava/lang/String;

    aput-object v12, v4, v11

    const/4 v11, 0x3

    const-string v12, "1701"

    aput-object v12, v4, v11

    const/4 v11, 0x4

    iget-object v12, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->l2tpSecret:Ljava/lang/String;

    aput-object v12, v4, v11

    const/4 v11, 0x5

    const-string v12, "name"

    aput-object v12, v4, v11

    const/4 v11, 0x6

    iget-object v12, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->username:Ljava/lang/String;

    aput-object v12, v4, v11

    const/4 v11, 0x7

    const-string v12, "password"

    aput-object v12, v4, v11

    const/16 v11, 0x8

    iget-object v12, p1, Lcom/android/sec_settings/vpn2/VpnProfile;->password:Ljava/lang/String;

    aput-object v12, v4, v11

    const/16 v11, 0x9

    const-string v12, "linkname"

    aput-object v12, v4, v11

    const/16 v11, 0xa

    const-string v12, "vpn"

    aput-object v12, v4, v11

    const/16 v11, 0xb

    const-string v12, "refuse-eap"

    aput-object v12, v4, v11

    const/16 v11, 0xc

    const-string v12, "nodefaultroute"

    aput-object v12, v4, v11

    const/16 v11, 0xd

    const-string v12, "usepeerdns"

    aput-object v12, v4, v11

    const/16 v11, 0xe

    const-string v12, "idle"

    aput-object v12, v4, v11

    const/16 v11, 0xf

    const-string v12, "1800"

    aput-object v12, v4, v11

    const/16 v11, 0x10

    const-string v12, "mtu"

    aput-object v12, v4, v11

    const/16 v11, 0x11

    const-string v12, "1400"

    aput-object v12, v4, v11

    const/16 v11, 0x12

    const-string v12, "mru"

    aput-object v12, v4, v11

    const/16 v11, 0x13

    const-string v12, "1400"

    aput-object v12, v4, v11

    .restart local v4       #mtpd:[Ljava/lang/String;
    goto/16 :goto_4

    .line 410
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 445
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private disconnect(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    const-string v1, "[Legacy VPN]"

    const-string v2, "[Legacy VPN]"

    invoke-interface {v0, v1, v2}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 485
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getDefaultNetwork()[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const v6, 0x7f090861

    const/4 v7, 0x1

    .line 350
    iget-object v5, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v5}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    .line 351
    .local v3, network:Landroid/net/LinkProperties;
    if-nez v3, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 353
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Network is not available"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 355
    :cond_0
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, interfaze:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 357
    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 358
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot get the default interface"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 360
    :cond_1
    const/4 v0, 0x0

    .line 361
    .local v0, gateway:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/RouteInfo;

    .line 363
    .local v4, route:Landroid/net/RouteInfo;
    invoke-virtual {v4}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-eqz v5, :cond_2

    .line 364
    invoke-virtual {v4}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 368
    .end local v4           #route:Landroid/net/RouteInfo;
    :cond_3
    if-nez v0, :cond_4

    .line 369
    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 370
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Cannot get the default gateway"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 372
    :cond_4
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object v0, v5, v7

    return-object v5
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 493
    const v0, 0x7f0908fa

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    .line 322
    iget-object v2, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 324
    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 326
    :try_start_0
    iget-object v2, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    .line 327
    .local v0, info:Lcom/android/internal/net/LegacyVpnInfo;
    iget-object v2, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v2, :cond_1

    .line 328
    iget-object v2, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;

    .line 329
    .local v1, preference:Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_0

    .line 330
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;->update(I)V

    .line 332
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    .line 334
    .end local v1           #preference:Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;
    :cond_1
    if-eqz v0, :cond_2

    .line 335
    iget-object v2, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;

    .line 336
    .restart local v1       #preference:Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_2

    .line 337
    iget v2, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    invoke-virtual {v1, v2}, Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;->update(I)V

    .line 338
    iput-object v0, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v0           #info:Lcom/android/internal/net/LegacyVpnInfo;
    .end local v1           #preference:Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 346
    :cond_3
    const/4 v2, 0x1

    return v2

    .line 341
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 211
    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    .line 213
    iget-object v3, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/sec_settings/vpn2/VpnDialog;->getProfile()Lcom/android/sec_settings/vpn2/VpnProfile;

    move-result-object v2

    .line 214
    .local v2, profile:Lcom/android/sec_settings/vpn2/VpnProfile;
    iget-object v3, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VPN_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/sec_settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/sec_settings/vpn2/VpnProfile;->encode()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/security/KeyStore;->put(Ljava/lang/String;[B)Z

    .line 217
    iget-object v3, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/sec_settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;

    .line 218
    .local v1, preference:Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;
    if-eqz v1, :cond_1

    .line 219
    iget-object v3, v2, Lcom/android/sec_settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/sec_settings/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v1, v2}, Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;->update(Lcom/android/sec_settings/vpn2/VpnProfile;)V

    .line 228
    :goto_0
    iget-object v3, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/sec_settings/vpn2/VpnDialog;->isEditing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 230
    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/sec_settings/vpn2/VpnSettings;->connect(Lcom/android/sec_settings/vpn2/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v1           #preference:Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;
    .end local v2           #profile:Lcom/android/sec_settings/vpn2/VpnProfile;
    :cond_0
    :goto_1
    return-void

    .line 222
    .restart local v1       #preference:Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;
    .restart local v2       #profile:Lcom/android/sec_settings/vpn2/VpnProfile;
    :cond_1
    new-instance v1, Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;

    .end local v1           #preference:Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;
    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, p0, v3, v2}, Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;-><init>(Lcom/android/sec_settings/vpn2/VpnSettings;Landroid/content/Context;Lcom/android/sec_settings/vpn2/VpnProfile;)V

    .line 223
    .restart local v1       #preference:Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;
    iget-object v3, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/android/sec_settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "VpnSettings"

    const-string v4, "connect"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 260
    iget-object v3, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    if-eqz v3, :cond_0

    .line 261
    const-string v2, "VpnSettings"

    const-string v3, "onContextItemSelected() is called when mDialog != null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :goto_0
    return v1

    .line 265
    :cond_0
    iget-object v3, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;

    .line 266
    .local v0, preference:Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;
    if-nez v0, :cond_1

    .line 267
    const-string v2, "VpnSettings"

    const-string v3, "onContextItemSelected() is called but no preference is found"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 273
    :pswitch_0
    new-instance v1, Lcom/android/sec_settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/sec_settings/vpn2/VpnProfile;

    move-result-object v4

    invoke-direct {v1, v3, p0, v4, v2}, Lcom/android/sec_settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/sec_settings/vpn2/VpnProfile;Z)V

    iput-object v1, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    .line 274
    iget-object v1, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    invoke-virtual {v1, p0}, Lcom/android/sec_settings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 275
    iget-object v1, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/sec_settings/vpn2/VpnDialog;->show()V

    move v1, v2

    .line 276
    goto :goto_0

    .line 278
    :pswitch_1
    iget-object v1, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/sec_settings/vpn2/VpnSettings;->disconnect(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 280
    iget-object v1, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v1, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VPN_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    move v1, v2

    .line 282
    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x7f09085f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedState"

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v1, 0x7f070075

    invoke-virtual {p0, v1}, Lcom/android/sec_settings/vpn2/VpnSettings;->addPreferencesFromResource(I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 92
    iget-object v1, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->filter:Landroid/content/IntentFilter;

    const-string v2, "com.android.server.enterprise.VPN_NEW_PROFILE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    if-eqz p1, :cond_0

    .line 96
    const-string v1, "VpnKey"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VpnProfile"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/sec_settings/vpn2/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/sec_settings/vpn2/VpnProfile;

    move-result-object v0

    .line 98
    .local v0, profile:Lcom/android/sec_settings/vpn2/VpnProfile;
    if-eqz v0, :cond_0

    .line 99
    new-instance v1, Lcom/android/sec_settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "VpnEditing"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/sec_settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/sec_settings/vpn2/VpnProfile;Z)V

    iput-object v1, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    .line 103
    .end local v0           #profile:Lcom/android/sec_settings/vpn2/VpnProfile;
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    const v6, 0x7f090860

    const v5, 0x7f09085f

    const/4 v4, 0x0

    .line 240
    iget-object v2, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    if-eqz v2, :cond_1

    .line 241
    const-string v2, "VpnSettings"

    const-string v3, "onCreateContextMenu() is called when mDialog != null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 245
    .restart local p3
    :cond_1
    instance-of v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v2, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v3, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 248
    .local v0, preference:Landroid/preference/Preference;
    instance-of v2, v0, Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;

    if-eqz v2, :cond_0

    .line 249
    check-cast v0, Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;

    .end local v0           #preference:Landroid/preference/Preference;
    invoke-virtual {v0}, Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/sec_settings/vpn2/VpnProfile;

    move-result-object v1

    .line 250
    .local v1, profile:Lcom/android/sec_settings/vpn2/VpnProfile;
    iget-object v2, v1, Lcom/android/sec_settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mSelectedKey:Ljava/lang/String;

    .line 251
    iget-object v2, v1, Lcom/android/sec_settings/vpn2/VpnProfile;->name:Ljava/lang/String;

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 252
    invoke-interface {p1, v4, v5, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 253
    invoke-interface {p1, v4, v6, v4, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 557
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onDestroy()V

    .line 559
    iget-object v0, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 561
    iget-object v0, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    invoke-virtual {v0}, Lcom/android/sec_settings/vpn2/VpnDialog;->dismiss()V

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mBroadCastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 564
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    .line 207
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onPause()V

    .line 192
    iget-object v0, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 194
    iget-object v0, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    invoke-virtual {v0}, Lcom/android/sec_settings/vpn2/VpnDialog;->dismiss()V

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/sec_settings/vpn2/VpnSettings;->unregisterForContextMenu(Landroid/view/View;)V

    .line 201
    :cond_1
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preference"

    .prologue
    const/4 v7, 0x1

    .line 289
    iget-object v3, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    if-eqz v3, :cond_0

    .line 290
    const-string v3, "VpnSettings"

    const-string v4, "onPreferenceClick() is called when mDialog != null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    .end local p1
    :goto_0
    return v7

    .line 294
    .restart local p1
    :cond_0
    instance-of v3, p1, Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;

    if-eqz v3, :cond_2

    .line 295
    check-cast p1, Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;

    .end local p1
    invoke-virtual {p1}, Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;->getProfile()Lcom/android/sec_settings/vpn2/VpnProfile;

    move-result-object v2

    .line 296
    .local v2, profile:Lcom/android/sec_settings/vpn2/VpnProfile;
    iget-object v3, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/sec_settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v4, v4, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 299
    :try_start_0
    iget-object v3, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mInfo:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v3, v3, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    :catch_0
    move-exception v3

    .line 305
    :cond_1
    new-instance v3, Lcom/android/sec_settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v2, v5}, Lcom/android/sec_settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/sec_settings/vpn2/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    .line 315
    .end local v2           #profile:Lcom/android/sec_settings/vpn2/VpnProfile;
    :goto_1
    iget-object v3, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    invoke-virtual {v3, p0}, Lcom/android/sec_settings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 316
    iget-object v3, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    invoke-virtual {v3}, Lcom/android/sec_settings/vpn2/VpnDialog;->show()V

    goto :goto_0

    .line 308
    .restart local p1
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 309
    .local v0, millis:J
    :goto_2
    iget-object v3, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 310
    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_2

    .line 312
    :cond_3
    new-instance v3, Lcom/android/sec_settings/vpn2/VpnDialog;

    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-instance v5, Lcom/android/sec_settings/vpn2/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/sec_settings/vpn2/VpnProfile;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, p0, v5, v7}, Lcom/android/sec_settings/vpn2/VpnDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/sec_settings/vpn2/VpnProfile;Z)V

    iput-object v3, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    goto :goto_1
.end method

.method public onResume()V
    .locals 14

    .prologue
    const/4 v10, 0x0

    .line 119
    invoke-super {p0}, Lcom/android/sec_settings/SettingsPreferenceFragment;->onResume()V

    .line 122
    iget-object v11, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v11}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v11

    sget-object v12, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v11, v12, :cond_3

    .line 123
    iget-boolean v11, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v11, :cond_2

    .line 125
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v11

    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 130
    :goto_0
    iget-boolean v11, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mUnlocking:Z

    if-nez v11, :cond_0

    const/4 v10, 0x1

    :cond_0
    iput-boolean v10, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mUnlocking:Z

    .line 185
    :cond_1
    :goto_1
    return-void

    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->finishFragment()V

    goto :goto_0

    .line 135
    :cond_3
    iput-boolean v10, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mUnlocking:Z

    .line 140
    iget-object v11, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    if-nez v11, :cond_6

    .line 141
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    .line 142
    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 144
    .local v3, group:Landroid/preference/PreferenceGroup;
    iget-object v11, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    const-string v12, "VPN_"

    invoke-virtual {v11, v12}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, keys:[Ljava/lang/String;
    if-eqz v6, :cond_5

    array-length v11, v6

    if-lez v11, :cond_5

    .line 146
    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 148
    .local v1, context:Landroid/content/Context;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v7, :cond_5

    aget-object v5, v0, v4

    .line 149
    .local v5, key:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "VPN_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v11

    invoke-static {v5, v11}, Lcom/android/sec_settings/vpn2/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/sec_settings/vpn2/VpnProfile;

    move-result-object v9

    .line 151
    .local v9, profile:Lcom/android/sec_settings/vpn2/VpnProfile;
    if-nez v9, :cond_4

    .line 152
    const-string v11, "VpnSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bad profile: key = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v11, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "VPN_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/security/KeyStore;->delete(Ljava/lang/String;)Z

    .line 148
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 155
    :cond_4
    new-instance v8, Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;

    invoke-direct {v8, p0, v1, v9}, Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;-><init>(Lcom/android/sec_settings/vpn2/VpnSettings;Landroid/content/Context;Lcom/android/sec_settings/vpn2/VpnProfile;)V

    .line 156
    .local v8, preference:Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;
    iget-object v11, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mPreferences:Ljava/util/HashMap;

    invoke-virtual {v11, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    invoke-virtual {v3, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 161
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #context:Landroid/content/Context;
    .end local v4           #i$:I
    .end local v5           #key:Ljava/lang/String;
    .end local v7           #len$:I
    .end local v8           #preference:Lcom/android/sec_settings/vpn2/VpnSettings$VpnPreference;
    .end local v9           #profile:Lcom/android/sec_settings/vpn2/VpnProfile;
    :cond_5
    const-string v11, "add_network"

    invoke-virtual {v3, v11}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    invoke-virtual {v11, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 165
    .end local v3           #group:Landroid/preference/PreferenceGroup;
    .end local v6           #keys:[Ljava/lang/String;
    :cond_6
    iget-object v11, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    if-eqz v11, :cond_7

    .line 166
    iget-object v11, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    invoke-virtual {v11, p0}, Lcom/android/sec_settings/vpn2/VpnDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 167
    iget-object v11, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    invoke-virtual {v11}, Lcom/android/sec_settings/vpn2/VpnDialog;->show()V

    .line 171
    :cond_7
    iget-object v11, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-nez v11, :cond_8

    .line 172
    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v11, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    .line 174
    :cond_8
    iget-object v11, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {v11, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 177
    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->getListView()Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/sec_settings/vpn2/VpnSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "enterprise_policy"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 181
    .local v2, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/RestrictionPolicy;->isVpnAllowed()Z

    move-result v10

    if-nez v10, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/android/sec_settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    invoke-virtual {v1}, Lcom/android/sec_settings/vpn2/VpnDialog;->getProfile()Lcom/android/sec_settings/vpn2/VpnProfile;

    move-result-object v0

    .line 110
    .local v0, profile:Lcom/android/sec_settings/vpn2/VpnProfile;
    const-string v1, "VpnKey"

    iget-object v2, v0, Lcom/android/sec_settings/vpn2/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v1, "VpnProfile"

    invoke-virtual {v0}, Lcom/android/sec_settings/vpn2/VpnProfile;->encode()[B

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 112
    const-string v1, "VpnEditing"

    iget-object v2, p0, Lcom/android/sec_settings/vpn2/VpnSettings;->mDialog:Lcom/android/sec_settings/vpn2/VpnDialog;

    invoke-virtual {v2}, Lcom/android/sec_settings/vpn2/VpnDialog;->isEditing()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 115
    .end local v0           #profile:Lcom/android/sec_settings/vpn2/VpnProfile;
    :cond_0
    return-void
.end method
