.class public Landroid/sec/enterprise/BluetoothPolicy;
.super Ljava/lang/Object;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/BluetoothPolicy$BluetoothProfile;,
        Landroid/sec/enterprise/BluetoothPolicy$BluetoothUUID;
    }
.end annotation


# static fields
.field public static final NO_PROFILE:I = -0x1

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "BluetoothPolicy"

    sput-object v0, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    return-void
.end method


# virtual methods
.method public bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 437
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-bluetoothLog returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAllowBluetoothDataTransfer()Z
    .locals 3

    .prologue
    .line 238
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getAllowBluetoothDataTransfer()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 242
    :goto_0
    return v1

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-getAllowBluetoothDataTransfer returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getBluetoothLog()Ljava/util/List;
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
    .line 414
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getBluetoothLog()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 418
    :goto_0
    return-object v1

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-getBluetoothLog returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBluetoothDeviceAllowed(Ljava/lang/String;)Z
    .locals 3
    .parameter "deviceAddress"

    .prologue
    .line 342
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isBluetoothDeviceAllowed(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 346
    :goto_0
    return v1

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isBluetoothDeviceAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isBluetoothEnabled()Z
    .locals 4

    .prologue
    .line 399
    const/4 v1, 0x1

    .line 402
    .local v1, enabled:Z
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/enterprise/IEDMProxy;->isBluetoothEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 408
    :goto_0
    return v2

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    .line 406
    sget-object v2, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-isBluetoothEnabled returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 408
    goto :goto_0
.end method

.method public isBluetoothLogEnabled()Z
    .locals 3

    .prologue
    .line 423
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isBluetoothLogEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 427
    :goto_0
    return v1

    .line 424
    :catch_0
    move-exception v0

    .line 425
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isBluetoothLogEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    .locals 3
    .parameter "uuid"

    .prologue
    .line 296
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 300
    :goto_0
    return v1

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isBluetoothUUIDAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isDesktopConnectivityEnabled()Z
    .locals 3

    .prologue
    .line 268
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isDesktopConnectivityEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 272
    :goto_0
    return v1

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isDesktopConnectivityEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isDiscoverableEnabled()Z
    .locals 3

    .prologue
    .line 371
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isDiscoverableEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 375
    :goto_0
    return v1

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isDiscoverableEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isLimitedDiscoverableEnabled()Z
    .locals 3

    .prologue
    .line 386
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isLimitedDiscoverableEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 390
    :goto_0
    return v1

    .line 387
    :catch_0
    move-exception v0

    .line 388
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isLimitedDiscoverableEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isOutgoingCallsAllowed()Z
    .locals 3

    .prologue
    .line 253
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isOutgoingCallsAllowed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 257
    :goto_0
    return v1

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isOutgoingCallsAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isPairingEnabled()Z
    .locals 3

    .prologue
    .line 357
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isPairingEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 361
    :goto_0
    return v1

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isPairingEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isProfileEnabled(I)Z
    .locals 3
    .parameter "profile"

    .prologue
    .line 312
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isProfileEnabled(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 316
    :goto_0
    return v1

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isProfileEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v1, 0x1

    goto :goto_0
.end method
