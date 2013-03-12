.class public Landroid/sec/enterprise/BrowserPolicy;
.super Ljava/lang/Object;
.source "BrowserPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/BrowserPolicy$BrowserSetting;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "BrowserPolicy"

    sput-object v0, Landroid/sec/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method


# virtual methods
.method public getAutoFillSetting()Z
    .locals 3

    .prologue
    .line 74
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/sec/enterprise/IEDMProxy;->getBrowserSettingStatus(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 79
    :goto_0
    return v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-getAutoFillSetting returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCookiesSetting()Z
    .locals 3

    .prologue
    .line 59
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/sec/enterprise/IEDMProxy;->getBrowserSettingStatus(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 64
    :goto_0
    return v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-getCookiesSetting returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getJavaScriptSetting()Z
    .locals 3

    .prologue
    .line 89
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Landroid/sec/enterprise/IEDMProxy;->getBrowserSettingStatus(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 94
    :goto_0
    return v1

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-getJavaScriptSetting returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getPopupsSetting()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 104
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/sec/enterprise/IEDMProxy;->getBrowserSettingStatus(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 109
    :goto_0
    return v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/BrowserPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getPopupsSetting returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
