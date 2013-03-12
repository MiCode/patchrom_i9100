.class public Landroid/hardware/SystemSensorManager;
.super Landroid/hardware/SensorManager;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SystemSensorManager$ListenerDelegate;,
        Landroid/hardware/SystemSensorManager$SensorThread;
    }
.end annotation


# static fields
.field public static final SEC_MOTION_ENGINE:I = 0x1

.field private static final SENSOR_DISABLE:I = -0x1

.field public static final SENSOR_HAL_FOR_TABLET:I = 0x2

.field public static final SENSOR_HAL_FOR_WIDE_TABLET:I = 0x4

.field private static sFullSensorsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static sHandleToSensor:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field static final sListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/SystemSensorManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field static sPool:Landroid/hardware/SensorManager$SensorEventPool;

.field private static sQueue:I

.field private static sSensorModuleInitialized:Z

.field private static sSensorThread:Landroid/hardware/SystemSensorManager$SensorThread;


# instance fields
.field final mMainLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 6
    .parameter "mainLooper"

    .prologue
    .line 334
    invoke-direct {p0}, Landroid/hardware/SensorManager;-><init>()V

    .line 335
    iput-object p1, p0, Landroid/hardware/SystemSensorManager;->mMainLooper:Landroid/os/Looper;

    .line 337
    sget-object v4, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 338
    :try_start_0
    sget-boolean v3, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    if-nez v3, :cond_2

    .line 339
    const/4 v3, 0x1

    sput-boolean v3, Landroid/hardware/SystemSensorManager;->sSensorModuleInitialized:Z

    .line 341
    invoke-static {}, Landroid/hardware/SystemSensorManager;->nativeClassInit()V

    .line 344
    invoke-static {}, Landroid/hardware/SystemSensorManager;->sensors_module_init()I

    .line 345
    sget-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    .line 346
    .local v0, fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .line 348
    .local v1, i:I
    :cond_0
    new-instance v2, Landroid/hardware/Sensor;

    invoke-direct {v2}, Landroid/hardware/Sensor;-><init>()V

    .line 349
    .local v2, sensor:Landroid/hardware/Sensor;
    invoke-static {v2, v1}, Landroid/hardware/SystemSensorManager;->sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I

    move-result v1

    .line 351
    if-ltz v1, :cond_1

    .line 354
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    sget-object v3, Landroid/hardware/SystemSensorManager;->sHandleToSensor:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 357
    :cond_1
    if-gtz v1, :cond_0

    .line 359
    new-instance v3, Landroid/hardware/SensorManager$SensorEventPool;

    sget-object v5, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v5}, Landroid/hardware/SensorManager$SensorEventPool;-><init>(I)V

    sput-object v3, Landroid/hardware/SystemSensorManager;->sPool:Landroid/hardware/SensorManager$SensorEventPool;

    .line 360
    new-instance v3, Landroid/hardware/SystemSensorManager$SensorThread;

    invoke-direct {v3}, Landroid/hardware/SystemSensorManager$SensorThread;-><init>()V

    sput-object v3, Landroid/hardware/SystemSensorManager;->sSensorThread:Landroid/hardware/SystemSensorManager$SensorThread;

    .line 362
    .end local v0           #fullList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/hardware/Sensor;>;"
    .end local v1           #i:I
    .end local v2           #sensor:Landroid/hardware/Sensor;
    :cond_2
    monitor-exit v4

    .line 363
    return-void

    .line 362
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected static EncodeLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "path"

    .prologue
    .line 566
    if-nez p0, :cond_0

    const-string v12, ""

    .line 589
    :goto_0
    return-object v12

    .line 567
    :cond_0
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 569
    .local v10, encodedStr:Ljava/lang/StringBuffer;
    const/16 v8, 0x10

    .local v8, b4:C
    const/16 v6, 0x8

    .local v6, b3:C
    const/4 v4, 0x2

    .local v4, b1:C
    const/4 v2, 0x1

    .line 570
    .local v2, b0:C
    const/16 v3, 0xfe

    .local v3, b0mask:C
    const/16 v5, 0xfd

    .local v5, b1mask:C
    const/16 v7, 0xf7

    .local v7, b3mask:C
    const/16 v9, 0xef

    .line 572
    .local v9, b4mask:C
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_5

    .line 574
    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    .local v0, a:I
    move v1, v0

    .line 576
    .local v1, b:I
    and-int v12, v0, v4

    if-eqz v12, :cond_1

    or-int/2addr v1, v2

    .line 578
    :goto_2
    and-int v12, v0, v2

    if-eqz v12, :cond_2

    or-int/2addr v1, v4

    .line 581
    :goto_3
    and-int v12, v0, v8

    if-eqz v12, :cond_3

    or-int/2addr v1, v6

    .line 583
    :goto_4
    and-int v12, v0, v6

    if-eqz v12, :cond_4

    or-int/2addr v1, v8

    .line 586
    :goto_5
    int-to-char v12, v1

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 572
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 577
    :cond_1
    and-int/2addr v1, v3

    goto :goto_2

    .line 579
    :cond_2
    and-int/2addr v1, v5

    goto :goto_3

    .line 582
    :cond_3
    and-int/2addr v1, v7

    goto :goto_4

    .line 584
    :cond_4
    and-int/2addr v1, v9

    goto :goto_5

    .line 589
    .end local v0           #a:I
    .end local v1           #b:I
    :cond_5
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_0
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 37
    sget v0, Landroid/hardware/SystemSensorManager;->sQueue:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    sput p0, Landroid/hardware/SystemSensorManager;->sQueue:I

    return p0
.end method

.method private disableSensorLocked(Landroid/hardware/Sensor;)Z
    .locals 12
    .parameter "sensor"

    .prologue
    const/4 v8, 0x1

    .line 385
    const/4 v6, 0x0

    .line 386
    .local v6, result:Z
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    .line 387
    .local v5, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 388
    .local v0, handle:I
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    .line 391
    .local v7, type:I
    const v4, 0x30d40

    .line 392
    .local v4, minDelay:I
    sget-object v9, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 393
    .local v1, i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 394
    invoke-virtual {v1, p1}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getDelay(Landroid/hardware/Sensor;)I

    move-result v9

    if-le v4, v9, :cond_1

    .line 395
    invoke-virtual {v1, p1}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getDelay(Landroid/hardware/Sensor;)I

    move-result v4

    .line 396
    :cond_1
    const-string v9, "SensorManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Set min delay = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 401
    .end local v1           #i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_2
    sget-object v9, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 402
    .restart local v1       #i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 404
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, listener_name:Ljava/lang/String;
    const-string v9, "SensorManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Before sending... delay = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    sget v9, Landroid/hardware/SystemSensorManager;->sQueue:I

    invoke-static {v9, v3, v0, v4}, Landroid/hardware/SystemSensorManager;->send_delay(ILjava/lang/String;II)Z

    move-result v6

    .line 414
    .end local v1           #i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v3           #listener_name:Ljava/lang/String;
    :goto_1
    return v8

    .line 410
    :cond_4
    if-eq v7, v8, :cond_5

    const/4 v8, 0x2

    if-eq v7, v8, :cond_5

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    .line 411
    :cond_5
    sget v8, Landroid/hardware/SystemSensorManager;->sQueue:I

    const-string v9, "Sending .. normal delay 200ms"

    const v10, 0x30d40

    invoke-static {v8, v9, v0, v10}, Landroid/hardware/SystemSensorManager;->send_delay(ILjava/lang/String;II)Z

    move-result v6

    .line 412
    const-string v8, "SensorManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Set normal delay = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_6
    sget v8, Landroid/hardware/SystemSensorManager;->sQueue:I

    const/4 v9, -0x1

    invoke-static {v8, v5, v0, v9}, Landroid/hardware/SystemSensorManager;->sensors_enable_sensor(ILjava/lang/String;II)Z

    move-result v8

    goto :goto_1
.end method

.method private enableSensorLocked(Landroid/hardware/Sensor;I)Z
    .locals 6
    .parameter "sensor"
    .parameter "delay"

    .prologue
    .line 372
    const/4 v4, 0x0

    .line 373
    .local v4, result:Z
    sget-object v5, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 374
    .local v1, i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v1, p1}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 375
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 376
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getHandle()I

    move-result v0

    .line 377
    .local v0, handle:I
    sget v5, Landroid/hardware/SystemSensorManager;->sQueue:I

    invoke-static {v5, v3, v0, p2}, Landroid/hardware/SystemSensorManager;->sensors_enable_sensor(ILjava/lang/String;II)Z

    move-result v4

    .line 381
    .end local v0           #handle:I
    .end local v1           #i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v3           #name:Ljava/lang/String;
    :cond_1
    return v4
.end method

.method static native gyro_factory_test([I[S[F)I
.end method

.method static native mag_factory_test([I[I[I)I
.end method

.method private static native nativeClassInit()V
.end method

.method static native send_delay(ILjava/lang/String;II)Z
.end method

.method static native sensor_accel_calibrate(I)I
.end method

.method static native sensor_gyro_calibrate(I)I
.end method

.method static native sensors_calibration_available()I
.end method

.method static native sensors_calibration_get_gyro(DDDI)[F
.end method

.method static native sensors_create_queue()I
.end method

.method static native sensors_data_poll(I[F[I[J)I
.end method

.method static native sensors_destroy_queue(I)V
.end method

.method static native sensors_enable_sensor(ILjava/lang/String;II)Z
.end method

.method static native sensors_get_supported_func()I
.end method

.method private static native sensors_module_get_next_sensor(Landroid/hardware/Sensor;I)I
.end method

.method private static native sensors_module_init()I
.end method

.method static native sensors_set_delay(II)I
.end method


# virtual methods
.method protected getFullSensorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    sget-object v0, Landroid/hardware/SystemSensorManager;->sFullSensorsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSupportedFunction()I
    .locals 2

    .prologue
    .line 559
    const-string v0, "SensorManager"

    const-string/jumbo v1, "sensors_get_supported_func"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-static {}, Landroid/hardware/SystemSensorManager;->sensors_get_supported_func()I

    move-result v0

    return v0
.end method

.method protected registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;I)Z
    .locals 12
    .parameter "listener"
    .parameter "sensor"
    .parameter "delay"
    .parameter "handler"
    .parameter "gyroCalibrationLevel"

    .prologue
    .line 421
    const/4 v6, 0x1

    .line 422
    .local v6, result:Z
    sget-object v9, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v9

    .line 424
    const/4 v3, 0x0

    .line 425
    .local v3, l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :try_start_0
    sget-object v8, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 426
    .local v1, i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v1}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    if-ne v8, p1, :cond_0

    .line 427
    move-object v3, v1

    move-object v4, v3

    .line 433
    .end local v1           #i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .local v4, l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :goto_0
    if-nez v4, :cond_6

    .line 436
    move v5, p3

    .line 437
    .local v5, minDelay:I
    :try_start_1
    sget-object v8, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 438
    .restart local v1       #i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v1, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 439
    invoke-virtual {v1, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getDelay(Landroid/hardware/Sensor;)I

    move-result v8

    if-le v5, v8, :cond_1

    .line 440
    invoke-virtual {v1, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getDelay(Landroid/hardware/Sensor;)I

    move-result v5

    goto :goto_1

    .line 446
    .end local v1           #i:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_2
    new-instance v3, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    move-object/from16 v0, p4

    invoke-direct {v3, p0, p1, p2, v0}, Landroid/hardware/SystemSensorManager$ListenerDelegate;-><init>(Landroid/hardware/SystemSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 447
    .end local v4           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :try_start_2
    sget-object v8, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    sget-object v8, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 450
    sget-object v8, Landroid/hardware/SystemSensorManager;->sSensorThread:Landroid/hardware/SystemSensorManager$SensorThread;

    invoke-virtual {v8}, Landroid/hardware/SystemSensorManager$SensorThread;->startLocked()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 451
    invoke-direct {p0, p2, v5}, Landroid/hardware/SystemSensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 453
    sget-object v8, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 454
    const/4 v6, 0x0

    .line 473
    .end local v5           #minDelay:I
    :cond_3
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Listener : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/hardware/SystemSensorManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 474
    .local v7, strlistener:Ljava/lang/String;
    const-string v8, "SensorManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "registerListener :: handle = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getHandle()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  name= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " delay= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {v3, p2, p3}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->setDelay(Landroid/hardware/Sensor;I)V

    .line 476
    move/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->setGyroCalibrationLevel(I)V

    .line 477
    monitor-exit v9

    .line 479
    return v6

    .line 458
    .end local v7           #strlistener:Ljava/lang/String;
    .restart local v5       #minDelay:I
    :cond_4
    sget-object v8, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 459
    const/4 v6, 0x0

    goto :goto_2

    .line 463
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 465
    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v5           #minDelay:I
    .restart local v4       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_6
    :try_start_3
    invoke-virtual {v4, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->hasSensor(Landroid/hardware/Sensor;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 466
    invoke-virtual {v4, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->addSensor(Landroid/hardware/Sensor;)V

    .line 467
    invoke-direct {p0, p2, p3}, Landroid/hardware/SystemSensorManager;->enableSensorLocked(Landroid/hardware/Sensor;I)Z

    move-result v8

    if-nez v8, :cond_7

    .line 469
    invoke-virtual {v4, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 470
    const/4 v6, 0x0

    move-object v3, v4

    .end local v4           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    goto :goto_2

    .line 477
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    :goto_3
    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v8

    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    goto :goto_3

    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_7
    move-object v3, v4

    .end local v4           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v3       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    goto/16 :goto_2

    :cond_8
    move-object v4, v3

    .end local v3           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v4       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    goto/16 :goto_0
.end method

.method public runAccCalibration(I)I
    .locals 3
    .parameter "sensors"

    .prologue
    .line 532
    const-string v0, "SensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runAccCalibration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-static {p1}, Landroid/hardware/SystemSensorManager;->sensor_accel_calibrate(I)I

    move-result v0

    return v0
.end method

.method public runGyroCalibration(I)I
    .locals 3
    .parameter "sensors"

    .prologue
    .line 523
    const-string v0, "SensorManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "runGyroCalibration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    invoke-static {p1}, Landroid/hardware/SystemSensorManager;->sensor_gyro_calibrate(I)I

    move-result v0

    return v0
.end method

.method public runGyroFactoryTest([I[S[F)I
    .locals 2
    .parameter "result1"
    .parameter "result2"
    .parameter "result3"

    .prologue
    .line 541
    const-string v0, "SensorManager"

    const-string v1, "Gyro sensor FactoryTest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-static {p1, p2, p3}, Landroid/hardware/SystemSensorManager;->gyro_factory_test([I[S[F)I

    move-result v0

    return v0
.end method

.method public runMagFactoryTest([I[I[I)I
    .locals 2
    .parameter "result1"
    .parameter "result2"
    .parameter "result3"

    .prologue
    .line 550
    const-string v0, "SensorManager"

    const-string v1, "Mag sensor FactoryTest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-static {p1, p2, p3}, Landroid/hardware/SystemSensorManager;->mag_factory_test([I[I[I)I

    move-result v0

    return v0
.end method

.method protected unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 9
    .parameter "listener"
    .parameter "sensor"

    .prologue
    .line 485
    if-eqz p1, :cond_0

    .line 486
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Listener : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/SystemSensorManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 487
    .local v5, strlistener:Ljava/lang/String;
    const-string v6, "SensorManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unregisterListener:: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    .end local v5           #strlistener:Ljava/lang/String;
    :cond_0
    sget-object v7, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 491
    :try_start_0
    sget-object v6, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 492
    .local v4, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 493
    sget-object v6, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SystemSensorManager$ListenerDelegate;

    .line 494
    .local v2, l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_3

    .line 495
    if-nez p2, :cond_1

    .line 496
    sget-object v6, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 498
    invoke-virtual {v2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->getSensors()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 499
    .local v3, s:Landroid/hardware/Sensor;
    const v6, 0x7fffffff

    invoke-virtual {v2, v3, v6}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->setDelay(Landroid/hardware/Sensor;I)V

    .line 500
    invoke-direct {p0, v3}, Landroid/hardware/SystemSensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    goto :goto_1

    .line 512
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .end local v3           #s:Landroid/hardware/Sensor;
    .end local v4           #size:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 502
    .restart local v0       #i:I
    .restart local v2       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    .restart local v4       #size:I
    :cond_1
    :try_start_1
    invoke-virtual {v2, p2}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->removeSensor(Landroid/hardware/Sensor;)I

    move-result v6

    if-nez v6, :cond_2

    .line 505
    sget-object v6, Landroid/hardware/SystemSensorManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 506
    const v6, 0x7fffffff

    invoke-virtual {v2, p2, v6}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->setDelay(Landroid/hardware/Sensor;I)V

    .line 507
    invoke-direct {p0, p2}, Landroid/hardware/SystemSensorManager;->disableSensorLocked(Landroid/hardware/Sensor;)Z

    .line 512
    .end local v2           #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 514
    return-void

    .line 492
    .restart local v2       #l:Landroid/hardware/SystemSensorManager$ListenerDelegate;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
