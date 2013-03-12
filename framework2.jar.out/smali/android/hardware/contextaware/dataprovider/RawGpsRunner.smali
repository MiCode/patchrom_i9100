.class public Landroid/hardware/contextaware/dataprovider/RawGpsRunner;
.super Landroid/hardware/contextaware/dataprovider/DataProvider;
.source "RawGpsRunner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V
    .locals 0
    .parameter "context"
    .parameter "looper"
    .parameter "observable"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/dataprovider/DataProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method protected disable()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method protected enable()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method protected initialize()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method protected registerAPPowerObserver()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    invoke-interface {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;->registerListener(Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;)V

    .line 105
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method protected terminate()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method protected unregisterAPPowerObserver()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    invoke-interface {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;->unregisterListener(Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;)V

    .line 112
    :cond_0
    return-void
.end method
