.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PdrRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.source "PdrRunner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V
    .locals 0
    .parameter "context"
    .parameter "looper"
    .parameter "observable"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 0

    .prologue
    .line 86
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->trace()V

    .line 87
    return-void
.end method

.method protected disable()V
    .locals 0

    .prologue
    .line 63
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->trace()V

    .line 64
    return-void
.end method

.method public display()V
    .locals 0

    .prologue
    .line 99
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->trace()V

    .line 100
    return-void
.end method

.method protected enable()V
    .locals 0

    .prologue
    .line 52
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->trace()V

    .line 53
    return-void
.end method

.method public parse([BI)I
    .locals 1
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 40
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->trace()V

    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method protected registerAPPowerObserver()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    invoke-interface {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;->registerListener(Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;)V

    .line 107
    :cond_0
    return-void
.end method

.method protected terminate()V
    .locals 0

    .prologue
    .line 75
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CALogger;->trace()V

    .line 76
    return-void
.end method

.method protected unregisterAPPowerObserver()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    invoke-interface {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;->unregisterListener(Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;)V

    .line 114
    :cond_0
    return-void
.end method
