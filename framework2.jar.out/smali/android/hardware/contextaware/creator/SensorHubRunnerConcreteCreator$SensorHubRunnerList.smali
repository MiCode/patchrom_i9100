.class abstract enum Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;
.super Ljava/lang/Enum;
.source "SensorHubRunnerConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "SensorHubRunnerList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

.field public static final enum AUTO_ROTATION:Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

.field public static final enum GESTURE_APPROACH:Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

.field public static final enum MOTION:Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

.field public static final enum MOVEMENT:Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

.field public static final enum PDR:Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

.field public static final enum PEDOMETER:Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

.field public static final enum POWER_NOTI:Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

.field public static final enum STEP_COUNT_ALERT:Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 60
    new-instance v0, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList$1;

    const-string v1, "PDR"

    sget-object v2, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_PDR:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->PDR:Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    .line 76
    new-instance v0, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList$2;

    const-string v1, "PEDOMETER"

    sget-object v2, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_PEDOMETER:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->PEDOMETER:Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    .line 93
    new-instance v0, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList$3;

    const-string v1, "GESTURE_APPROACH"

    sget-object v2, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_GESTURE_APPROACH:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->GESTURE_APPROACH:Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    .line 112
    new-instance v0, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList$4;

    const-string v1, "STEP_COUNT_ALERT"

    sget-object v2, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_STEP_COUNT_ALERT:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->STEP_COUNT_ALERT:Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    .line 131
    new-instance v0, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList$5;

    const-string v1, "MOTION"

    sget-object v2, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_MOTION:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->MOTION:Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    .line 148
    new-instance v0, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList$6;

    const-string v1, "MOVEMENT"

    const/4 v2, 0x5

    sget-object v3, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_MOVEMENT:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v3}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList$6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->MOVEMENT:Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    .line 165
    new-instance v0, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList$7;

    const-string v1, "AUTO_ROTATION"

    const/4 v2, 0x6

    sget-object v3, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_AUTO_ROTATION:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v3}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList$7;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->AUTO_ROTATION:Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    .line 182
    new-instance v0, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList$8;

    const-string v1, "POWER_NOTI"

    const/4 v2, 0x7

    sget-object v3, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_POWER_NOTI:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v3}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList$8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->POWER_NOTI:Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    .line 57
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    sget-object v1, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->PDR:Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    aput-object v1, v0, v4

    sget-object v1, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->PEDOMETER:Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    aput-object v1, v0, v5

    sget-object v1, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->GESTURE_APPROACH:Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    aput-object v1, v0, v6

    sget-object v1, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->STEP_COUNT_ALERT:Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    aput-object v1, v0, v7

    sget-object v1, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->MOTION:Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->MOVEMENT:Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->AUTO_ROTATION:Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->POWER_NOTI:Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->$VALUES:[Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 207
    iput-object p3, p0, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->name:Ljava/lang/String;

    .line 208
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private registerParser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "name"

    .prologue
    .line 252
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    move-result-object v1

    invoke-static {}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    invoke-virtual {v1, p1, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->registerParser(Ljava/lang/String;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;)V

    .line 254
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;
    .locals 1
    .parameter "name"

    .prologue
    .line 57
    const-class v0, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    return-object v0
.end method

.method public static values()[Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->$VALUES:[Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    invoke-virtual {v0}, [Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;

    return-object v0
.end method


# virtual methods
.method protected abstract getRunnerObj()Landroid/hardware/contextaware/ContextProvider;
.end method

.method protected varargs getRunnerObj([Ljava/lang/Object;)Landroid/hardware/contextaware/ContextProvider;
    .locals 1
    .parameter "property"

    .prologue
    .line 225
    array-length v0, p1

    if-lez v0, :cond_0

    .line 226
    const/4 v0, 0x0

    .line 228
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->getRunnerObj()Landroid/hardware/contextaware/ContextProvider;

    move-result-object v0

    goto :goto_0
.end method

.method protected setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "name"

    .prologue
    .line 240
    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;->registerParser(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method
