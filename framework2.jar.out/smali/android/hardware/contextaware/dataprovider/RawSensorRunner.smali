.class public Landroid/hardware/contextaware/dataprovider/RawSensorRunner;
.super Landroid/hardware/contextaware/dataprovider/DataProvider;
.source "RawSensorRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;
    }
.end annotation


# static fields
.field private static final DEFAULT_SENSOR_RATE:I = 0xea60


# instance fields
.field private final mAccEnable:Z

.field private final mGyroEnable:Z

.field private final mMagEnable:Z

.field private final mOriEnable:Z

.field private mRawSensor:Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

.field private final mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V
    .locals 9
    .parameter "context"
    .parameter "looper"
    .parameter "observable"

    .prologue
    const/4 v5, 0x1

    .line 124
    const v4, 0xea60

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-direct/range {v0 .. v8}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;IZZZZ)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;IZZZZ)V
    .locals 1
    .parameter "context"
    .parameter "looper"
    .parameter "observable"
    .parameter "rate"
    .parameter "accEnable"
    .parameter "magEnable"
    .parameter "oriEnable"
    .parameter "gyroEnable"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/contextaware/dataprovider/DataProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;)V

    .line 162
    new-instance v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$1;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$1;-><init>(Landroid/hardware/contextaware/dataprovider/RawSensorRunner;)V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 153
    iput p4, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorRate:I

    .line 154
    iput-boolean p5, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mAccEnable:Z

    .line 155
    iput-boolean p6, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mMagEnable:Z

    .line 156
    iput-boolean p7, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mOriEnable:Z

    .line 157
    iput-boolean p8, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mGyroEnable:Z

    .line 158
    new-instance v0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mRawSensor:Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    .line 159
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/dataprovider/RawSensorRunner;)Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mRawSensor:Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    return-object v0
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mRawSensor:Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner$RawSensorContext;->clear()V

    .line 317
    return-void
.end method

.method protected disable()V
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 255
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method protected enable()V
    .locals 4

    .prologue
    .line 215
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mAccEnable:Z

    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 224
    :cond_2
    iget-boolean v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mMagEnable:Z

    if-eqz v0, :cond_3

    .line 225
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 230
    :cond_3
    iget-boolean v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mOriEnable:Z

    if-eqz v0, :cond_4

    .line 231
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 236
    :cond_4
    iget-boolean v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mGyroEnable:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iget v3, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorRate:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method

.method protected initialize()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/DataProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 285
    const-string v0, "mContext is null."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->error(Ljava/lang/String;)V

    .line 288
    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/DataProvider;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorManager:Landroid/hardware/SensorManager;

    .line 291
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 292
    const-string v0, "cannot create the SensorManager object"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/CALogger;->error(Ljava/lang/String;)V

    .line 295
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->clear()V

    .line 296
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 264
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->disable()V

    .line 265
    return-void
.end method

.method protected registerAPPowerObserver()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    invoke-interface {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;->registerListener(Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;)V

    .line 324
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 274
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->enable()V

    .line 275
    return-void
.end method

.method protected terminate()V
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->clear()V

    .line 306
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/RawSensorRunner;->mSensorManager:Landroid/hardware/SensorManager;

    .line 307
    return-void
.end method

.method protected unregisterAPPowerObserver()V
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Landroid/hardware/contextaware/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;

    invoke-interface {v0, p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IAPPowerObservable;->unregisterListener(Landroid/hardware/contextaware/dataprovider/IAPPowerObserver;)V

    .line 331
    :cond_0
    return-void
.end method
