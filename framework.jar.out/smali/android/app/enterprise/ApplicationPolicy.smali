.class public Landroid/app/enterprise/ApplicationPolicy;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"


# static fields
.field public static final APPLICATION_INSTALLATION_MODE_ALLOW:I = 0x1

.field public static final APPLICATION_INSTALLATION_MODE_DISALLOW:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IApplicationPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "ApplicationPolicy"

    sput-object v0, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    .line 39
    return-void
.end method


# virtual methods
.method public addAppPackageNameToBlackList(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1606
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1608
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->addAppPackageNameToBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1613
    :goto_0
    return v1

    .line 1609
    :catch_0
    move-exception v0

    .line 1610
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1613
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addAppPackageNameToWhiteList(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1689
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1691
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->addAppPackageNameToWhiteList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1696
    :goto_0
    return v1

    .line 1692
    :catch_0
    move-exception v0

    .line 1693
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1696
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addAppPermissionToBlackList(Ljava/lang/String;)Z
    .locals 3
    .parameter "appPermission"

    .prologue
    .line 1248
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1250
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->addAppPermissionToBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1255
    :goto_0
    return v1

    .line 1251
    :catch_0
    move-exception v0

    .line 1252
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1255
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addAppSignatureToBlackList(Ljava/lang/String;)Z
    .locals 3
    .parameter "appSignature"

    .prologue
    .line 1352
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1354
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->addAppSignatureToBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1359
    :goto_0
    return v1

    .line 1355
    :catch_0
    move-exception v0

    .line 1356
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1359
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public changeApplicationIcon(Ljava/lang/String;[B)Z
    .locals 5
    .parameter "packageName"
    .parameter "imageData"

    .prologue
    const/4 v1, 0x0

    .line 1169
    sget-object v2, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeApplicationIcon:packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v2, :cond_0

    .line 1173
    if-eqz p2, :cond_1

    :try_start_0
    array-length v2, p2

    const/high16 v3, 0x10

    if-le v2, v3, :cond_1

    .line 1174
    sget-object v2, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeApplicationIcon: Icon size is too big :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_0
    :goto_0
    return v1

    .line 1178
    :cond_1
    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v2, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->changeApplicationIcon(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1179
    :catch_0
    move-exception v0

    .line 1180
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with application policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deleteManagedAppInfo(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkg"

    .prologue
    .line 635
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 637
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->deleteManagedAppInfo(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 642
    :goto_0
    return v1

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 642
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableAndroidBrowser()V
    .locals 2

    .prologue
    .line 1061
    const-string v0, "com.android.browser"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1062
    return-void
.end method

.method public disableAndroidMarket()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 909
    const-string v0, "com.android.vending"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 910
    const-string v0, "com.google.android.finsky"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 911
    return-void
.end method

.method public disableVoiceDialer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1089
    const-string v0, "com.android.voicedialer"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1090
    const-string v0, "com.vlingo.client.samsung"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1091
    return-void
.end method

.method public disableYouTube()V
    .locals 2

    .prologue
    .line 1033
    const-string v0, "com.google.android.youtube"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1034
    return-void
.end method

.method public enableAndroidBrowser()V
    .locals 2

    .prologue
    .line 1075
    const-string v0, "com.android.browser"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1076
    return-void
.end method

.method public enableAndroidMarket()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 927
    const-string v0, "com.android.vending"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 928
    const-string v0, "com.google.android.finsky"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 929
    return-void
.end method

.method public enableVoiceDialer()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1104
    const-string v0, "com.android.voicedialer"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1105
    const-string v0, "com.vlingo.client.samsung"

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1106
    return-void
.end method

.method public enableYouTube()V
    .locals 2

    .prologue
    .line 1047
    const-string v0, "com.google.android.youtube"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 1048
    return-void
.end method

.method public getAllAppLastUsage()[Landroid/app/enterprise/AppInfoLastUsage;
    .locals 3

    .prologue
    .line 1142
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1144
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAllAppLastUsage()[Landroid/app/enterprise/AppInfoLastUsage;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1149
    :goto_0
    return-object v1

    .line 1145
    :catch_0
    move-exception v0

    .line 1146
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1149
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppPackageNamesAllBlackLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1655
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1657
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppPackageNamesAllBlackLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1662
    :goto_0
    return-object v1

    .line 1658
    :catch_0
    move-exception v0

    .line 1659
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1662
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppPackageNamesAllWhiteLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1737
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1739
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppPackageNamesAllWhiteLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1744
    :goto_0
    return-object v1

    .line 1740
    :catch_0
    move-exception v0

    .line 1741
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1744
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppPermissionsAllBlackLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1323
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1325
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppPermissionsAllBlackLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1330
    :goto_0
    return-object v1

    .line 1326
    :catch_0
    move-exception v0

    .line 1327
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1330
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppPermissionsBlackList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1298
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1300
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppPermissionsBlackList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1305
    :goto_0
    return-object v1

    .line 1301
    :catch_0
    move-exception v0

    .line 1302
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1305
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppSignaturesAllBlackLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1422
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1424
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppSignaturesAllBlackLists()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1429
    :goto_0
    return-object v1

    .line 1425
    :catch_0
    move-exception v0

    .line 1426
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1429
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppSignaturesBlackList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1399
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1401
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppSignatureBlackList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1406
    :goto_0
    return-object v1

    .line 1402
    :catch_0
    move-exception v0

    .line 1403
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1406
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationCacheSize(Ljava/lang/String;)J
    .locals 3
    .parameter "packageName"

    .prologue
    .line 842
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 844
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationCacheSize(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 849
    :goto_0
    return-wide v1

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 849
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getApplicationCodeSize(Ljava/lang/String;)J
    .locals 3
    .parameter "packageName"

    .prologue
    .line 806
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 808
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationCodeSize(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 813
    :goto_0
    return-wide v1

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 813
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getApplicationCpuUsage(Ljava/lang/String;)J
    .locals 3
    .parameter "packageName"

    .prologue
    .line 886
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 888
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationCpuUsage(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 893
    :goto_0
    return-wide v1

    .line 889
    :catch_0
    move-exception v0

    .line 890
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 893
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getApplicationDataSize(Ljava/lang/String;)J
    .locals 3
    .parameter "packageName"

    .prologue
    .line 824
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 826
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationDataSize(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 831
    :goto_0
    return-wide v1

    .line 827
    :catch_0
    move-exception v0

    .line 828
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 831
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getApplicationIconFromDb(Ljava/lang/String;)[B
    .locals 4
    .parameter "packageName"

    .prologue
    .line 1188
    const/4 v1, 0x0

    .line 1189
    .local v1, imageData:[B
    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v2, :cond_0

    .line 1191
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v2, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationIconFromDb(Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    move-object v2, v1

    .line 1199
    :goto_0
    return-object v2

    .line 1192
    :catch_0
    move-exception v0

    .line 1193
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getCustomApplicationIcon: Failed talking with Application control policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1196
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getApplicationInstallationEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkg"

    .prologue
    .line 655
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 657
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationInstallationEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 662
    :goto_0
    return v1

    .line 658
    :catch_0
    move-exception v0

    .line 659
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 662
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationInstallationMode()I
    .locals 3

    .prologue
    .line 414
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 416
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAppInstallationMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 422
    :goto_0
    return v1

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 422
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getApplicationMemoryUsage(Ljava/lang/String;)J
    .locals 3
    .parameter "packageName"

    .prologue
    .line 864
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 866
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationMemoryUsage(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 871
    :goto_0
    return-wide v1

    .line 867
    :catch_0
    move-exception v0

    .line 868
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 871
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 748
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 750
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 755
    :goto_0
    return-object v1

    .line 751
    :catch_0
    move-exception v0

    .line 752
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 755
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationNetworkStats()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/NetworkStats;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1215
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1217
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getNetworkStats()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1222
    :goto_0
    return-object v1

    .line 1218
    :catch_0
    move-exception v0

    .line 1219
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1222
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 603
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 605
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 610
    :goto_0
    return v1

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 610
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationStateList(Z)[Ljava/lang/String;
    .locals 3
    .parameter "state"

    .prologue
    .line 1525
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1527
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationStateList(Z)[Ljava/lang/String;
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
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1532
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationTotalSize(Ljava/lang/String;)J
    .locals 3
    .parameter "packageName"

    .prologue
    .line 788
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 790
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationTotalSize(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 795
    :goto_0
    return-wide v1

    .line 791
    :catch_0
    move-exception v0

    .line 792
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 795
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkg"

    .prologue
    .line 706
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 708
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 713
    :goto_0
    return v1

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 713
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 769
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 771
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 776
    :goto_0
    return-object v1

    .line 772
    :catch_0
    move-exception v0

    .line 773
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 776
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAvgNoAppUsagePerMonth()[Landroid/app/enterprise/AppInfoLastUsage;
    .locals 3

    .prologue
    .line 1119
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1121
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getAvgNoAppUsagePerMonth()[Landroid/app/enterprise/AppInfoLastUsage;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1126
    :goto_0
    return-object v1

    .line 1122
    :catch_0
    move-exception v0

    .line 1123
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1126
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledApplicationsIDList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 727
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 729
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getInstalledApplicationsIDList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 734
    :goto_0
    return-object v1

    .line 730
    :catch_0
    move-exception v0

    .line 731
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 734
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledManagedApplicationsList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 332
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 334
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getInstalledManagedApplicationsList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 339
    :goto_0
    return-object v1

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 339
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getManagedApplicationStatus(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    .locals 3
    .parameter "pkg"

    .prologue
    .line 364
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 366
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationsList(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 371
    :goto_0
    return-object v1

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 371
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMostCpuUsageApps(IZ)Ljava/util/List;
    .locals 3
    .parameter "appCount"
    .parameter "showAllProcess"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 951
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 953
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->getTopNCPUUsageAppFromTopCommand(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 959
    :goto_0
    return-object v1

    .line 955
    :catch_0
    move-exception v0

    .line 956
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 959
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMostDataUsageApps(I)Ljava/util/List;
    .locals 3
    .parameter "appCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1012
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1014
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getTopNDataUsageApp(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1019
    :goto_0
    return-object v1

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1019
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMostMemoryUsageApps(IZ)Ljava/util/List;
    .locals 3
    .parameter "appCount"
    .parameter "showAllProcess"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 984
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 986
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->getTopNMemoryUsageApp(IZ)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 991
    :goto_0
    return-object v1

    .line 987
    :catch_0
    move-exception v0

    .line 988
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 991
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public installApplication(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "apkFilePath"
    .parameter "installOnSDCard"

    .prologue
    .line 165
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 167
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->installApplication(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 173
    :goto_0
    return v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isApplicationInstallationEnabled(Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 3
    .parameter "aPacakageName"
    .parameter "aPackageURI"

    .prologue
    .line 684
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 686
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationInstallationEnabled(Ljava/lang/String;Landroid/net/Uri;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 692
    :goto_0
    return v1

    .line 688
    :catch_0
    move-exception v0

    .line 689
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 692
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isApplicationInstalled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 110
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 112
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 117
    :goto_0
    return v1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isApplicationRunning(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 135
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 137
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationRunning(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 142
    :goto_0
    return v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIntentDisabled(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 1570
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1572
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isIntentDisabled(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1577
    :goto_0
    return v1

    .line 1573
    :catch_0
    move-exception v0

    .line 1574
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1577
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAppPackageNameFromBlackList(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1632
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1634
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeAppPackageNameFromBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1639
    :goto_0
    return v1

    .line 1635
    :catch_0
    move-exception v0

    .line 1636
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1639
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAppPackageNameFromWhiteList(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1714
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1716
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeAppPackageNameFromWhiteList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1721
    :goto_0
    return v1

    .line 1717
    :catch_0
    move-exception v0

    .line 1718
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1721
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAppPermissionFromBlackList(Ljava/lang/String;)Z
    .locals 3
    .parameter "appPermission"

    .prologue
    .line 1276
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1278
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeAppPermissionFromBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1283
    :goto_0
    return v1

    .line 1279
    :catch_0
    move-exception v0

    .line 1280
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1283
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAppSignatureFromBlackList(Ljava/lang/String;)Z
    .locals 3
    .parameter "appSignature"

    .prologue
    .line 1378
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1380
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeAppSignatureFromBlackList(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1385
    :goto_0
    return v1

    .line 1381
    :catch_0
    move-exception v0

    .line 1382
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1385
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 472
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 474
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "packageName"
    .parameter "disableAppInstallation"

    .prologue
    .line 442
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 444
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationInstallationEnabled(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 500
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 502
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationInstallationMode(I)Z
    .locals 3
    .parameter "installationMode"

    .prologue
    .line 395
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 397
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->setAppInstallationMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 402
    :goto_0
    return v1

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApplicationState(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "packageName"
    .parameter "enableApp"

    .prologue
    .line 252
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 254
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 259
    :goto_0
    return v1

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 3
    .parameter "pkgList"
    .parameter "state"

    .prologue
    .line 1553
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1555
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1560
    :goto_0
    return-object v1

    .line 1556
    :catch_0
    move-exception v0

    .line 1557
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1560
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 556
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 558
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "packageName"
    .parameter "disableAppUninstallation"

    .prologue
    .line 526
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 528
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationUninstallationEnabled(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 584
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 586
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 589
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAsManagedApp(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 1452
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1454
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->setAsManagedApp(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1459
    :goto_0
    return v1

    .line 1455
    :catch_0
    move-exception v0

    .line 1456
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1459
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDisableApplication(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 280
    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v2, :cond_0

    .line 282
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 287
    :cond_0
    :goto_0
    return v1

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with application policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setEnableApplication(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 306
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 308
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 313
    :goto_0
    return v1

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"
    .parameter "className"

    .prologue
    .line 1499
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1501
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->startApp(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1506
    :goto_0
    return v1

    .line 1502
    :catch_0
    move-exception v0

    .line 1503
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1506
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stopApp(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 1474
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1476
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->stopApp(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1481
    :goto_0
    return v1

    .line 1477
    :catch_0
    move-exception v0

    .line 1478
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1481
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public uninstallApplication(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "packageName"
    .parameter "keepDataAndCache"

    .prologue
    .line 221
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 223
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->uninstallApplication(Ljava/lang/String;Z)Z
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
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 229
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public uninstallApplications(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 60
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeManagedApplications(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 65
    :goto_0
    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateApplication(Ljava/lang/String;)Z
    .locals 4
    .parameter "apkFilePath"

    .prologue
    const/4 v1, 0x0

    .line 191
    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v2, :cond_0

    .line 193
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/app/enterprise/IApplicationPolicy;->installApplication(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 198
    :cond_0
    :goto_0
    return v1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with application policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public wipeApplicationData(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 84
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 86
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->wipeApplicationData(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 91
    :goto_0
    return v1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
