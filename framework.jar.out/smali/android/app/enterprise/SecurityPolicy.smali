.class public Landroid/app/enterprise/SecurityPolicy;
.super Ljava/lang/Object;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/SecurityPolicy$1;
    }
.end annotation


# static fields
.field public static final CA_CERTIFICATE:Ljava/lang/String; = "CACERT_"

.field public static final KEYSTORE_KEY_NOT_FOUND:I = 0x7

.field public static final KEYSTORE_LOCKED:I = 0x2

.field public static final KEYSTORE_NO_ERROR:I = 0x1

.field public static final KEYSTORE_PERMISSION_DENIED:I = 0x6

.field public static final KEYSTORE_SYSTEM_ERROR:I = 0x4

.field public static final KEYSTORE_UNDEFINED_ACTION:I = 0x9

.field public static final KEYSTORE_UNINITIALIZED:I = 0x3

.field public static final KEYSTORE_VALUE_CORRUPTED:I = 0x8

.field public static final KEYSTORE_WRONG_PASSWORD:I = 0xa

.field private static TAG:Ljava/lang/String; = null

.field public static final TYPE_CERTIFICATE:Ljava/lang/String; = ".crt"

.field public static final TYPE_PKCS12:Ljava/lang/String; = ".p12"

.field public static final USER_CERTIFICATE:Ljava/lang/String; = "USRCERT_"

.field public static final WIPE_EXTERNAL_MEMORY:I = 0x2

.field public static final WIPE_INTERNAL_EXTERNAL_MEMORY:I = 0x3

.field public static final WIPE_INTERNAL_MEMORY:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDPM:Landroid/app/admin/DevicePolicyManager;

.field private final mService:Landroid/app/enterprise/ISecurityPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "SecurityPolicy"

    sput-object v0, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 75
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroid/app/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 77
    const-string/jumbo v0, "security_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/ISecurityPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/ISecurityPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    .line 79
    iget-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 82
    return-void
.end method

.method private formatInternalStorage(ZZ)Z
    .locals 3
    .parameter "includeSystemDirectory"
    .parameter "includeDataDirectory"

    .prologue
    .line 478
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 480
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISecurityPolicy;->formatInternalStorage(ZZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 486
    :goto_0
    return v1

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 486
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "fileList"
    .parameter "filters"

    .prologue
    .line 451
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 453
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISecurityPolicy;->formatSelective([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 458
    :goto_0
    return-object v1

    .line 454
    :catch_0
    move-exception v0

    .line 455
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with device info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 458
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private formatStorageCard(Z)Z
    .locals 3
    .parameter "isExternal"

    .prologue
    .line 498
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 500
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->formatStorageCard(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 505
    :goto_0
    return v1

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 505
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeCredentialStoragePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "oldpassword"
    .parameter "newpassword"

    .prologue
    .line 245
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 247
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISecurityPolicy;->changeCredentialStoragePassword(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 253
    :goto_0
    return v1

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed changeCredentialStoragePassword"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearInstalledCertificates()Z
    .locals 3

    .prologue
    .line 390
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 392
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->clearInstalledCertificates()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 397
    :goto_0
    return v1

    .line 393
    :catch_0
    move-exception v0

    .line 394
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed clearInstalledCertificates"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCredentialStorageStatus()I
    .locals 3

    .prologue
    .line 265
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    .line 267
    .local v0, ks:Landroid/security/KeyStore;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy$1;->$SwitchMap$android$security$KeyStore$State:[I

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v2

    invoke-virtual {v2}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 271
    const/4 v1, -0x1

    :goto_0
    return v1

    .line 268
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 269
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 270
    :pswitch_2
    const/4 v1, 0x3

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getFileNamesOnDevice(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "path"
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
    .line 714
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 716
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->getFileNamesOnDevice(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 721
    :goto_0
    return-object v1

    .line 717
    :catch_0
    move-exception v0

    .line 718
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 721
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFileNamesWithAttributes(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "path"
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
    .line 743
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 745
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->getFileNamesWithAttributes(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 750
    :goto_0
    return-object v1

    .line 746
    :catch_0
    move-exception v0

    .line 747
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 750
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledCertificateNames(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "type"
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
    .line 194
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 196
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->getInstalledCertificateNames(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 201
    :goto_0
    return-object v1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getInstalledCertificateNames"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledCertificates()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 173
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->getInstalledCertificates()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 178
    :goto_0
    return-object v1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRequireDeviceEncryption(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "admin"

    .prologue
    .line 625
    iget-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z
    .locals 1
    .parameter "admin"

    .prologue
    .line 651
    iget-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public getSystemCertificates()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 147
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->getSystemCertificates()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 152
    :goto_0
    return-object v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installCertificate(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "type"
    .parameter "value"
    .parameter "name"
    .parameter "password"

    .prologue
    .line 342
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 344
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/enterprise/ISecurityPolicy;->installCertificate(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 349
    :goto_0
    return v1

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installCertificateWithType(Ljava/lang/String;[B)V
    .locals 3
    .parameter "type"
    .parameter "value"

    .prologue
    .line 104
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 106
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISecurityPolicy;->installCertificateWithType(Ljava/lang/String;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public installCertificatesFromSdCard()V
    .locals 3

    .prologue
    .line 122
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 124
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->installCertificatesFromSdCard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isExternalStorageEncrypted()Z
    .locals 3

    .prologue
    .line 591
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 593
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->isExternalStorageEncrypted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 598
    :goto_0
    return v1

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInternalStorageEncrypted()Z
    .locals 3

    .prologue
    .line 568
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 570
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->isInternalStorageEncrypted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 575
    :goto_0
    return v1

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public powerOffDevice()V
    .locals 3

    .prologue
    .line 687
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 689
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->powerOffDevice()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 690
    :catch_0
    move-exception v0

    .line 691
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeAccountsByType(Ljava/lang/String;)Z
    .locals 3
    .parameter "type"

    .prologue
    .line 669
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 671
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->removeAccountsByType(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 676
    :goto_0
    return v1

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 676
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "key"
    .parameter "type"

    .prologue
    .line 369
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 371
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/ISecurityPolicy;->removeCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 376
    :goto_0
    return v1

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed unlockCredentialStorage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resetCredentialStorage()Z
    .locals 3

    .prologue
    .line 311
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 313
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/ISecurityPolicy;->resetCredentialStorage()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 318
    :goto_0
    return v1

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed resetCredentialStorage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 318
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCredentialStoragePassword(Ljava/lang/String;)Z
    .locals 3
    .parameter "password"

    .prologue
    .line 218
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 220
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->setCredentialStoragePassword(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 225
    :goto_0
    return v1

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed setCredentialStoragePassword"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setExternalStorageEncryption(Z)V
    .locals 3
    .parameter "isEncrypt"

    .prologue
    .line 546
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 548
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->setExternalStorageEncryption(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setInternalStorageEncryption(Z)V
    .locals 3
    .parameter "isEncrypt"

    .prologue
    .line 523
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 525
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->setInternalStorageEncryption(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRequireDeviceEncryption(Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 614
    iget-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    .line 615
    return-void
.end method

.method public setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V
    .locals 1
    .parameter "admin"
    .parameter "value"

    .prologue
    .line 640
    iget-object v0, p0, Landroid/app/enterprise/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->setRequireStorageCardEncryption(Landroid/content/ComponentName;Z)V

    .line 641
    return-void
.end method

.method public unlockCredentialStorage(Ljava/lang/String;)Z
    .locals 3
    .parameter "password"

    .prologue
    .line 290
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v1, :cond_0

    .line 292
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/ISecurityPolicy;->unlockCredentialStorage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 297
    :goto_0
    return v1

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed unlockCredentialStorage"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public wipeDevice(I)Z
    .locals 6
    .parameter "flags"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 415
    const/4 v1, 0x0

    .line 416
    .local v1, result:Z
    iget-object v3, p0, Landroid/app/enterprise/SecurityPolicy;->mService:Landroid/app/enterprise/ISecurityPolicy;

    if-eqz v3, :cond_3

    .line 418
    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    if-ne p1, v5, :cond_1

    .line 420
    :cond_0
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v3}, Landroid/app/enterprise/SecurityPolicy;->formatStorageCard(Z)Z

    move-result v1

    .line 422
    :cond_1
    if-eq p1, v4, :cond_2

    if-ne p1, v5, :cond_3

    .line 424
    :cond_2
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/app/enterprise/SecurityPolicy;->formatStorageCard(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_3
    move v2, v1

    .line 432
    .end local v1           #result:Z
    .local v2, result:Z
    :goto_0
    return v2

    .line 427
    .end local v2           #result:Z
    .restart local v1       #result:Z
    :catch_0
    move-exception v0

    .line 428
    .local v0, e:Ljava/lang/Exception;
    sget-object v3, Landroid/app/enterprise/SecurityPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with misc info policy"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v2, v1

    .line 429
    .end local v1           #result:Z
    .restart local v2       #result:Z
    goto :goto_0
.end method
