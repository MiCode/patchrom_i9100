.class public final enum Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;
.super Ljava/lang/Enum;
.source "EnterpriseDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/EnterpriseDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnterpriseKeyVersion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;

.field public static final enum ENTERPRISE_KEY_VERSION_1:Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 626
    new-instance v0, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;

    const-string v1, "ENTERPRISE_KEY_VERSION_1"

    invoke-direct {v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;->ENTERPRISE_KEY_VERSION_1:Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;

    .line 625
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;

    sget-object v1, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;->ENTERPRISE_KEY_VERSION_1:Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;

    aput-object v1, v0, v2

    sput-object v0, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;->$VALUES:[Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;

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
    .line 625
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;
    .locals 1
    .parameter "name"

    .prologue
    .line 625
    const-class v0, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;

    return-object v0
.end method

.method public static values()[Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;
    .locals 1

    .prologue
    .line 625
    sget-object v0, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;->$VALUES:[Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;

    invoke-virtual {v0}, [Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseKeyVersion;

    return-object v0
.end method
