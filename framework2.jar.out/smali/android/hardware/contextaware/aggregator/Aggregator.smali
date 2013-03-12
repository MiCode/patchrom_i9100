.class abstract Landroid/hardware/contextaware/aggregator/Aggregator;
.super Landroid/hardware/contextaware/ContextProvider;
.source "Aggregator.java"

# interfaces
.implements Landroid/hardware/contextaware/IContextObserver;


# instance fields
.field private final mSubCollectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/contextaware/ContextProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V
    .locals 0
    .parameter
    .parameter "observable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/contextaware/ContextProvider;",
            ">;",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, collectionList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/contextaware/ContextProvider;>;"
    invoke-direct {p0, p2}, Landroid/hardware/contextaware/ContextProvider;-><init>(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V

    .line 40
    iput-object p1, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/List;

    .line 41
    return-void
.end method


# virtual methods
.method protected initialize()V
    .locals 3

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->clear()V

    .line 52
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/ContextProvider;

    .line 53
    .local v0, i:Landroid/hardware/contextaware/ContextProvider;
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, p0}, Landroid/hardware/contextaware/ContextProvider;->registerListener(Landroid/hardware/contextaware/IContextObserver;)V

    goto :goto_0

    .line 57
    .end local v0           #i:Landroid/hardware/contextaware/ContextProvider;
    :cond_1
    return-void
.end method

.method protected registerAPPowerObserver()V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Landroid/hardware/contextaware/ContextProvider;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 83
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/ContextProvider;

    .line 84
    .local v0, i:Landroid/hardware/contextaware/ContextProvider;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextProvider;->start()V

    goto :goto_0

    .line 90
    .end local v0           #i:Landroid/hardware/contextaware/ContextProvider;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    invoke-super {p0}, Landroid/hardware/contextaware/ContextProvider;->start()V

    .line 91
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0}, Landroid/hardware/contextaware/ContextProvider;->stop()V

    .line 102
    invoke-super {p0}, Landroid/hardware/contextaware/ContextProvider;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 111
    :cond_0
    return-void

    .line 106
    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/ContextProvider;

    .line 107
    .local v0, i:Landroid/hardware/contextaware/ContextProvider;
    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextProvider;->stop()V

    goto :goto_0
.end method

.method protected terminate()V
    .locals 3

    .prologue
    .line 66
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/ContextProvider;

    .line 67
    .local v0, i:Landroid/hardware/contextaware/ContextProvider;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0, p0}, Landroid/hardware/contextaware/ContextProvider;->unregisterListener(Landroid/hardware/contextaware/IContextObserver;)V

    goto :goto_0

    .line 72
    .end local v0           #i:Landroid/hardware/contextaware/ContextProvider;
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->clear()V

    .line 73
    return-void
.end method

.method protected unregisterAPPowerObserver()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public updateAPPowerStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 125
    return-void
.end method

.method public updateContext(ILandroid/hardware/contextaware/IContextBundle;)V
    .locals 0
    .parameter "type"
    .parameter "context"

    .prologue
    .line 118
    return-void
.end method
