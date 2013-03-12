.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.source "PowerNotiRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiRunner$PowerNotiContext;
    }
.end annotation


# instance fields
.field private mPowerNoti:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiRunner$PowerNotiContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V
    .locals 0
    .parameter "context"
    .parameter "looper"
    .parameter "observable"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiRunner$PowerNotiContext;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiRunner$PowerNotiContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiRunner;->mPowerNoti:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiRunner$PowerNotiContext;

    .line 92
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiRunner;->mPowerNoti:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiRunner$PowerNotiContext;

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiRunner$PowerNotiContext;->clear()V

    .line 93
    return-void
.end method

.method protected disable()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public display()V
    .locals 2

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Noti = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiRunner;->mPowerNoti:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiRunner$PowerNotiContext;

    iget v1, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiRunner$PowerNotiContext;->noti:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->info(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method protected enable()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public parse([BI)I
    .locals 1
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 133
    const/4 v0, -0x1

    return v0
.end method

.method protected registerAPPowerObserver()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    invoke-interface {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;->registerListener(Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;)V

    .line 116
    :cond_0
    return-void
.end method

.method protected unregisterAPPowerObserver()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    invoke-interface {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;->unregisterListener(Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;)V

    .line 129
    :cond_0
    return-void
.end method

.method public updateAPPowerStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 97
    const/16 v0, -0x2f

    if-ne p1, v0, :cond_0

    .line 98
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiRunner;->mPowerNoti:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiRunner$PowerNotiContext;

    const/4 v1, 0x1

    iput v1, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiRunner$PowerNotiContext;->noti:I

    .line 100
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiRunner;->display()V

    .line 101
    sget v0, Landroid/hardware/contextaware/CAEvent;->POWER_NOTI:I

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiRunner;->mPowerNoti:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiRunner$PowerNotiContext;

    invoke-virtual {p0, v0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PowerNotiRunner;->notifyListener(ILandroid/hardware/contextaware/IContextBundle;)V

    .line 103
    :cond_0
    return-void
.end method
