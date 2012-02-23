.class public Landroid/app/enterprise/EnterpriseVpnPolicy;
.super Ljava/lang/Object;
.source "EnterpriseVpnPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String; = null

.field public static final VPN_CERT_TYPE_AUTOMATIC:Ljava/lang/String; = "Automatic"

.field public static final VPN_CERT_TYPE_DISABLED:Ljava/lang/String; = "Disabled"

.field public static final VPN_CERT_TYPE_MANUAL:Ljava/lang/String; = "Manual"

.field public static final VPN_TYPE_ANYCONNECT:Ljava/lang/String; = "anyconnect"


# instance fields
.field private final mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "EnterpriseVpnPolicy"

    sput-object v0, Landroid/app/enterprise/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "enterprise_vpn_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEnterpriseVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseVpnPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    .line 39
    return-void
.end method


# virtual methods
.method public getAllEnterpriseVpnConnections()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/EnterpriseVpnConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->getAllEnterpriseVpnConnections()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 151
    :goto_0
    return-object v1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseVpn policy API getAllEnterpriseVpnConnections"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getClientCertificates(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->getClientCertificates(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 206
    :goto_0
    return-object v1

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseVpn policy API getClientCertificates"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEnterpriseVpnConnection(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseVpnConnection;
    .locals 3
    .parameter "type"
    .parameter "name"

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->getEnterpriseVpnConnection(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseVpnConnection;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 68
    :goto_0
    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseVpn policy API getEnterpriseVpnConnection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installClientCertificate(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 3
    .parameter "type"
    .parameter "pkcs12Blob"
    .parameter "password"

    .prologue
    .line 173
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->installClientCertificate(Ljava/lang/String;[BLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 181
    :goto_0
    return v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseVpn policy API installCertificate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeEnterpriseVpnConnection(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "type"
    .parameter "name"

    .prologue
    .line 117
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->removeEnterpriseVpnConnection(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 127
    :goto_0
    return v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseVpn policy API removeEnterpriseVpnConnection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEnterpriseVpnConnection(Landroid/app/enterprise/EnterpriseVpnConnection;Ljava/lang/String;)Z
    .locals 3
    .parameter "vpn"
    .parameter "oldName"

    .prologue
    .line 89
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Landroid/app/enterprise/EnterpriseVpnPolicy;->mService:Landroid/app/enterprise/IEnterpriseVpnPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEnterpriseVpnPolicy;->setEnterpriseVpnConnection(Landroid/app/enterprise/EnterpriseVpnConnection;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 99
    :goto_0
    return v1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/EnterpriseVpnPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed at EnterpriseVpn policy API setEnterpriseVpnConnection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
