.class final enum Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList$2;
.super Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;
.source "AggregatorConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;
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
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$1;)V

    return-void
.end method


# virtual methods
.method protected getAggregatorObj()Landroid/hardware/contextaware/ContextProvider;
    .locals 5

    .prologue
    .line 86
    invoke-static {}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList$2;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList$2;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/hardware/contextaware/aggregator/MovingAggregator;

    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList$2;->makeListForContextCreation()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    sget-object v4, Landroid/hardware/contextaware/creator/ContextProviderCreator;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    invoke-direct {v2, v3, v4}, Landroid/hardware/contextaware/aggregator/MovingAggregator;-><init>(Ljava/util/List;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_0
    invoke-static {}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList$2;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/ContextProvider;

    return-object v0
.end method

.method makeListForContextCreation()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/ContextProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 78
    .local v0, list:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/hardware/contextaware/ContextProvider;>;"
    sget-object v1, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;->LOCATION:Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;

    invoke-virtual {v1}, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;->getAggregatorObj()Landroid/hardware/contextaware/ContextProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v1, Landroid/hardware/contextaware/ContextList;->SENSORHUB_RUNNER_PEDOMETER:Landroid/hardware/contextaware/ContextList;

    invoke-virtual {v1}, Landroid/hardware/contextaware/ContextList;->getCode()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    #calls: Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;->getRunnerObj(Ljava/lang/String;[Ljava/lang/Object;)Landroid/hardware/contextaware/ContextProvider;
    invoke-static {v1, v2}, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator$AggregatorList;->access$100(Ljava/lang/String;[Ljava/lang/Object;)Landroid/hardware/contextaware/ContextProvider;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    return-object v0
.end method
