.class public final Lcom/android/server/DeviceManager3LMService;
.super Landroid/os/IDeviceManager3LM$Stub;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceManager3LMService$ClearUserDataObserver;,
        Lcom/android/server/DeviceManager3LMService$PublicKey3LM;,
        Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;,
        Lcom/android/server/DeviceManager3LMService$PackageInstallObserver;,
        Lcom/android/server/DeviceManager3LMService$RulesEngine;
    }
.end annotation


# static fields
.field private static final API_VERSION:I = 0xc

.field private static final DNS1:Ljava/lang/String; = "net.dns1"

.field private static final DNS2:Ljava/lang/String; = "net.dns2"

.field private static final DNS_DOMAIN_SUFFICES:Ljava/lang/String; = "net.dns.search"

.field private static final PROPERTY_NFC_LOCKOUT:Ljava/lang/String; = "persist.security.nfc.lockout"

.field private static final PROPERTY_WIFI_LOCKOUT:Ljava/lang/String; = "persist.security.wifi.lockout"

.field private static final TAG:Ljava/lang/String; = "DeviceManager3LM"

.field private static final TUN_DNS1:Ljava/lang/String; = "vpn.net.tun.dns1"

.field private static final TUN_DNS2:Ljava/lang/String; = "vpn.net.tun.dns2"

.field private static final is3LMAllowed:Z

.field static sService:Lcom/android/server/DeviceManager3LMService;


# instance fields
.field private final DEBUG:Z

.field public final MAX_WAIT_TIME:J

.field private final SCAN_3LM_RESULT_ALLOW:I

.field private final SCAN_3LM_RESULT_DENY:I

.field public final STATE_DISABLED:I

.field public final STATE_ENABLED:I

.field public final STATE_UNSUPPORTED:I

.field public final WAIT_TIME_INCR:J

.field private mAllowedPackages:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mAndroidIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothEnabled:Z

.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBootLocked:Z

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field mContext:Landroid/content/Context;

.field private mInitialized:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mNetworkManager:Landroid/os/INetworkManagementService;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationText:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackagePerms:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/DeviceManager3LMService$RulesEngine;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageScanFailOnTimeout:Z

.field private mPackageScanTimeoutMillis:I

.field private mPackageScanner:Ljava/lang/String;

.field private mPackageScannerMutex:Ljava/lang/Object;

.field private mPermNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mPubKeyRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mPublicKey3LM:Lcom/android/server/DeviceManager3LMService$PublicKey3LM;

.field private mSecureClipboardRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mSecurePrimaryClip:Z

.field private mUid:I

.field private mUninstallPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

.field private mVpnHasOriginalData:Z

.field private mVpnOriginalDns1:Ljava/lang/String;

.field private mVpnOriginalDns2:Ljava/lang/String;

.field private mVpnOriginalDnsSuffixes:Ljava/lang/String;

.field private mVpnSettingsMutex:Ljava/lang/String;

.field private mWifiFilter:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 158
    invoke-direct {p0}, Landroid/os/IDeviceManager3LM$Stub;-><init>()V

    .line 77
    iput-boolean v2, p0, Lcom/android/server/DeviceManager3LMService;->DEBUG:Z

    .line 79
    const-wide/16 v0, 0x61a8

    iput-wide v0, p0, Lcom/android/server/DeviceManager3LMService;->MAX_WAIT_TIME:J

    .line 80
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/server/DeviceManager3LMService;->WAIT_TIME_INCR:J

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DeviceManager3LMService;->STATE_UNSUPPORTED:I

    .line 83
    iput v2, p0, Lcom/android/server/DeviceManager3LMService;->STATE_DISABLED:I

    .line 84
    iput v3, p0, Lcom/android/server/DeviceManager3LMService;->STATE_ENABLED:I

    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mVpnOriginalDnsSuffixes:Ljava/lang/String;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mVpnOriginalDns1:Ljava/lang/String;

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mVpnOriginalDns2:Ljava/lang/String;

    .line 132
    iput-boolean v2, p0, Lcom/android/server/DeviceManager3LMService;->mVpnHasOriginalData:Z

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mVpnSettingsMutex:Ljava/lang/String;

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mPackageScannerMutex:Ljava/lang/Object;

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mPackageScanner:Ljava/lang/String;

    .line 142
    iput-boolean v2, p0, Lcom/android/server/DeviceManager3LMService;->mPackageScanFailOnTimeout:Z

    .line 143
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/server/DeviceManager3LMService;->mPackageScanTimeoutMillis:I

    .line 2100
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/DeviceManager3LMService;->SCAN_3LM_RESULT_ALLOW:I

    .line 2101
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/server/DeviceManager3LMService;->SCAN_3LM_RESULT_DENY:I

    .line 2144
    new-instance v0, Lcom/android/server/DeviceManager3LMService$3;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$3;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 159
    invoke-direct {p0}, Lcom/android/server/DeviceManager3LMService;->initAndroidIds()V

    .line 160
    iput-boolean v2, p0, Lcom/android/server/DeviceManager3LMService;->mInitialized:Z

    .line 161
    iput-boolean v3, p0, Lcom/android/server/DeviceManager3LMService;->mBluetoothEnabled:Z

    .line 162
    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .line 163
    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mPermNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .line 164
    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mPubKeyRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .line 165
    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mUninstallPkgNameRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .line 166
    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mAllowedPackages:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mPackagePerms:Ljava/util/Map;

    .line 168
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mKeyStore:Landroid/security/KeyStore;

    .line 169
    new-instance v0, Lcom/android/server/DeviceManager3LMService$RulesEngine;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceManager3LMService$RulesEngine;-><init>(Lcom/android/server/DeviceManager3LMService;)V

    iput-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mSecureClipboardRules:Lcom/android/server/DeviceManager3LMService$RulesEngine;

    .line 170
    iput-boolean v2, p0, Lcom/android/server/DeviceManager3LMService;->mSecurePrimaryClip:Z

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DeviceManager3LMService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mNotificationText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/DeviceManager3LMService;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/server/DeviceManager3LMService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/DeviceManager3LMService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method private getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 359
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/DeviceManager3LMService;
    .locals 2

    .prologue
    .line 153
    const-class v1, Lcom/android/server/DeviceManager3LMService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/DeviceManager3LMService;->sService:Lcom/android/server/DeviceManager3LMService;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lcom/android/server/DeviceManager3LMService;

    invoke-direct {v0}, Lcom/android/server/DeviceManager3LMService;-><init>()V

    sput-object v0, Lcom/android/server/DeviceManager3LMService;->sService:Lcom/android/server/DeviceManager3LMService;

    .line 156
    :cond_0
    sget-object v0, Lcom/android/server/DeviceManager3LMService;->sService:Lcom/android/server/DeviceManager3LMService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initAndroidIds()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method private isAccessPermitted()Z
    .locals 1

    .prologue
    .line 1092
    const/4 v0, 0x1

    return v0
.end method

.method private isBootLocked(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method private notify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .parameter "id"
    .parameter "notificationBar"
    .parameter "title"
    .parameter "text"
    .parameter "intent"

    .prologue
    .line 398
    return-void
.end method

.method private notify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 8
    .parameter "id"
    .parameter "notificationBar"
    .parameter "title"
    .parameter "text"
    .parameter "intent"
    .parameter "flags"

    .prologue
    .line 405
    new-instance v0, Lcom/android/server/DeviceManager3LMService$2;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move v4, p6

    move-object v5, p3

    move-object v6, p4

    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/DeviceManager3LMService$2;-><init>(Lcom/android/server/DeviceManager3LMService;Ljava/lang/String;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/server/DeviceManager3LMService$2;->start()V

    .line 419
    return-void
.end method

.method private setPackageState(Ljava/lang/String;I)V
    .locals 0
    .parameter "pkgName"
    .parameter "state"

    .prologue
    .line 705
    return-void
.end method

.method private updateNetworkRules(Lcom/android/server/DeviceManager3LMService$RulesEngine;)V
    .locals 0
    .parameter "re"

    .prologue
    .line 1909
    return-void
.end method


# virtual methods
.method public addApn(Ljava/util/Map;)V
    .locals 0
    .parameter "list"

    .prologue
    .line 2213
    return-void
.end method

.method public blockAdb(Z)V
    .locals 0
    .parameter "block"

    .prologue
    .line 1735
    return-void
.end method

.method public blockScreenshot(Z)V
    .locals 0
    .parameter "block"

    .prologue
    .line 2167
    return-void
.end method

.method public blockTethering(Z)V
    .locals 0
    .parameter "block"

    .prologue
    .line 2122
    return-void
.end method

.method public blockUsb(Z)V
    .locals 0
    .parameter "block"

    .prologue
    .line 1796
    return-void
.end method

.method public checkAppInstallPolicies(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .parameter "pkgName"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 968
    .local p2, requestedPermissions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p3, pkgSigs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public checkAppUninstallPolicies(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 1031
    const/4 v0, 0x1

    return v0
.end method

.method public checkPackagePermission(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "permName"
    .parameter "pkgName"

    .prologue
    .line 788
    const/4 v0, 0x1

    return v0
.end method

.method public checkPrimaryClipAccess(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 2045
    const/4 v0, 0x1

    return v0
.end method

.method public checkSignature(I)Z
    .locals 1
    .parameter "uid"

    .prologue
    .line 1932
    const/4 v0, 0x0

    return v0
.end method

.method public checkUidPermission(Ljava/lang/String;I)Z
    .locals 1
    .parameter "permName"
    .parameter "uid"

    .prologue
    .line 606
    const/4 v0, 0x1

    return v0
.end method

.method public checkVpnDns(Ljava/lang/String;)Z
    .locals 1
    .parameter "vpnSuffixes"

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public clearApn()V
    .locals 0

    .prologue
    .line 2254
    return-void
.end method

.method public clearApplicationUserData(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 1720
    const/4 v0, 0x0

    return v0
.end method

.method public clearPackagePermissions()V
    .locals 0

    .prologue
    .line 2061
    return-void
.end method

.method public completePackageScan(II)V
    .locals 0
    .parameter "scanId"
    .parameter "result"

    .prologue
    .line 2105
    return-void
.end method

.method public connectToVpn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "abstractSocketName"
    .parameter "vpnSubnets"

    .prologue
    .line 431
    const/4 v0, 0x0

    return v0
.end method

.method public deletePackage(Ljava/lang/String;Z)V
    .locals 0
    .parameter "pkgName"
    .parameter "deleteData"

    .prologue
    .line 893
    return-void
.end method

.method public disablePackage(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 670
    return-void
.end method

.method public disconnectFromVpn(Z)Z
    .locals 1
    .parameter "doReset"

    .prologue
    .line 579
    const/4 v0, 0x0

    return v0
.end method

.method public enablePackage(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 688
    return-void
.end method

.method public encryptPackage(Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "pkgName"
    .parameter "encrypt"
    .parameter "required"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1385
    return-void
.end method

.method public getBluetoothEnabled()Z
    .locals 1

    .prologue
    .line 850
    const/4 v0, 0x1

    return v0
.end method

.method public getNfcState()I
    .locals 1

    .prologue
    .line 1650
    const/4 v0, 0x1

    return v0
.end method

.method public getOtaDelay()I
    .locals 1

    .prologue
    .line 1844
    const/4 v0, 0x1

    return v0
.end method

.method public getOwnerInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnerInfoEnabled()I
    .locals 1

    .prologue
    .line 207
    const/4 v0, -0x1

    return v0
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 1615
    const/4 v0, 0x0

    .line 1618
    .local v0, skip:I
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPackageScanner()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2091
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 201
    const/4 v0, -0x1

    return v0
.end method

.method public getWifiState()I
    .locals 1

    .prologue
    .line 1691
    const/4 v0, 0x1

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 175
    return-void
.end method

.method public installPackage(Ljava/lang/String;)V
    .locals 0
    .parameter "packageURIAsString"

    .prologue
    .line 857
    return-void
.end method

.method public isAdbBlocked()Z
    .locals 1

    .prologue
    .line 1753
    const/4 v0, 0x0

    return v0
.end method

.method public isAdminLocked()Z
    .locals 1

    .prologue
    .line 1782
    const/4 v0, 0x0

    return v0
.end method

.method public isApnLocked()Z
    .locals 1

    .prologue
    .line 2201
    const/4 v0, 0x0

    return v0
.end method

.method public isDataEncrypted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1334
    const/4 v0, 0x0

    return v0
.end method

.method public isDataEncryptionRequired()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1341
    const/4 v0, 0x0

    return v0
.end method

.method public isPackage3LM(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkg"

    .prologue
    .line 1062
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageDisabled(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 756
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageEncrypted(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1359
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageEncryptionRequired(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1371
    const/4 v0, 0x0

    return v0
.end method

.method public isScreenshotBlocked()Z
    .locals 1

    .prologue
    .line 2178
    const/4 v0, 0x0

    return v0
.end method

.method public isSdEncrypted()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1314
    const/4 v0, 0x0

    return v0
.end method

.method public isSdEncryptionRequired()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1321
    const/4 v0, 0x0

    return v0
.end method

.method public isSsidAllowed(Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"

    .prologue
    .line 1887
    const/4 v0, 0x1

    return v0
.end method

.method public isTetheringBlocked()Z
    .locals 1

    .prologue
    .line 2156
    const/4 v0, 0x0

    return v0
.end method

.method public isUsbBlocked()Z
    .locals 1

    .prologue
    .line 1813
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreChangePassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "oldPassword"
    .parameter "newPassword"

    .prologue
    .line 1270
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreContains(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 1247
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreDeleteKey(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 1186
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreGetKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 1170
    const/4 v0, 0x0

    return-object v0
.end method

.method public keyStoreGetLastError()I
    .locals 1

    .prologue
    .line 1236
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreLock()Z
    .locals 1

    .prologue
    .line 1213
    const/4 v0, 0x0

    return v0
.end method

.method public keyStorePutKey(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "name"
    .parameter "key"

    .prologue
    .line 1153
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreReset()Z
    .locals 1

    .prologue
    .line 1258
    const/4 v0, 0x0

    return v0
.end method

.method public keyStoreSetPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 1202
    return-void
.end method

.method public keyStoreTest()I
    .locals 1

    .prologue
    .line 1140
    const/4 v0, -0x1

    return v0
.end method

.method public keyStoreUnlock(Ljava/lang/String;)Z
    .locals 1
    .parameter "password"

    .prologue
    .line 1224
    const/4 v0, 0x0

    return v0
.end method

.method public lockAdmin(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 1766
    return-void
.end method

.method public lockApn(Z)V
    .locals 0
    .parameter "lock"

    .prologue
    .line 2190
    return-void
.end method

.method public notification(III)V
    .locals 0
    .parameter "barId"
    .parameter "titleId"
    .parameter "textId"

    .prologue
    .line 1972
    return-void
.end method

.method public putSettingsSecureInt(Ljava/lang/String;I)Z
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1299
    const/4 v0, 0x0

    return v0
.end method

.method public putSettingsSecureString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 1284
    const/4 v0, 0x0

    return v0
.end method

.method public restoreDefaultApns()V
    .locals 0

    .prologue
    .line 2270
    return-void
.end method

.method public restoreOriginalDns(Ljava/lang/String;)Z
    .locals 1
    .parameter "vpnSuffixes"

    .prologue
    .line 543
    const/4 v0, 0x0

    return v0
.end method

.method public setAllowedPackages(Ljava/util/Map;)Z
    .locals 1
    .parameter "pkgNames"

    .prologue
    .line 740
    const/4 v0, 0x0

    return v0
.end method

.method public setAppInstallPermissionPolicies(Ljava/util/Map;)Z
    .locals 1
    .parameter "permNameRegexPermMap"

    .prologue
    .line 939
    const/4 v0, 0x0

    return v0
.end method

.method public setAppInstallPkgNamePolicies(Ljava/util/Map;)Z
    .locals 1
    .parameter "pkgNameRegexPermMap"

    .prologue
    .line 925
    const/4 v0, 0x0

    return v0
.end method

.method public setAppInstallPubkeyPolicies(Ljava/util/Map;)Z
    .locals 1
    .parameter "pubkeyRegexPermMap"

    .prologue
    .line 953
    const/4 v0, 0x0

    return v0
.end method

.method public setAppUninstallPkgNamePolicies(Ljava/util/Map;)Z
    .locals 1
    .parameter "uninstallPkgNameRegexPermMap"

    .prologue
    .line 1017
    const/4 v0, 0x0

    return v0
.end method

.method public setBluetoothEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 836
    return-void
.end method

.method public setBootLock(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 291
    return-void
.end method

.method public setDataEncryptionRequired(Z)V
    .locals 0
    .parameter "required"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1348
    return-void
.end method

.method public setLocationProviderEnabled(Ljava/lang/String;Z)V
    .locals 0
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 223
    return-void
.end method

.method public setNfcState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1664
    return-void
.end method

.method public setNotificationText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 375
    return-void
.end method

.method public setOtaDelay(I)V
    .locals 0
    .parameter "delay"

    .prologue
    .line 1827
    return-void
.end method

.method public setPackagePermission(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "permName"
    .parameter "pkgName"
    .parameter "enable"

    .prologue
    .line 634
    const/4 v0, 0x0

    return v0
.end method

.method public setPackageScanner(Ljava/lang/String;ZI)V
    .locals 0
    .parameter "scannerComponent"
    .parameter "failOnTimeout"
    .parameter "timeoutMillis"

    .prologue
    .line 2071
    return-void
.end method

.method public setPrimaryClipOwner(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 2019
    return-void
.end method

.method public setSdEncryptionRequired(Z)V
    .locals 0
    .parameter "required"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1328
    return-void
.end method

.method public setSecureClipboard(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1995
    .local p1, packageNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public setSsidFilter(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1857
    .local p1, filter:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public setWifiState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1701
    return-void
.end method

.method public setupVpnDns(Ljava/lang/String;)Z
    .locals 1
    .parameter "vpnSuffixes"

    .prologue
    .line 465
    const/4 v0, 0x0

    return v0
.end method

.method public unlock()V
    .locals 0

    .prologue
    .line 302
    return-void
.end method
