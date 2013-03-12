.class public final enum Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;
.super Ljava/lang/Enum;
.source "SensorHubParserProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LIB_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

.field public static final enum TYPE_LIBRARY:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

.field public static final enum TYPE_NONLIBRARY:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

.field public static final enum TYPE_NOTI_POWER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;


# instance fields
.field protected value:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 53
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    const-string v1, "TYPE_LIBRARY"

    invoke-direct {v0, v1, v4, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_LIBRARY:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    .line 56
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    const-string v1, "TYPE_NONLIBRARY"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_NONLIBRARY:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    .line 59
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    const-string v1, "TYPE_NOTI_POWER"

    invoke-direct {v0, v1, v3, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_NOTI_POWER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_LIBRARY:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_NONLIBRARY:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_NOTI_POWER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->$VALUES:[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput-byte p3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->value:B

    .line 72
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;
    .locals 1
    .parameter "name"

    .prologue
    .line 50
    const-class v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    return-object v0
.end method

.method public static values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->$VALUES:[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    invoke-virtual {v0}, [Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    return-object v0
.end method
