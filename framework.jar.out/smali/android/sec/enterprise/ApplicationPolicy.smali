.class public Landroid/sec/enterprise/ApplicationPolicy;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"


# static fields
.field public static final NOTIFICATION_MODE_BLOCK_ALL:I = 0x2

.field public static final NOTIFICATION_MODE_BLOCK_TEXT:I = 0x3

.field public static final NOTIFICATION_MODE_BLOCK_TEXT_AND_SOUND:I = 0x4

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "ApplicationPolicy"

    sput-object v0, Landroid/sec/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationIconFromDb(Ljava/lang/String;)[B
    .locals 4
    .parameter "packageName"

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 79
    .local v1, imageData:[B
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/enterprise/IEDMProxy;->getApplicationIconFromDb(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 83
    :goto_0
    return-object v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "PXY-getApplicationIconFromDb returning default value"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getApplicationNotificationMode()I
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationNotificationMode(Z)I

    move-result v0

    return v0
.end method

.method public getApplicationNotificationMode(Z)I
    .locals 3
    .parameter "allAdmins"

    .prologue
    .line 154
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->getApplicationNotificationMode(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 158
    :goto_0
    return v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-getApplicationNotificationMode returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getBackupData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 189
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getBackupData()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 193
    :goto_0
    return-object v1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-getBackupData returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isApplicationForceStopDisabled(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "packageName"
    .parameter "showMsg"

    .prologue
    .line 169
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/sec/enterprise/IEDMProxy;->isApplicationForceStopDisabled(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 173
    :goto_0
    return v1

    .line 170
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isApplicationForceStopDisabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIntentDisabled(Landroid/content/Intent;)Z
    .locals 3
    .parameter "intent"

    .prologue
    .line 94
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isIntentDisabled(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 98
    :goto_0
    return v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isIntentDisabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isStatusBarNotificationAllowed(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 111
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isStatusBarNotificationAllowed(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 115
    :goto_0
    return v1

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isStatusBarNotificationAllowed returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setBackupData(Ljava/util/Map;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;)Z"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;[B>;"
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->setBackupData(Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 183
    :goto_0
    return v1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-setBackupData returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v1, 0x0

    goto :goto_0
.end method
