.class public final enum Landroid/hardware/contextaware/ContextList;
.super Ljava/lang/Enum;
.source "ContextList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/contextaware/ContextList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/contextaware/ContextList;

.field public static final enum AGGREGATOR_LOCATION:Landroid/hardware/contextaware/ContextList;

.field public static final enum AGGREGATOR_MOVING:Landroid/hardware/contextaware/ContextList;

.field public static final enum ANDROID_RUNNER_RAW_GPS:Landroid/hardware/contextaware/ContextList;

.field public static final enum ANDROID_RUNNER_RAW_SENSOR:Landroid/hardware/contextaware/ContextList;

.field public static final enum NONE_CONTEXT:Landroid/hardware/contextaware/ContextList;

.field public static final enum SENSORHUB_PARSER_NONLIB_ORIENTATION:Landroid/hardware/contextaware/ContextList;

.field public static final enum SENSORHUB_PARSER_NOTI_POWER:Landroid/hardware/contextaware/ContextList;

.field public static final enum SENSORHUB_RUNNER_AUTO_ROTATION:Landroid/hardware/contextaware/ContextList;

.field public static final enum SENSORHUB_RUNNER_GESTURE_APPROACH:Landroid/hardware/contextaware/ContextList;

.field public static final enum SENSORHUB_RUNNER_MOTION:Landroid/hardware/contextaware/ContextList;

.field public static final enum SENSORHUB_RUNNER_MOVEMENT:Landroid/hardware/contextaware/ContextList;

.field public static final enum SENSORHUB_RUNNER_PDR:Landroid/hardware/contextaware/ContextList;

.field public static final enum SENSORHUB_RUNNER_PEDOMETER:Landroid/hardware/contextaware/ContextList;

.field public static final enum SENSORHUB_RUNNER_POWER_NOTI:Landroid/hardware/contextaware/ContextList;

.field public static final enum SENSORHUB_RUNNER_STEP_COUNT_ALERT:Landroid/hardware/contextaware/ContextList;


# instance fields
.field private code:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    new-instance v0, Landroid/hardware/contextaware/ContextList;

    const-string v1, "NONE_CONTEXT"

    const-string v2, "NONE"

    invoke-direct {v0, v1, v4, v2}, Landroid/hardware/contextaware/ContextList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList;->NONE_CONTEXT:Landroid/hardware/contextaware/ContextList;

    .line 29
    new-instance v0, Landroid/hardware/contextaware/ContextList;

    const-string v1, "AGGREGATOR_LOCATION"

    const-string v2, "LOCATION"

    invoke-direct {v0, v1, v5, v2}, Landroid/hardware/contextaware/ContextList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList;->AGGREGATOR_LOCATION:Landroid/hardware/contextaware/ContextList;

    .line 32
    new-instance v0, Landroid/hardware/contextaware/ContextList;

    const-string v1, "AGGREGATOR_MOVING"

    const-string v2, "MOVING"

    invoke-direct {v0, v1, v6, v2}, Landroid/hardware/contextaware/ContextList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList;->AGGREGATOR_MOVING:Landroid/hardware/contextaware/ContextList;

    .line 38
    new-instance v0, Landroid/hardware/contextaware/ContextList;

    const-string v1, "ANDROID_RUNNER_RAW_GPS"

    const-string v2, "RAW_GPS"

    invoke-direct {v0, v1, v7, v2}, Landroid/hardware/contextaware/ContextList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList;->ANDROID_RUNNER_RAW_GPS:Landroid/hardware/contextaware/ContextList;

    .line 41
    new-instance v0, Landroid/hardware/contextaware/ContextList;

    const-string v1, "ANDROID_RUNNER_RAW_SENSOR"

    const-string v2, "RAW_SENSOR"

    invoke-direct {v0, v1, v8, v2}, Landroid/hardware/contextaware/ContextList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList;->ANDROID_RUNNER_RAW_SENSOR:Landroid/hardware/contextaware/ContextList;

    .line 47
    new-instance v0, Landroid/hardware/contextaware/ContextList;

    const-string v1, "SENSORHUB_RUNNER_PDR"

    const/4 v2, 0x5

    const-string v3, "PDR"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_PDR:Landroid/hardware/contextaware/ContextList;

    .line 50
    new-instance v0, Landroid/hardware/contextaware/ContextList;

    const-string v1, "SENSORHUB_RUNNER_PEDOMETER"

    const/4 v2, 0x6

    const-string v3, "PEDOMETER"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_PEDOMETER:Landroid/hardware/contextaware/ContextList;

    .line 53
    new-instance v0, Landroid/hardware/contextaware/ContextList;

    const-string v1, "SENSORHUB_RUNNER_GESTURE_APPROACH"

    const/4 v2, 0x7

    const-string v3, "GESTURE_APPROACH"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_GESTURE_APPROACH:Landroid/hardware/contextaware/ContextList;

    .line 56
    new-instance v0, Landroid/hardware/contextaware/ContextList;

    const-string v1, "SENSORHUB_RUNNER_STEP_COUNT_ALERT"

    const/16 v2, 0x8

    const-string v3, "STEP_COUNT_ALERT"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_STEP_COUNT_ALERT:Landroid/hardware/contextaware/ContextList;

    .line 59
    new-instance v0, Landroid/hardware/contextaware/ContextList;

    const-string v1, "SENSORHUB_RUNNER_MOTION"

    const/16 v2, 0x9

    const-string v3, "MOTION"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_MOTION:Landroid/hardware/contextaware/ContextList;

    .line 62
    new-instance v0, Landroid/hardware/contextaware/ContextList;

    const-string v1, "SENSORHUB_RUNNER_MOVEMENT"

    const/16 v2, 0xa

    const-string v3, "MOVEMENT"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_MOVEMENT:Landroid/hardware/contextaware/ContextList;

    .line 65
    new-instance v0, Landroid/hardware/contextaware/ContextList;

    const-string v1, "SENSORHUB_RUNNER_AUTO_ROTATION"

    const/16 v2, 0xb

    const-string v3, "AUTO_ROTATION"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_AUTO_ROTATION:Landroid/hardware/contextaware/ContextList;

    .line 68
    new-instance v0, Landroid/hardware/contextaware/ContextList;

    const-string v1, "SENSORHUB_RUNNER_POWER_NOTI"

    const/16 v2, 0xc

    const-string v3, "POWER_NOTI"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_POWER_NOTI:Landroid/hardware/contextaware/ContextList;

    .line 74
    new-instance v0, Landroid/hardware/contextaware/ContextList;

    const-string v1, "SENSORHUB_PARSER_NONLIB_ORIENTATION"

    const/16 v2, 0xd

    const-string v3, "ORIENTATION_PARSER"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList;->SENSORHUB_PARSER_NONLIB_ORIENTATION:Landroid/hardware/contextaware/ContextList;

    .line 77
    new-instance v0, Landroid/hardware/contextaware/ContextList;

    const-string v1, "SENSORHUB_PARSER_NOTI_POWER"

    const/16 v2, 0xe

    const-string v3, "POWER_PARSER"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/ContextList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/ContextList;->SENSORHUB_PARSER_NOTI_POWER:Landroid/hardware/contextaware/ContextList;

    .line 20
    const/16 v0, 0xf

    new-array v0, v0, [Landroid/hardware/contextaware/ContextList;

    sget-object v1, Landroid/hardware/contextaware/ContextList;->NONE_CONTEXT:Landroid/hardware/contextaware/ContextList;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/contextaware/ContextList;->AGGREGATOR_LOCATION:Landroid/hardware/contextaware/ContextList;

    aput-object v1, v0, v5

    sget-object v1, Landroid/hardware/contextaware/ContextList;->AGGREGATOR_MOVING:Landroid/hardware/contextaware/ContextList;

    aput-object v1, v0, v6

    sget-object v1, Landroid/hardware/contextaware/ContextList;->ANDROID_RUNNER_RAW_GPS:Landroid/hardware/contextaware/ContextList;

    aput-object v1, v0, v7

    sget-object v1, Landroid/hardware/contextaware/ContextList;->ANDROID_RUNNER_RAW_SENSOR:Landroid/hardware/contextaware/ContextList;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_PDR:Landroid/hardware/contextaware/ContextList;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_PEDOMETER:Landroid/hardware/contextaware/ContextList;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_GESTURE_APPROACH:Landroid/hardware/contextaware/ContextList;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_STEP_COUNT_ALERT:Landroid/hardware/contextaware/ContextList;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_MOTION:Landroid/hardware/contextaware/ContextList;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_MOVEMENT:Landroid/hardware/contextaware/ContextList;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_AUTO_ROTATION:Landroid/hardware/contextaware/ContextList;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_POWER_NOTI:Landroid/hardware/contextaware/ContextList;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/hardware/contextaware/ContextList;->SENSORHUB_PARSER_NONLIB_ORIENTATION:Landroid/hardware/contextaware/ContextList;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/hardware/contextaware/ContextList;->SENSORHUB_PARSER_NOTI_POWER:Landroid/hardware/contextaware/ContextList;

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/contextaware/ContextList;->$VALUES:[Landroid/hardware/contextaware/ContextList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "code"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput-object p3, p0, Landroid/hardware/contextaware/ContextList;->code:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/ContextList;
    .locals 1
    .parameter "name"

    .prologue
    .line 20
    const-class v0, Landroid/hardware/contextaware/ContextList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/ContextList;

    return-object v0
.end method

.method public static values()[Landroid/hardware/contextaware/ContextList;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Landroid/hardware/contextaware/ContextList;->$VALUES:[Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v0}, [Landroid/hardware/contextaware/ContextList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/contextaware/ContextList;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/hardware/contextaware/ContextList;->code:Ljava/lang/String;

    return-object v0
.end method
