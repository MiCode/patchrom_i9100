.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.source "GestureApproachRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner$GestureApproachContext;
    }
.end annotation


# instance fields
.field private mGestureApproach:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner$GestureApproachContext;


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
    .line 130
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner$GestureApproachContext;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner$GestureApproachContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner;->mGestureApproach:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner$GestureApproachContext;

    .line 131
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner;->mGestureApproach:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner$GestureApproachContext;

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner$GestureApproachContext;->clear()V

    .line 132
    return-void
.end method

.method protected disable()V
    .locals 3

    .prologue
    .line 81
    const/16 v0, -0x4e

    const/4 v1, 0x5

    const/4 v2, 0x2

    new-array v2, v2, [B

    invoke-super {p0, v0, v1, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    .line 83
    return-void
.end method

.method public display()V
    .locals 2

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Approach = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner;->mGestureApproach:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner$GestureApproachContext;

    iget v1, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner$GestureApproachContext;->proximity:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->info(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method protected enable()V
    .locals 3

    .prologue
    .line 70
    const/16 v0, -0x4f

    const/4 v1, 0x5

    const/4 v2, 0x2

    new-array v2, v2, [B

    invoke-super {p0, v0, v1, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    .line 72
    return-void
.end method

.method public parse([BI)I
    .locals 5
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 94
    move v1, p2

    .line 96
    .local v1, tmpNext:I
    array-length v3, p1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_0

    .line 97
    const/4 v2, -0x1

    .line 106
    :goto_0
    return v2

    .line 100
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #tmpNext:I
    .local v2, tmpNext:I
    aget-byte v0, p1, v1

    .line 101
    .local v0, data:I
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner;->mGestureApproach:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner$GestureApproachContext;

    iput v0, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner$GestureApproachContext;->proximity:I

    .line 103
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner;->display()V

    .line 104
    sget v3, Landroid/hardware/contextaware/CAEvent;->GESTURE_APPROACH:I

    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner;->mGestureApproach:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner$GestureApproachContext;

    invoke-virtual {p0, v3, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/GestureApproachRunner;->notifyListener(ILandroid/hardware/contextaware/IContextBundle;)V

    move v1, v2

    .line 106
    .end local v2           #tmpNext:I
    .restart local v1       #tmpNext:I
    goto :goto_0
.end method

.method protected registerAPPowerObserver()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    invoke-interface {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;->registerListener(Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;)V

    .line 139
    :cond_0
    return-void
.end method

.method protected unregisterAPPowerObserver()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    invoke-interface {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;->unregisterListener(Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;)V

    .line 146
    :cond_0
    return-void
.end method
