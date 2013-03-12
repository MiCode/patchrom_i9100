.class abstract enum Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
.super Ljava/lang/Enum;
.source "SensorHubParserConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "SensorHubNonLibParserList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

.field public static final enum ORIENTATION:Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

.field public static final enum POWER:Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList$1;

    const-string v1, "ORIENTATION"

    sget-object v2, Landroid/hardware/contextaware/ContextList;->SENSORHUB_PARSER_NONLIB_ORIENTATION:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->ORIENTATION:Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    .line 54
    new-instance v0, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList$2;

    const-string v1, "POWER"

    sget-object v2, Landroid/hardware/contextaware/ContextList;->SENSORHUB_PARSER_NOTI_POWER:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v2}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->POWER:Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    sget-object v1, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->ORIENTATION:Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    aput-object v1, v0, v3

    sget-object v1, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->POWER:Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    aput-object v1, v0, v4

    sput-object v0, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->$VALUES:[Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

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
    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-object p3, p0, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->name:Ljava/lang/String;

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
    .locals 1
    .parameter "name"

    .prologue
    .line 41
    const-class v0, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    return-object v0
.end method

.method public static values()[Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->$VALUES:[Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    invoke-virtual {v0}, [Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;

    return-object v0
.end method


# virtual methods
.method protected abstract createObj()V
.end method

.method protected registerParser(Ljava/lang/String;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;)V
    .locals 1
    .parameter "key"
    .parameter "parser"

    .prologue
    .line 92
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->registerParser(Ljava/lang/String;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;)V

    .line 93
    return-void
.end method
