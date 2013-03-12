.class public Landroid/net/wifi/WifiOffloadManager;
.super Ljava/lang/Object;
.source "WifiOffloadManager.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiOffloadManager"


# instance fields
.field mHandler:Landroid/os/Handler;

.field mService:Landroid/net/wifi/IWifiOffloadManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/IWifiOffloadManager;Landroid/os/Handler;)V
    .locals 0
    .parameter "service"
    .parameter "handler"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    .line 44
    iput-object p2, p0, Landroid/net/wifi/WifiOffloadManager;->mHandler:Landroid/os/Handler;

    .line 45
    return-void
.end method


# virtual methods
.method public canAppOffload(Ljava/lang/String;)Z
    .locals 4
    .parameter "pkgName"

    .prologue
    .line 251
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->canAppOffload(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 254
    :goto_0
    return v1

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while checking canAppOffload : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkAppNeedsMoveToFront(I)V
    .locals 3
    .parameter "taskID"

    .prologue
    .line 260
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->checkAppNeedsMoveToFront(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception in checkAppNeedsMoveToFront"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkMobileNetwork()I
    .locals 3

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->isMobileDataActive()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 52
    :goto_0
    return v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while checking data activity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearAllAPs()V
    .locals 3

    .prologue
    .line 350
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->clearAllAccessPoints()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while clear all AP\'s"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteWifidetails(Ljava/lang/String;)I
    .locals 3
    .parameter "networkName"

    .prologue
    .line 70
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->deleteNetwork(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 73
    :goto_0
    return v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while deleteWifidetails"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public doOffloadStuff(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "pkgName"
    .parameter "action"

    .prologue
    .line 305
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiOffloadManager;->doOffloadStuff(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 308
    :goto_0
    return v1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception in doOffloadStuff"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAvailableStoredWifi()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 316
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->getAvailableSSIDNames()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 319
    :goto_0
    return-object v1

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while getAvailableStoredWifi"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentBaseStationID()I
    .locals 3

    .prologue
    .line 80
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->getCDMABaseStationID()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 84
    :goto_0
    return v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while getCurrentBaseStationID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastPkgName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 278
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->getLastPkgName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 281
    :goto_0
    return-object v1

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception in getLastPkgName"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastWifiScannedTime()J
    .locals 3

    .prologue
    .line 296
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->getLastWifiScannedTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 299
    :goto_0
    return-wide v1

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception in getLastWifiScannedTime"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public isAppInWiFiBlackList(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->isAppInWiFiBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 125
    :goto_0
    return v1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while checking 3g only app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAppRequiresWifi(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->isWifiOnlyApp(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 147
    :goto_0
    return v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while checking 3g only app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAppinWhiteList(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 131
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->isAppinWhiteList(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 134
    :goto_0
    return v1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while checking 3g only app"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDontUseWifiPressed()Z
    .locals 3

    .prologue
    .line 201
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->isDontUseWifiPressed()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 204
    :goto_0
    return v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while checking isDontuseWifiPressed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIntelScanModeEnabled()Z
    .locals 3

    .prologue
    .line 287
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->isIntelScanModeEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 290
    :goto_0
    return v1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception in isIntelScanModeEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIntelWifiEnabled()Z
    .locals 3

    .prologue
    .line 191
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->getIntelligentWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 194
    :goto_0
    return v1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while checking for intelligent mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWifiConnected()Z
    .locals 3

    .prologue
    .line 155
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->isWifiConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 158
    :goto_0
    return v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while checking isWifiConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notifyDialogDisplayed(I)V
    .locals 3
    .parameter "dialogNum"

    .prologue
    .line 269
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->notifyDialogDisplayed(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception in notifyDialogDisplayed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetNeverTurnOnWifi()V
    .locals 3

    .prologue
    .line 234
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->resetNeverTurnOnWifi()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while resetNeverTurnOnWifi"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetTestStationID()V
    .locals 3

    .prologue
    .line 342
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->resetCurrentTestBaseStationID()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    .line 344
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while resetTestStationID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAppRunOverWiFiResult(IZ)V
    .locals 3
    .parameter "value"
    .parameter "isDontShowPopup"

    .prologue
    .line 218
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiOffloadManager;->setAppRunOverWiFiResult(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while setting AppRunOverWiFiResult"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDontuseWifiPressed(Z)V
    .locals 3
    .parameter "isPressed"

    .prologue
    .line 210
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->setDontuseWifiPressed(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while setting DontuseWifiPressed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setIntelScanMode(Z)Z
    .locals 3
    .parameter "intelMode"

    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->intelScanMode(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 185
    :goto_0
    return v1

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while setting intelligent mode"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNeverTurnOnWifi()V
    .locals 3

    .prologue
    .line 242
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->setNeverTurnOnWifi()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-void

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while setNeverTurnOnWifi"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTestCurrentBaseStationID(I)V
    .locals 3
    .parameter "baseStationID"

    .prologue
    .line 325
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->setCurrentTestBaseStationID(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_0
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while setTestCurrentBaseStationID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWiFiDialogStatus(I)V
    .locals 3
    .parameter "stationID"

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiOffloadManager;->updateDialogStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, re:Landroid/os/RemoteException;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while trying to set WiFiDialog sStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startDontUseWiFiPressedTimer()V
    .locals 3

    .prologue
    .line 226
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->startDontUseWiFiPressedTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :goto_0
    return-void

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while startDontUseWiFiPressedTimer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startWifiDataActivityTimer()V
    .locals 3

    .prologue
    .line 88
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->startDataActivityTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while startDataActivityTimer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopWifiDataActivityTimer()V
    .locals 3

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->stopDataActivityTimer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while stopWifiDataActivityTimer"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public tempBlockPopup(IZ)Z
    .locals 3
    .parameter "stationID"
    .parameter "enableBlock"

    .prologue
    .line 164
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiOffloadManager;->blockWifiPopup(IZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 167
    :goto_0
    return v1

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while blocking temp popup"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public tryToTurnOnWifi(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "packageName"
    .parameter "isWaitrequired"

    .prologue
    .line 58
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiOffloadManager;->tryToTurnOnWifi(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 61
    :goto_0
    return v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while trying to switch on Wi-Fi"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateNewBaseStations(Ljava/lang/String;I)V
    .locals 3
    .parameter "ssID"
    .parameter "stationID"

    .prologue
    .line 333
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiOffloadManager;->updateBaseStationIDs(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while updateNewBaseStations"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public wasWiFiOn()Z
    .locals 3

    .prologue
    .line 173
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiOffloadManager;->mService:Landroid/net/wifi/IWifiOffloadManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiOffloadManager;->wasWiFiReallyOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 176
    :goto_0
    return v1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiOffloadManager"

    const-string v2, "Exception while checking if wifi is on or off"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v1, 0x0

    goto :goto_0
.end method
