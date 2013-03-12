.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.source "PedometerRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;
    }
.end annotation


# static fields
.field private static final DEFAULT_HEIGHT:D = 170.0

.field private static final DEFAULT_WEIGHT:D = 60.0


# instance fields
.field private mPedometer:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

.field private mUserHeight:D

.field private mUserWeight:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V
    .locals 2
    .parameter "context"
    .parameter "looper"
    .parameter "observable"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V

    .line 53
    const-wide v0, 0x4065400000000000L

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mUserHeight:D

    .line 56
    const-wide/high16 v0, 0x404e

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mUserWeight:D

    .line 41
    return-void
.end method


# virtual methods
.method protected clear()V
    .locals 2

    .prologue
    .line 206
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mPedometer:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    .line 207
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mPedometer:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->clear()V

    .line 209
    sget v0, Landroid/hardware/contextaware/CAEvent;->PEDOMETER:I

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mPedometer:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    invoke-virtual {p0, v0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->notifyListener(ILandroid/hardware/contextaware/IContextBundle;)V

    .line 210
    return-void
.end method

.method protected disable()V
    .locals 3

    .prologue
    .line 114
    const/16 v0, -0x4e

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [B

    invoke-super {p0, v0, v1, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    .line 116
    return-void
.end method

.method public display()V
    .locals 3

    .prologue
    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "step="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mPedometer:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    iget-wide v1, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->stepCount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mPedometer:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    iget-wide v1, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->distance:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mPedometer:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    iget-wide v1, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->calorie:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mPedometer:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    iget-wide v1, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->speed:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mPedometer:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    iget v1, v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->stepStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->info(Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method protected enable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 100
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 101
    .local v0, data:[B
    iget-wide v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mUserHeight:D

    double-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 102
    const/4 v1, 0x1

    iget-wide v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mUserWeight:D

    double-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 104
    const/16 v1, -0x4f

    invoke-super {p0, v1, v4, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    .line 105
    return-void
.end method

.method public parse([BI)I
    .locals 12
    .parameter "packet"
    .parameter "next"

    .prologue
    const-wide/high16 v10, 0x4024

    const/4 v3, -0x1

    const-wide/high16 v8, 0x4059

    .line 127
    move v1, p2

    .line 129
    .local v1, tmpNext:I
    array-length v4, p1

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_0

    .line 179
    :goto_0
    return v3

    .line 133
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1           #tmpNext:I
    .local v2, tmpNext:I
    aget-byte v0, p1, v1

    .line 135
    .local v0, data:I
    and-int/lit16 v4, v0, 0x80

    if-nez v4, :cond_2

    .line 136
    array-length v4, p1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x5

    if-gez v4, :cond_1

    move v1, v2

    .line 137
    .end local v2           #tmpNext:I
    .restart local v1       #tmpNext:I
    goto :goto_0

    .line 140
    .end local v1           #tmpNext:I
    .restart local v2       #tmpNext:I
    :cond_1
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mPedometer:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    iget-wide v4, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->stepCount:J

    and-int/lit8 v6, v0, 0x7f

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->stepCount:J

    .line 142
    add-int/lit8 v1, v2, 0x1

    .end local v2           #tmpNext:I
    .restart local v1       #tmpNext:I
    aget-byte v3, p1, v2

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v2, v1, 0x1

    .end local v1           #tmpNext:I
    .restart local v2       #tmpNext:I
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    add-int v0, v3, v4

    .line 143
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mPedometer:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    iget-wide v4, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->distance:D

    int-to-double v6, v0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->distance:D

    .line 145
    add-int/lit8 v1, v2, 0x1

    .end local v2           #tmpNext:I
    .restart local v1       #tmpNext:I
    aget-byte v0, p1, v2

    .line 146
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mPedometer:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    int-to-double v4, v0

    div-double/2addr v4, v10

    iput-wide v4, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->speed:D

    .line 148
    add-int/lit8 v2, v1, 0x1

    .end local v1           #tmpNext:I
    .restart local v2       #tmpNext:I
    aget-byte v0, p1, v1

    .line 149
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mPedometer:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    iput v0, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->stepStatus:I

    .line 151
    add-int/lit8 v1, v2, 0x1

    .end local v2           #tmpNext:I
    .restart local v1       #tmpNext:I
    aget-byte v0, p1, v2

    .line 152
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mPedometer:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    iget-wide v4, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->calorie:D

    int-to-double v6, v0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->calorie:D

    .line 176
    :goto_1
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->display()V

    .line 177
    sget v3, Landroid/hardware/contextaware/CAEvent;->PEDOMETER:I

    iget-object v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mPedometer:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    invoke-virtual {p0, v3, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->notifyListener(ILandroid/hardware/contextaware/IContextBundle;)V

    move v3, v1

    .line 179
    goto :goto_0

    .line 154
    .end local v1           #tmpNext:I
    .restart local v2       #tmpNext:I
    :cond_2
    array-length v4, p1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0xa

    if-gez v4, :cond_3

    move v1, v2

    .line 155
    .end local v2           #tmpNext:I
    .restart local v1       #tmpNext:I
    goto :goto_0

    .line 158
    .end local v1           #tmpNext:I
    .restart local v2       #tmpNext:I
    :cond_3
    add-int/lit8 v1, v2, 0x1

    .end local v2           #tmpNext:I
    .restart local v1       #tmpNext:I
    aget-byte v3, p1, v2

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v2, v1, 0x1

    .end local v1           #tmpNext:I
    .restart local v2       #tmpNext:I
    aget-byte v4, p1, v1

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v1, v2, 0x1

    .end local v2           #tmpNext:I
    .restart local v1       #tmpNext:I
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    add-int v0, v3, v4

    .line 160
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mPedometer:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    iget-wide v4, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->stepCount:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->stepCount:J

    .line 162
    add-int/lit8 v2, v1, 0x1

    .end local v1           #tmpNext:I
    .restart local v2       #tmpNext:I
    aget-byte v3, p1, v1

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v1, v2, 0x1

    .end local v2           #tmpNext:I
    .restart local v1       #tmpNext:I
    aget-byte v4, p1, v2

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v2, v1, 0x1

    .end local v1           #tmpNext:I
    .restart local v2       #tmpNext:I
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    add-int v0, v3, v4

    .line 164
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mPedometer:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    iget-wide v4, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->distance:D

    int-to-double v6, v0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->distance:D

    .line 166
    add-int/lit8 v1, v2, 0x1

    .end local v2           #tmpNext:I
    .restart local v1       #tmpNext:I
    aget-byte v0, p1, v2

    .line 167
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mPedometer:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    int-to-double v4, v0

    div-double/2addr v4, v10

    iput-wide v4, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->speed:D

    .line 169
    add-int/lit8 v2, v1, 0x1

    .end local v1           #tmpNext:I
    .restart local v2       #tmpNext:I
    aget-byte v0, p1, v1

    .line 170
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mPedometer:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    iput v0, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->stepStatus:I

    .line 172
    add-int/lit8 v1, v2, 0x1

    .end local v2           #tmpNext:I
    .restart local v1       #tmpNext:I
    aget-byte v3, p1, v2

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v2, v1, 0x1

    .end local v1           #tmpNext:I
    .restart local v2       #tmpNext:I
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    add-int v0, v3, v4

    .line 173
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mPedometer:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;

    iget-wide v4, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->calorie:D

    int-to-double v6, v0

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner$PedometerContext;->calorie:D

    move v1, v2

    .end local v2           #tmpNext:I
    .restart local v1       #tmpNext:I
    goto :goto_1
.end method

.method protected registerAPPowerObserver()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    invoke-interface {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;->registerListener(Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;)V

    .line 242
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
    .line 220
    .local p2, value:Ljava/lang/Object;,"TE;"
    invoke-super {p0, p1, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->setProperty(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 234
    .end local p2           #value:Ljava/lang/Object;,"TE;"
    :goto_0
    return v0

    .line 224
    .restart local p2       #value:Ljava/lang/Object;,"TE;"
    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 225
    check-cast p2, Landroid/hardware/contextaware/CAPropertyBundle;

    .end local p2           #value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/CAPropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mUserHeight:D

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperty (User Height) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mUserHeight:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->info(Ljava/lang/String;)V

    .line 234
    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 228
    .restart local p2       #value:Ljava/lang/Object;,"TE;"
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 229
    check-cast p2, Landroid/hardware/contextaware/CAPropertyBundle;

    .end local p2           #value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/CAPropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mUserWeight:D

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperty (User Weight) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/PedometerRunner;->mUserWeight:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected unregisterAPPowerObserver()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    invoke-interface {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;->unregisterListener(Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;)V

    .line 249
    :cond_0
    return-void
.end method
