.class Landroid/hardware/contextaware/ContextManager;
.super Ljava/lang/Object;
.source "ContextManager.java"


# instance fields
.field private final mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/creator/ContextProviderCreator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 5
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator;

    invoke-direct {v1, p1}, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator;-><init>(Landroid/content/Context;)V

    .line 47
    .local v1, sensorHubParserConcreteCreator:Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator;
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/contextaware/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 48
    iget-object v2, p0, Landroid/hardware/contextaware/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator;

    invoke-virtual {v1}, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator;->getPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    move-result-object v4

    invoke-direct {v3, p1, p2, v4}, Landroid/hardware/contextaware/creator/AndroidRunnerConcreteCreator;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v2, p0, Landroid/hardware/contextaware/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator;

    invoke-virtual {v1}, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator;->getPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    move-result-object v4

    invoke-direct {v3, p1, p2, v4}, Landroid/hardware/contextaware/creator/SensorHubRunnerConcreteCreator;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 54
    .local v0, creator:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/hardware/contextaware/creator/ContextProviderCreator;>;"
    iget-object v2, p0, Landroid/hardware/contextaware/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v2, p0, Landroid/hardware/contextaware/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v2, p0, Landroid/hardware/contextaware/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator;

    invoke-virtual {v1}, Landroid/hardware/contextaware/creator/SensorHubParserConcreteCreator;->getPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Landroid/hardware/contextaware/creator/AggregatorConcreteCreator;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method private getContextProviderObj(Ljava/lang/String;)Landroid/hardware/contextaware/ContextProvider;
    .locals 4
    .parameter "service"

    .prologue
    .line 160
    const/4 v2, 0x0

    .line 162
    .local v2, obj:Landroid/hardware/contextaware/ContextProvider;
    iget-object v3, p0, Landroid/hardware/contextaware/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/creator/ContextProviderCreator;

    .line 164
    .local v0, creator:Landroid/hardware/contextaware/creator/ContextProviderCreator;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->create(Ljava/lang/String;)Landroid/hardware/contextaware/ContextProvider;

    move-result-object v2

    .line 170
    .end local v0           #creator:Landroid/hardware/contextaware/creator/ContextProviderCreator;
    :cond_1
    return-object v2
.end method


# virtual methods
.method protected initialize(Ljava/lang/String;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/ContextManager;->getContextProviderObj(Ljava/lang/String;)Landroid/hardware/contextaware/ContextProvider;

    move-result-object v0

    .line 68
    .local v0, provider:Landroid/hardware/contextaware/ContextProvider;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextProvider;->initialize()V

    .line 71
    :cond_0
    return-void
.end method

.method protected reset(Ljava/lang/String;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/ContextManager;->getContextProviderObj(Ljava/lang/String;)Landroid/hardware/contextaware/ContextProvider;

    move-result-object v0

    .line 146
    .local v0, provider:Landroid/hardware/contextaware/ContextProvider;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextProvider;->clear()V

    .line 149
    :cond_0
    return-void
.end method

.method protected setProperty(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1
    .parameter "service"
    .parameter "property"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "ITE;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p3, value:Ljava/lang/Object;,"TE;"
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/ContextManager;->getContextProviderObj(Ljava/lang/String;)Landroid/hardware/contextaware/ContextProvider;

    move-result-object v0

    .line 133
    .local v0, provider:Landroid/hardware/contextaware/ContextProvider;
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p2, p3}, Landroid/hardware/contextaware/ContextProvider;->setProperty(ILjava/lang/Object;)Z

    .line 136
    :cond_0
    return-void
.end method

.method protected start(Ljava/lang/String;Landroid/hardware/contextaware/IContextObserver;)V
    .locals 1
    .parameter "service"
    .parameter "listener"

    .prologue
    .line 95
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/ContextManager;->getContextProviderObj(Ljava/lang/String;)Landroid/hardware/contextaware/ContextProvider;

    move-result-object v0

    .line 96
    .local v0, provider:Landroid/hardware/contextaware/ContextProvider;
    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p2}, Landroid/hardware/contextaware/ContextProvider;->registerListener(Landroid/hardware/contextaware/IContextObserver;)V

    .line 98
    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextProvider;->start()V

    .line 100
    :cond_0
    return-void
.end method

.method protected stop(Ljava/lang/String;Landroid/hardware/contextaware/IContextObserver;)V
    .locals 1
    .parameter "service"
    .parameter "listener"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/ContextManager;->getContextProviderObj(Ljava/lang/String;)Landroid/hardware/contextaware/ContextProvider;

    move-result-object v0

    .line 112
    .local v0, provider:Landroid/hardware/contextaware/ContextProvider;
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p2}, Landroid/hardware/contextaware/ContextProvider;->unregisterListener(Landroid/hardware/contextaware/IContextObserver;)V

    .line 114
    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextProvider;->stop()V

    .line 116
    :cond_0
    return-void
.end method

.method protected terminate(Ljava/lang/String;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/ContextManager;->getContextProviderObj(Ljava/lang/String;)Landroid/hardware/contextaware/ContextProvider;

    move-result-object v0

    .line 81
    .local v0, provider:Landroid/hardware/contextaware/ContextProvider;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextProvider;->terminate()V

    .line 84
    :cond_0
    return-void
.end method
