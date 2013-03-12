.class public final enum Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
.super Ljava/lang/Enum;
.source "SensorHubParserProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DATA_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

.field public static final enum LIBRARY_DATATYPE_AUTO_ROTATION:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

.field public static final enum LIBRARY_DATATYPE_BLE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

.field public static final enum LIBRARY_DATATYPE_GESTURE_APPROACH:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

.field public static final enum LIBRARY_DATATYPE_MOTION:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

.field public static final enum LIBRARY_DATATYPE_MOVEMENT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

.field public static final enum LIBRARY_DATATYPE_PDR:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

.field public static final enum LIBRARY_DATATYPE_PEDOMETER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

.field public static final enum LIBRARY_DATATYPE_STEP_COUNT_ALERT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

.field public static final enum NONLIBRARY_DATATYPE_ACCURACY:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

.field public static final enum NONLIBRARY_DATATYPE_ORIENTATION:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

.field public static final enum NONLIBRARY_DATATYPE_PDRREFPOINT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;


# instance fields
.field protected value:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 81
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    const-string v1, "LIBRARY_DATATYPE_PEDOMETER"

    invoke-direct {v0, v1, v5, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_PEDOMETER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    .line 84
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    const-string v1, "LIBRARY_DATATYPE_PDR"

    invoke-direct {v0, v1, v4, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_PDR:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    .line 87
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    const-string v1, "LIBRARY_DATATYPE_MOTION"

    invoke-direct {v0, v1, v6, v8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_MOTION:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    .line 90
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    const-string v1, "LIBRARY_DATATYPE_GESTURE_APPROACH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_GESTURE_APPROACH:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    .line 93
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    const-string v1, "LIBRARY_DATATYPE_STEP_COUNT_ALERT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_STEP_COUNT_ALERT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    .line 96
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    const-string v1, "LIBRARY_DATATYPE_AUTO_ROTATION"

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_AUTO_ROTATION:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    .line 99
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    const-string v1, "LIBRARY_DATATYPE_MOVEMENT"

    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_MOVEMENT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    .line 102
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    const-string v1, "LIBRARY_DATATYPE_BLE"

    const/4 v2, 0x7

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_BLE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    .line 105
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    const-string v1, "NONLIBRARY_DATATYPE_ORIENTATION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->NONLIBRARY_DATATYPE_ORIENTATION:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    .line 108
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    const-string v1, "NONLIBRARY_DATATYPE_PDRREFPOINT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->NONLIBRARY_DATATYPE_PDRREFPOINT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    .line 111
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    const-string v1, "NONLIBRARY_DATATYPE_ACCURACY"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2, v7}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->NONLIBRARY_DATATYPE_ACCURACY:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    .line 78
    const/16 v0, 0xb

    new-array v0, v0, [Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_PEDOMETER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_PDR:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_MOTION:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_GESTURE_APPROACH:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_STEP_COUNT_ALERT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_AUTO_ROTATION:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_MOVEMENT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_BLE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->NONLIBRARY_DATATYPE_ORIENTATION:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->NONLIBRARY_DATATYPE_PDRREFPOINT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->NONLIBRARY_DATATYPE_ACCURACY:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->$VALUES:[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

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
    .line 122
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 123
    iput-byte p3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->value:B

    .line 124
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
    .locals 1
    .parameter "name"

    .prologue
    .line 78
    const-class v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    return-object v0
.end method

.method public static values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->$VALUES:[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v0}, [Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    return-object v0
.end method
