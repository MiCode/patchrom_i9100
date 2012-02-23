.class public Landroid/app/enterprise/VpnPolicy;
.super Ljava/lang/Object;
.source "VpnPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field public static final VPN_NEW_PROFILE:Ljava/lang/String; = "com.android.server.enterprise.VPN_NEW_PROFILE"


# instance fields
.field private final lService:Landroid/app/enterprise/IVpnInfoPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "VpnPolicy"

    sput-object v0, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string/jumbo v0, "vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IVpnInfoPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IVpnInfoPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    .line 21
    sget-object v0, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vpn policy API -"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    return-void
.end method


# virtual methods
.method public createProfile(Landroid/app/enterprise/VpnAdminProfile;)Z
    .locals 7
    .parameter "profile"

    .prologue
    const/4 v2, 0x0

    .line 43
    :try_start_0
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v3, :cond_3

    .line 46
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/app/enterprise/IVpnInfoPolicy;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 81
    :cond_0
    :goto_0
    return v1

    .line 50
    :cond_1
    const/4 v1, 0x1

    .line 51
    .local v1, success:Z
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/enterprise/VpnAdminProfile;->serverName:Ljava/lang/String;

    iget-object v6, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Landroid/app/enterprise/IVpnInfoPolicy;->createProfile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 52
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/enterprise/VpnAdminProfile;->userName:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/app/enterprise/IVpnInfoPolicy;->setUserName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 53
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/enterprise/VpnAdminProfile;->userPassword:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/app/enterprise/IVpnInfoPolicy;->setUserPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 55
    iget-object v3, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v4, "PPTP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 56
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-boolean v5, p1, Landroid/app/enterprise/VpnAdminProfile;->PPTPEncryptionEnable:Z

    invoke-interface {v3, v4, v5}, Landroid/app/enterprise/IVpnInfoPolicy;->setEncryptionEnabledForPPTP(Ljava/lang/String;Z)Z

    move-result v3

    and-int/2addr v1, v3

    .line 74
    :cond_2
    :goto_1
    if-nez v1, :cond_0

    .line 75
    iget-object v3, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroid/app/enterprise/VpnPolicy;->deleteProfile(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    .end local v1           #success:Z
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Landroid/os/RemoteException;
    sget-object v3, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed at Vpn policy API createProfile"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    move v1, v2

    .line 81
    goto :goto_0

    .line 58
    .restart local v1       #success:Z
    :cond_4
    :try_start_1
    iget-object v3, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v4, "L2TP"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 60
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-boolean v5, p1, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecretEnable:Z

    iget-object v6, p1, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecret:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Landroid/app/enterprise/IVpnInfoPolicy;->setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    goto :goto_1

    .line 62
    :cond_5
    iget-object v3, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v4, "L2TP_IPSEC_PSK"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 64
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-boolean v5, p1, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecretEnable:Z

    iget-object v6, p1, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecret:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Landroid/app/enterprise/IVpnInfoPolicy;->setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 66
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecPreSharedKey:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/app/enterprise/IVpnInfoPolicy;->setPresharedKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    goto :goto_1

    .line 67
    :cond_6
    iget-object v3, p1, Landroid/app/enterprise/VpnAdminProfile;->vpnType:Ljava/lang/String;

    const-string v4, "L2TP_IPSEC"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-boolean v5, p1, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecretEnable:Z

    iget-object v6, p1, Landroid/app/enterprise/VpnAdminProfile;->L2TPSecret:Ljava/lang/String;

    invoke-interface {v3, v4, v5, v6}, Landroid/app/enterprise/IVpnInfoPolicy;->setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 71
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecCaCertificate:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/app/enterprise/IVpnInfoPolicy;->setCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 72
    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v4, p1, Landroid/app/enterprise/VpnAdminProfile;->profileName:Ljava/lang/String;

    iget-object v5, p1, Landroid/app/enterprise/VpnAdminProfile;->IPSecUserCertificate:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Landroid/app/enterprise/IVpnInfoPolicy;->setUserCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    and-int/2addr v1, v3

    goto :goto_1
.end method

.method public deleteProfile(Ljava/lang/String;)V
    .locals 3
    .parameter "profileName"

    .prologue
    .line 99
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->deleteProfile(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API deleteProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getIPSecCaCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "profileName"

    .prologue
    .line 344
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getCaCertificate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 350
    :goto_0
    return-object v1

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIPSecPreSharedKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "profileName"

    .prologue
    .line 287
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getPresharedKey(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 293
    :goto_0
    return-object v1

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getSharedSecret"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 293
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIPSecUserCertificate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "profileName"

    .prologue
    .line 402
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getUserCertificate(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 408
    :goto_0
    return-object v1

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 408
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "profileName"

    .prologue
    .line 538
    const/4 v1, 0x0

    .line 540
    .local v1, str:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    .line 541
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setVpnProfile(Ljava/lang/String;)Z

    .line 542
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 547
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 544
    .restart local v1       #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 545
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API getId"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getL2TPSecret(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "profileName"

    .prologue
    .line 731
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 732
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getL2TPSecret(Ljava/lang/String;)Ljava/lang/String;
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
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getL2TPSecret "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 737
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getServerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "profileName"

    .prologue
    .line 510
    const/4 v1, 0x0

    .line 512
    .local v1, str:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    .line 513
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setVpnProfile(Ljava/lang/String;)Z

    .line 514
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getServerName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 519
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 516
    .restart local v1       #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 517
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API getServerName"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getState(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "profileName"

    .prologue
    .line 566
    const/4 v1, 0x0

    .line 568
    .local v1, str:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    .line 569
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 574
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 571
    .restart local v1       #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 572
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API getState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "profileName"

    .prologue
    .line 482
    const/4 v1, 0x0

    .line 484
    .local v1, str:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    .line 485
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setVpnProfile(Ljava/lang/String;)Z

    .line 486
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 491
    .end local v1           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 488
    .restart local v1       #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 489
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API getType"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "profileName"

    .prologue
    .line 594
    const/4 v1, 0x0

    .line 596
    .local v1, userName:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    .line 597
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getUserName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 602
    .end local v1           #userName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 599
    .restart local v1       #userName:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 600
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getUserNameById(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 776
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 777
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getUserNameById(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 783
    :goto_0
    return-object v1

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API isL2TPSecretEnabled "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 783
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUserPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "profileName"

    .prologue
    .line 621
    const/4 v1, 0x0

    .line 623
    .local v1, userPwd:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    .line 624
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getUserPwd(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 629
    .end local v1           #userPwd:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 626
    .restart local v1       #userPwd:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 627
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getUserPwdById(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 795
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 796
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getUserPwdById(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 802
    :goto_0
    return-object v1

    .line 799
    :catch_0
    move-exception v0

    .line 800
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API isL2TPSecretEnabled "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 802
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVpnList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 674
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 675
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IVpnInfoPolicy;->getVPNList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 680
    :goto_0
    return-object v1

    .line 677
    :catch_0
    move-exception v0

    .line 678
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getVpnList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 680
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAdminProfile(Ljava/lang/String;)Z
    .locals 4
    .parameter "profileName"

    .prologue
    .line 647
    const/4 v1, 0x0

    .line 649
    .local v1, isAdminProfile:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v2, :cond_0

    .line 650
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setVpnProfile(Ljava/lang/String;)Z

    .line 651
    iget-object v2, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    iget-object v3, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v3, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/enterprise/IVpnInfoPolicy;->isAdminProfile(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 656
    .end local v1           #isAdminProfile:Z
    :cond_0
    :goto_0
    return v1

    .line 653
    .restart local v1       #isAdminProfile:Z
    :catch_0
    move-exception v0

    .line 654
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed at Vpn policy API isAdminProfile"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isL2TPSecretEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "profileName"

    .prologue
    .line 757
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 758
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->isL2TPSecretEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 764
    :goto_0
    return v1

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API isL2TPSecretEnabled "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 764
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPPTPEncryptionEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "profileName"

    .prologue
    .line 456
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->isPPTPEncryptionEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 462
    :goto_0
    return v1

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API getCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIPSecCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "profileName"
    .parameter "certificate"

    .prologue
    .line 318
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 319
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setCaCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 324
    :goto_0
    return v1

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIPSecPreSharedKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "profileName"
    .parameter "psk"

    .prologue
    .line 261
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setPresharedKey(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 267
    :goto_0
    return v1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setSharedSecret"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIPSecUserCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "profileName"
    .parameter "certificate"

    .prologue
    .line 376
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setUserCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 382
    :goto_0
    return v1

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "profileName"
    .parameter "id"

    .prologue
    .line 178
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setId(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setId"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 3
    .parameter "profileName"
    .parameter "enabled"
    .parameter "secret"

    .prologue
    .line 705
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 706
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IVpnInfoPolicy;->setL2TPSecret(Ljava/lang/String;ZLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 711
    :goto_0
    return v1

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setL2TPSecret"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 711
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPPTPEncryptionEnabled(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "profileName"
    .parameter "enabled"

    .prologue
    .line 430
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setEncryptionEnabledForPPTP(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 436
    :goto_0
    return v1

    .line 433
    :catch_0
    move-exception v0

    .line 434
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setCaCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setProfileName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "oldProfileName"
    .parameter "newProfileName"

    .prologue
    .line 125
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setName(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setServerName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "profileName"
    .parameter "serverName"

    .prologue
    .line 151
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setServerName(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setServerName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUserName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "profileName"
    .parameter "userName"

    .prologue
    .line 205
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setUserName(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 211
    :goto_0
    return v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setServerName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUserPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "profileName"
    .parameter "userPassword"

    .prologue
    .line 233
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IVpnInfoPolicy;->setUserPassword(Ljava/lang/String;Ljava/lang/String;)Z
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
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API setServerName"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setVpnProfile(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    .line 817
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    if-eqz v1, :cond_0

    .line 818
    iget-object v1, p0, Landroid/app/enterprise/VpnPolicy;->lService:Landroid/app/enterprise/IVpnInfoPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IVpnInfoPolicy;->setVpnProfile(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 824
    :goto_0
    return v1

    .line 821
    :catch_0
    move-exception v0

    .line 822
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/VpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at Vpn policy API isL2TPSecretEnabled "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 824
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
