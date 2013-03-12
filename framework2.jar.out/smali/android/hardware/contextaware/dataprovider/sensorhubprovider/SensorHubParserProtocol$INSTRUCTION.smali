.class public final enum Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;
.super Ljava/lang/Enum;
.source "SensorHubParserProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "INSTRUCTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

.field public static final enum INST_LIBRARY:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

.field public static final enum INST_NOTI:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;


# instance fields
.field protected value:B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 28
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    const-string v1, "INST_LIBRARY"

    invoke-direct {v0, v1, v3, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->INST_LIBRARY:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    .line 31
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    const-string v1, "INST_NOTI"

    invoke-direct {v0, v1, v2, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->INST_NOTI:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    .line 25
    new-array v0, v4, [Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->INST_LIBRARY:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->INST_NOTI:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    aput-object v1, v0, v2

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->$VALUES:[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-byte p3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->value:B

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;
    .locals 1
    .parameter "name"

    .prologue
    .line 25
    const-class v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    return-object v0
.end method

.method public static values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->$VALUES:[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    invoke-virtual {v0}, [Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$INSTRUCTION;

    return-object v0
.end method
