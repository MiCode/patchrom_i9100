.class public Landroid/app/enterprise/BluetoothPolicy;
.super Ljava/lang/Object;
.source "BluetoothPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/BluetoothPolicy$BluetoothProfile;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IBluetoothPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "BluetoothPolicy"

    sput-object v0, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, "bluetooth_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBluetoothPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    .line 74
    return-void
.end method


# virtual methods
.method public allowBluetooth(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 158
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 160
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->allowBluetooth(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 165
    :goto_0
    return v1

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 165
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowOutgoingCalls(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 222
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 224
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->allowOutgoingCalls(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 229
    :goto_0
    return v1

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllowBluetoothDataTransfer()Z
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 106
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->getAllowBluetoothDataTransfer()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 111
    :goto_0
    return v1

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isBluetoothEnabled()Z
    .locals 3

    .prologue
    .line 139
    const/4 v1, 0x1

    .line 142
    .local v1, enabled:Z
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v2}, Landroid/app/enterprise/IBluetoothPolicy;->isBluetoothEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 147
    :goto_0
    return v2

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    move v2, v1

    .line 147
    goto :goto_0
.end method

.method public isDesktopConnectivityEnabled()Z
    .locals 3

    .prologue
    .line 487
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 489
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isDesktopConnectivityEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 494
    :goto_0
    return v1

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isDiscoverableEnabled()Z
    .locals 3

    .prologue
    .line 447
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 449
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isDiscoverableEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 454
    :goto_0
    return v1

    .line 450
    :catch_0
    move-exception v0

    .line 451
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 454
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isLimitedDiscoverableEnabled()Z
    .locals 3

    .prologue
    .line 280
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 282
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isLimitedDiscoverableEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 287
    :goto_0
    return v1

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 287
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isOutgoingCallsAllowed()Z
    .locals 3

    .prologue
    .line 239
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 241
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isOutgoingCallsAllowed()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 246
    :goto_0
    return v1

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isPairingEnabled()Z
    .locals 3

    .prologue
    .line 200
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 202
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IBluetoothPolicy;->isPairingEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 207
    :goto_0
    return v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 207
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isProfileEnabled(I)Z
    .locals 3
    .parameter "profile"

    .prologue
    .line 408
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 410
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->isProfileEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 415
    :goto_0
    return v1

    .line 411
    :catch_0
    move-exception v0

    .line 412
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 415
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isRequiredPasswordForDiscovery()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public isRequiredPasswordForEnable()Z
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method public setAllowBluetoothDataTransfer(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 88
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 90
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->setAllowBluetoothDataTransfer(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 95
    :goto_0
    return v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBluetoothState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 123
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 125
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->setBluetooth(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 130
    :goto_0
    return v1

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with misc info policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 130
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDesktopConnectivityState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 470
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 472
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->setDesktopConnectivityState(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 477
    :goto_0
    return v1

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 477
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDiscoverableState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 431
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 433
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->setDiscoverableState(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 438
    :goto_0
    return v1

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 438
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setLimitedDiscoverableState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 263
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 265
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->setLimitedDiscoverableState(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 270
    :goto_0
    return v1

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPairingState(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 183
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 185
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IBluetoothPolicy;->setPairingState(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 190
    :goto_0
    return v1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 190
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setProfileState(ZI)Z
    .locals 3
    .parameter "enable"
    .parameter "profile"

    .prologue
    .line 389
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    if-eqz v1, :cond_0

    .line 391
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BluetoothPolicy;->mService:Landroid/app/enterprise/IBluetoothPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IBluetoothPolicy;->setProfileState(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 396
    :goto_0
    return v1

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BluetoothPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with bluetooth policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRequiredPasswordForDiscovery(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public setRequiredPasswordForEnable(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 352
    const/4 v0, 0x0

    return v0
.end method
