.class public Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ApplicationPolicy"
.end annotation


# instance fields
.field private final mService:Landroid/app/enterprise/IApplicationPolicy;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 1
    .parameter

    .prologue
    .line 1803
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1804
    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    .line 1806
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1799
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public deleteManagedAppInfo(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkg"

    .prologue
    .line 2181
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2183
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->deleteManagedAppInfo(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2188
    :goto_0
    return v1

    .line 2184
    :catch_0
    move-exception v0

    .line 2185
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2188
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableAndroidMarket()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2289
    const-string v0, "com.android.vending"

    invoke-virtual {p0, v0, v1}, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 2290
    const-string v0, "com.google.android.finsky"

    invoke-virtual {p0, v0, v1}, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 2291
    return-void
.end method

.method public enableAndroidMarket()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2297
    const-string v0, "com.android.vending"

    invoke-virtual {p0, v0, v1}, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 2298
    const-string v0, "com.google.android.finsky"

    invoke-virtual {p0, v0, v1}, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    .line 2299
    return-void
.end method

.method public getApplicationInstallationEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkg"

    .prologue
    .line 2201
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2203
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationInstallationEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2208
    :goto_0
    return v1

    .line 2204
    :catch_0
    move-exception v0

    .line 2205
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2208
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2256
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2258
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2263
    :goto_0
    return-object v1

    .line 2259
    :catch_0
    move-exception v0

    .line 2260
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2263
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2162
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2164
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2169
    :goto_0
    return v1

    .line 2165
    :catch_0
    move-exception v0

    .line 2166
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2169
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkg"

    .prologue
    .line 2221
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2223
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2228
    :goto_0
    return v1

    .line 2224
    :catch_0
    move-exception v0

    .line 2225
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2228
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2274
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2276
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2281
    :goto_0
    return-object v1

    .line 2277
    :catch_0
    move-exception v0

    .line 2278
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2281
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledApplicationsIDList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 2238
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2240
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getInstalledApplicationsIDList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2245
    :goto_0
    return-object v1

    .line 2241
    :catch_0
    move-exception v0

    .line 2242
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2245
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledManagedApplicationsList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 2006
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2008
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IApplicationPolicy;->getInstalledManagedApplicationsList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2013
    :goto_0
    return-object v1

    .line 2009
    :catch_0
    move-exception v0

    .line 2010
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2013
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getManagedApplicationStatus(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    .locals 3
    .parameter "pkg"

    .prologue
    .line 2028
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2030
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->getApplicationsList(Ljava/lang/String;)[Landroid/app/enterprise/ManagedAppInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2035
    :goto_0
    return-object v1

    .line 2031
    :catch_0
    move-exception v0

    .line 2032
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2035
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
    .line 1892
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1894
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->installApplication(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1899
    :goto_0
    return v1

    .line 1895
    :catch_0
    move-exception v0

    .line 1896
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1899
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isApplicationInstalled(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 1852
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1854
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationInstalled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1859
    :goto_0
    return v1

    .line 1855
    :catch_0
    move-exception v0

    .line 1856
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1859
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isApplicationRunning(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 1870
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1872
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->isApplicationRunning(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1877
    :goto_0
    return v1

    .line 1873
    :catch_0
    move-exception v0

    .line 1874
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1877
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2068
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2070
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2075
    :cond_0
    :goto_0
    return-void

    .line 2071
    :catch_0
    move-exception v0

    .line 2072
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "packageName"
    .parameter "disableAppInstallation"

    .prologue
    .line 2051
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2053
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2058
    :cond_0
    :goto_0
    return-void

    .line 2054
    :catch_0
    move-exception v0

    .line 2055
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationInstallationEnabled(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2086
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2088
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2093
    :cond_0
    :goto_0
    return-void

    .line 2089
    :catch_0
    move-exception v0

    .line 2090
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationState(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "packageName"
    .parameter "enableApp"

    .prologue
    .line 1952
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1954
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1959
    :goto_0
    return v1

    .line 1955
    :catch_0
    move-exception v0

    .line 1956
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1959
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2126
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2128
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2133
    :cond_0
    :goto_0
    return-void

    .line 2129
    :catch_0
    move-exception v0

    .line 2130
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    .locals 3
    .parameter "packageName"
    .parameter "disableAppUninstallation"

    .prologue
    .line 2108
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2110
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2116
    :cond_0
    :goto_0
    return-void

    .line 2112
    :catch_0
    move-exception v0

    .line 2113
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setApplicationUninstallationEnabled(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2144
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 2146
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2151
    :cond_0
    :goto_0
    return-void

    .line 2147
    :catch_0
    move-exception v0

    .line 2148
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDisableApplication(Ljava/lang/String;)Z
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 1970
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v2, :cond_0

    .line 1972
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1977
    :cond_0
    :goto_0
    return v1

    .line 1973
    :catch_0
    move-exception v0

    .line 1974
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed talking with application policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setEnableApplication(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1988
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1990
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1995
    :goto_0
    return v1

    .line 1991
    :catch_0
    move-exception v0

    .line 1992
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1995
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
    .line 1931
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1933
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IApplicationPolicy;->uninstallApplication(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1938
    :goto_0
    return v1

    .line 1934
    :catch_0
    move-exception v0

    .line 1935
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1938
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
    .line 1816
    .local p1, packageList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1818
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->removeManagedApplications(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1823
    :goto_0
    return-object v1

    .line 1819
    :catch_0
    move-exception v0

    .line 1820
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1823
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

    .line 1910
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v2, :cond_0

    .line 1912
    :try_start_0
    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/app/enterprise/IApplicationPolicy;->installApplication(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1917
    :cond_0
    :goto_0
    return v1

    .line 1913
    :catch_0
    move-exception v0

    .line 1914
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed talking with application policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public wipeApplicationData(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 1834
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    if-eqz v1, :cond_0

    .line 1836
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ApplicationPolicy;->mService:Landroid/app/enterprise/IApplicationPolicy;

    invoke-interface {v1, p1}, Landroid/app/enterprise/IApplicationPolicy;->wipeApplicationData(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1841
    :goto_0
    return v1

    .line 1837
    :catch_0
    move-exception v0

    .line 1838
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1841
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
