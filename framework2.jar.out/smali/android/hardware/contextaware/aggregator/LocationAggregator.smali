.class public Landroid/hardware/contextaware/aggregator/LocationAggregator;
.super Landroid/hardware/contextaware/aggregator/Aggregator;
.source "LocationAggregator.java"


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V
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
    .line 29
    .local p1, collectionList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/contextaware/ContextProvider;>;"
    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/aggregator/Aggregator;-><init>(Ljava/util/List;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V

    .line 30
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/LocationAggregator;->initialize()V

    .line 43
    :cond_0
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->start()V

    .line 44
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->stop()V

    .line 55
    invoke-super {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/LocationAggregator;->terminate()V

    goto :goto_0
.end method

.method public bridge synthetic updateAPPowerStatus(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/hardware/contextaware/aggregator/Aggregator;->updateAPPowerStatus(I)V

    return-void
.end method

.method public updateContext(ILandroid/hardware/contextaware/IContextBundle;)V
    .locals 0
    .parameter "type"
    .parameter "listener"

    .prologue
    .line 79
    return-void
.end method
