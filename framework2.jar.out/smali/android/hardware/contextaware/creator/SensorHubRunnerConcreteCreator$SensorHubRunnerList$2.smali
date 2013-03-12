.class final enum Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList$2;
.super Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;
.source "SensorHubRunnerConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;
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
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$1;)V

    return-void
.end method


# virtual methods
.method protected getRunnerObj()Landroid/hardware/contextaware/ContextProvider;
    .locals 6

    .prologue
    .line 79
    invoke-static {}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList$2;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList$2;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;

    sget-object v3, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator;->mLooper:Landroid/os/Looper;

    sget-object v5, Landroid/hardware/contextaware/creator/ContextProviderCreator;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    invoke-direct {v2, v3, v4, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :cond_0
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_PEDOMETER:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList$2;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList$2;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator$SensorHubRunnerList$2;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/ContextProvider;

    return-object v0
.end method
