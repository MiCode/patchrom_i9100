.class public Landroid/sec/enterprise/DateTimePolicy;
.super Ljava/lang/Object;
.source "DateTimePolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "DateTimePolicy"

    sput-object v0, Landroid/sec/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDateTimeChangeEnabled()Z
    .locals 3

    .prologue
    .line 44
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->isDateTimeChangeEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 48
    :goto_0
    return v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Landroid/sec/enterprise/DateTimePolicy;->TAG:Ljava/lang/String;

    const-string v2, "PXY-isDateTimeChangeEnabled returning default value"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const/4 v1, 0x1

    goto :goto_0
.end method
