.class public Landroid/sec/enterprise/DeviceInventory;
.super Ljava/lang/Object;
.source "DeviceInventory.java"


# static fields
.field public static final DEVICE_INFO_DROPPED_CALL:Ljava/lang/String; = "dropped"

.field public static final DEVICE_INFO_MISSED_CALL:Ljava/lang/String; = "missed"

.field public static final DEVICE_INFO_SUCCESS_CALL:Ljava/lang/String; = "success"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "DeviceInfo"

    sput-object v0, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallsCount(Ljava/lang/String;)V
    .locals 3
    .parameter "callType"

    .prologue
    .line 43
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->addCallsCount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "PXY-addCallsCount returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isCallingCaptureEnabled()Z
    .locals 3

    .prologue
    .line 56
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isCallingCaptureEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 60
    :goto_0
    return v1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isCallingCaptureEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSMSCaptureEnabled()Z
    .locals 3

    .prologue
    .line 95
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isSMSCaptureEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 99
    :goto_0
    return v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isSMSCaptureEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7
    .parameter "address"
    .parameter "timeStamp"
    .parameter "duration"
    .parameter "status"
    .parameter "isIncoming"

    .prologue
    .line 79
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/sec/enterprise/IEDMProxy;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    const/4 v0, 0x1

    .line 85
    :goto_0
    return v0

    .line 82
    :catch_0
    move-exception v6

    .line 83
    .local v6, e:Ljava/lang/Exception;
    sget-object v0, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v1, "PXY-storeCalling returning default value"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .parameter "address"
    .parameter "timeStamp"
    .parameter "message"
    .parameter "isInbound"

    .prologue
    .line 114
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/sec/enterprise/IEDMProxy;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/DeviceInventory;->TAG:Ljava/lang/String;

    const-string v2, "PXY-storeSMS returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
