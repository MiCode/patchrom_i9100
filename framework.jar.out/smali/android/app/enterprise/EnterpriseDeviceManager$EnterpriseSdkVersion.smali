.class public final enum Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;
.super Ljava/lang/Enum;
.source "EnterpriseDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/EnterpriseDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnterpriseSdkVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

.field public static final enum ENTERPRISE_SDK_VERSION_2:Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

.field public static final enum ENTERPRISE_SDK_VERSION_2_1:Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 640
    new-instance v0, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    const-string v1, "ENTERPRISE_SDK_VERSION_2"

    invoke-direct {v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_2:Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    new-instance v0, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    const-string v1, "ENTERPRISE_SDK_VERSION_2_1"

    invoke-direct {v0, v1, v3}, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_2_1:Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    .line 639
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_2:Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    aput-object v1, v0, v2

    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_2_1:Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    aput-object v1, v0, v3

    sput-object v0, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;->$VALUES:[Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 639
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;
    .locals 1
    .parameter "name"

    .prologue
    .line 639
    const-class v0, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    return-object v0
.end method

.method public static values()[Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;
    .locals 1

    .prologue
    .line 639
    sget-object v0, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;->$VALUES:[Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v0}, [Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    return-object v0
.end method
