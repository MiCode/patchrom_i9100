.class public Landroid/sec/enterprise/LocationPolicy;
.super Ljava/lang/Object;
.source "LocationPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "LocationPolicy"

    sput-object v0, Landroid/sec/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

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
.method public isLocationProviderBlocked(Ljava/lang/String;)Z
    .locals 3
    .parameter "SProvider"

    .prologue
    .line 45
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->isLocationProviderBlocked(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 49
    :goto_0
    return v1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/LocationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isLocationProviderBlocked returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    const/4 v1, 0x0

    goto :goto_0
.end method
