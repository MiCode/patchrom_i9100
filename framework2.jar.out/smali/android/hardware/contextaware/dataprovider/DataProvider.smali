.class public abstract Landroid/hardware/contextaware/dataprovider/DataProvider;
.super Landroid/hardware/contextaware/ContextProvider;
.source "DataProvider.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mLooper:Landroid/os/Looper;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V
    .locals 0
    .parameter "context"
    .parameter "looper"
    .parameter "observable"

    .prologue
    .line 62
    invoke-direct {p0, p3}, Landroid/hardware/contextaware/ContextProvider;-><init>(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V

    .line 63
    iput-object p1, p0, Landroid/hardware/contextaware/dataprovider/DataProvider;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Landroid/hardware/contextaware/dataprovider/DataProvider;->mLooper:Landroid/os/Looper;

    .line 65
    return-void
.end method


# virtual methods
.method protected abstract disable()V
.end method

.method protected abstract enable()V
.end method

.method public abstract pause()V
.end method

.method protected reset()V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/DataProvider;->enable()V

    .line 69
    return-void
.end method

.method public abstract resume()V
.end method

.method public start()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/hardware/contextaware/ContextProvider;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/DataProvider;->initialize()V

    .line 80
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/DataProvider;->enable()V

    .line 83
    :cond_0
    invoke-super {p0}, Landroid/hardware/contextaware/ContextProvider;->start()V

    .line 84
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 93
    invoke-super {p0}, Landroid/hardware/contextaware/ContextProvider;->stop()V

    .line 95
    invoke-super {p0}, Landroid/hardware/contextaware/ContextProvider;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/DataProvider;->disable()V

    .line 100
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/DataProvider;->terminate()V

    goto :goto_0
.end method

.method public updateAPPowerStatus(I)V
    .locals 1
    .parameter "status"

    .prologue
    .line 111
    const/16 v0, -0x2e

    if-ne p1, v0, :cond_1

    .line 112
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/DataProvider;->pause()V

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const/16 v0, -0x2f

    if-ne p1, v0, :cond_2

    .line 114
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/DataProvider;->resume()V

    goto :goto_0

    .line 115
    :cond_2
    const/16 v0, -0x2d

    if-ne p1, v0, :cond_0

    .line 116
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/DataProvider;->reset()V

    goto :goto_0
.end method
