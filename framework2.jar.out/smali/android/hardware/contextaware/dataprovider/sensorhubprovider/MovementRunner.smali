.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/MovementRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.source "MovementRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/dataprovider/sensorhubprovider/MovementRunner$MovementContext;
    }
.end annotation


# instance fields
.field private mMovement:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/MovementRunner$MovementContext;


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
    .line 131
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/MovementRunner$MovementContext;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/MovementRunner$MovementContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/MovementRunner;->mMovement:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/MovementRunner$MovementContext;

    .line 132
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/MovementRunner;->mMovement:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/MovementRunner$MovementContext;

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/MovementRunner$MovementContext;->clear()V

    .line 133
    return-void
.end method

.method protected disable()V
    .locals 3

    .prologue
    .line 83
    const/16 v0, -0x4e

    const/16 v1, 0x8

    const/4 v2, 0x2

    new-array v2, v2, [B

    invoke-super {p0, v0, v1, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    .line 85
    return-void
.end method

.method public display()V
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/MovementRunner;->mMovement:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/MovementRunner$MovementContext;

    iget v1, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/MovementRunner$MovementContext;->action:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->info(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method protected enable()V
    .locals 3

    .prologue
    .line 70
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 72
    .local v0, data:[B
    const/16 v1, -0x4f

    const/16 v2, 0x8

    invoke-super {p0, v1, v2, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    .line 74
    return-void
.end method

.method public parse([BI)I
    .locals 5
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 96
    move v1, p2

    .line 98
    .local v1, tmpNext:I
    array-length v3, p1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_0

    .line 99
    const/4 v2, -0x1

    .line 108
    :goto_0
    return v2

    .line 102
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #tmpNext:I
    .local v2, tmpNext:I
    aget-byte v0, p1, v1

    .line 103
    .local v0, data:I
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/MovementRunner;->mMovement:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/MovementRunner$MovementContext;

    iput v0, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/MovementRunner$MovementContext;->action:I

    .line 105
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/MovementRunner;->display()V

    .line 106
    sget v3, Landroid/hardware/contextaware/CAEvent;->MOVEMENT:I

    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/MovementRunner;->mMovement:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/MovementRunner$MovementContext;

    invoke-virtual {p0, v3, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/MovementRunner;->notifyListener(ILandroid/hardware/contextaware/IContextBundle;)V

    move v1, v2

    .line 108
    .end local v2           #tmpNext:I
    .restart local v1       #tmpNext:I
    goto :goto_0
.end method

.method protected registerAPPowerObserver()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    invoke-interface {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;->registerListener(Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;)V

    .line 140
    :cond_0
    return-void
.end method

.method protected unregisterAPPowerObserver()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    invoke-interface {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;->unregisterListener(Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;)V

    .line 147
    :cond_0
    return-void
.end method
