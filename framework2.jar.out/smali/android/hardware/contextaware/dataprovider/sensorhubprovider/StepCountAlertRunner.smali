.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.source "StepCountAlertRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner$StepCountAlertContext;
    }
.end annotation


# static fields
.field private static final DEFAULT_STEP_COUNT:I = 0xa


# instance fields
.field private mStepCount:I

.field private mStepCountAlert:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner$StepCountAlertContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V
    .locals 1
    .parameter "context"
    .parameter "looper"
    .parameter "observable"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V

    .line 35
    const/16 v0, 0xa

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner;->mStepCount:I

    .line 47
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner$StepCountAlertContext;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner$StepCountAlertContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner;->mStepCountAlert:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner$StepCountAlertContext;

    .line 142
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner;->mStepCountAlert:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner$StepCountAlertContext;

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner$StepCountAlertContext;->clear()V

    .line 143
    return-void
.end method

.method protected disable()V
    .locals 3

    .prologue
    .line 93
    const/16 v0, -0x4e

    const/4 v1, 0x6

    const/4 v2, 0x2

    new-array v2, v2, [B

    invoke-super {p0, v0, v1, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    .line 95
    return-void
.end method

.method public display()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner;->mStepCountAlert:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner$StepCountAlertContext;

    iget v1, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner$StepCountAlertContext;->action:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->info(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method protected enable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 79
    .local v0, data:[B
    iget v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner;->mStepCount:I

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    .line 80
    const/4 v1, 0x1

    aput-byte v2, v0, v1

    .line 82
    const/16 v1, -0x4f

    const/4 v2, 0x6

    invoke-super {p0, v1, v2, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    .line 84
    return-void
.end method

.method public parse([BI)I
    .locals 5
    .parameter "packet"
    .parameter "next"

    .prologue
    .line 106
    move v1, p2

    .line 108
    .local v1, tmpNext:I
    array-length v3, p1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_0

    .line 109
    const/4 v2, -0x1

    .line 118
    :goto_0
    return v2

    .line 112
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #tmpNext:I
    .local v2, tmpNext:I
    aget-byte v0, p1, v1

    .line 113
    .local v0, data:I
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner;->mStepCountAlert:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner$StepCountAlertContext;

    iput v0, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner$StepCountAlertContext;->action:I

    .line 115
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner;->display()V

    .line 116
    sget v3, Landroid/hardware/contextaware/CAEvent;->STEP_COUNT_ALERT:I

    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner;->mStepCountAlert:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner$StepCountAlertContext;

    invoke-virtual {p0, v3, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner;->notifyListener(ILandroid/hardware/contextaware/IContextBundle;)V

    move v1, v2

    .line 118
    .end local v2           #tmpNext:I
    .restart local v1       #tmpNext:I
    goto :goto_0
.end method

.method protected registerAPPowerObserver()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    invoke-interface {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;->registerListener(Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;)V

    .line 171
    :cond_0
    return-void
.end method

.method public setProperty(ILjava/lang/Object;)Z
    .locals 3
    .parameter "property"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .line 153
    .local p2, value:Ljava/lang/Object;,"TE;"
    invoke-super {p0, p1, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->setProperty(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 163
    .end local p2           #value:Ljava/lang/Object;,"TE;"
    :goto_0
    return v0

    .line 157
    .restart local p2       #value:Ljava/lang/Object;,"TE;"
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 158
    check-cast p2, Landroid/hardware/contextaware/CAPropertyBundle;

    .end local p2           #value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/CAPropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner;->mStepCount:I

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperty (Step Count) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/StepCountAlertRunner;->mStepCount:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->info(Ljava/lang/String;)V

    .line 163
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected unregisterAPPowerObserver()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    invoke-interface {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;->unregisterListener(Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;)V

    .line 178
    :cond_0
    return-void
.end method
