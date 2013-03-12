.class public Landroid/sec/enterprise/FirewallPolicy;
.super Ljava/lang/Object;
.source "FirewallPolicy.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "FirewallPolicy"

    sput-object v0, Landroid/sec/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isUrlBlocked(Ljava/lang/String;)Z
    .locals 4
    .parameter "url"

    .prologue
    .line 39
    const/4 v1, 0x0

    .line 42
    .local v1, ret:Z
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/sec/enterprise/IEDMProxy;->isUrlBlocked(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 46
    :goto_0
    return v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Landroid/sec/enterprise/FirewallPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Exception..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
