.class public Landroid/app/enterprise/BrowserPolicy;
.super Ljava/lang/Object;
.source "BrowserPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mService:Landroid/app/enterprise/IBrowserPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string v0, "BrowserPolicy"

    sput-object v0, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "browser_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IBrowserPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IBrowserPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    .line 21
    return-void
.end method


# virtual methods
.method public getAutoFillSetting()Z
    .locals 3

    .prologue
    .line 132
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    .line 134
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/app/enterprise/IBrowserPolicy;->getBrowserSettingStatus(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 140
    :goto_0
    return v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCookiesSetting()Z
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    .line 94
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/app/enterprise/IBrowserPolicy;->getBrowserSettingStatus(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 100
    :goto_0
    return v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getForceFraudWarningSetting()Z
    .locals 3

    .prologue
    .line 172
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    .line 174
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/app/enterprise/IBrowserPolicy;->getBrowserSettingStatus(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 180
    :goto_0
    return v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getJavaScriptSetting()Z
    .locals 3

    .prologue
    .line 212
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    .line 214
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Landroid/app/enterprise/IBrowserPolicy;->getBrowserSettingStatus(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 220
    :goto_0
    return v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 220
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getPopupsSetting()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 52
    iget-object v2, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v2, :cond_0

    .line 54
    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/app/enterprise/IBrowserPolicy;->getBrowserSettingStatus(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 60
    :cond_0
    :goto_0
    return v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Landroid/os/RemoteException;
    sget-object v2, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with application policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAutoFillSetting(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 115
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    .line 117
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/4 v2, 0x4

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IBrowserPolicy;->setBrowserSettingStatus(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 123
    :goto_0
    return v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCookiesSetting(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 75
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    .line 77
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/4 v2, 0x2

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IBrowserPolicy;->setBrowserSettingStatus(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 83
    :goto_0
    return v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setForceFraudWarningSetting(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 155
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    .line 157
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/16 v2, 0x8

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IBrowserPolicy;->setBrowserSettingStatus(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 163
    :goto_0
    return v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setJavaScriptSetting(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 195
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    .line 197
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/16 v2, 0x10

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IBrowserPolicy;->setBrowserSettingStatus(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 203
    :goto_0
    return v1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 203
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPopupsSetting(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 35
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    if-eqz v1, :cond_0

    .line 37
    :try_start_0
    iget-object v1, p0, Landroid/app/enterprise/BrowserPolicy;->mService:Landroid/app/enterprise/IBrowserPolicy;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/app/enterprise/IBrowserPolicy;->setBrowserSettingStatus(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 43
    :goto_0
    return v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, e:Landroid/os/RemoteException;
    sget-object v1, Landroid/app/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
