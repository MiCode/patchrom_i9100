.class final enum Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList$2;
.super Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
.source "SensorHubParserConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "x0"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$1;)V

    return-void
.end method


# virtual methods
.method protected createObj()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;-><init>()V

    invoke-static {v0}, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator;->access$102(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;)Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;

    .line 58
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->TYPE_NOTI_POWER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$LIB_TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator;->access$100()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiParser;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator$SensorHubNonLibParserList$2;->registerParser(Ljava/lang/String;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;)V

    .line 60
    return-void
.end method
