.class Landroid/hardware/motion/MotionRecognitionService$7;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0
    .parameter

    .prologue
    .line 1461
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 1463
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1465
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 22
    .parameter "event"

    .prologue
    .line 1468
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v20, v0

    .line 1470
    .local v20, sensor:Landroid/hardware/Sensor;
    invoke-virtual/range {v20 .. v20}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 1471
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v2, v2

    #setter for: Landroid/hardware/motion/MotionRecognitionService;->mPostLightVal:I
    invoke-static {v1, v2}, Landroid/hardware/motion/MotionRecognitionService;->access$1202(Landroid/hardware/motion/MotionRecognitionService;I)I

    .line 1476
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget v1, v1, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    .line 1478
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-virtual {v1}, Landroid/hardware/motion/MotionRecognitionService;->sensorLogWrite()V

    .line 1479
    const/16 v19, 0x0

    .line 1480
    .local v19, motion:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v0, v1, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    move-object/from16 v21, v0

    monitor-enter v21

    .line 1481
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-boolean v1, v1, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-eqz v1, :cond_0

    .line 1483
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$900(Landroid/hardware/motion/MotionRecognitionService;)[D

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D
    invoke-static {v4}, Landroid/hardware/motion/MotionRecognitionService;->access$900(Landroid/hardware/motion/MotionRecognitionService;)[D

    move-result-object v4

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D
    invoke-static {v6}, Landroid/hardware/motion/MotionRecognitionService;->access$900(Landroid/hardware/motion/MotionRecognitionService;)[D

    move-result-object v6

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionService;->access$1000(Landroid/hardware/motion/MotionRecognitionService;)[D

    move-result-object v8

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$1000(Landroid/hardware/motion/MotionRecognitionService;)[D

    move-result-object v10

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D
    invoke-static {v12}, Landroid/hardware/motion/MotionRecognitionService;->access$1000(Landroid/hardware/motion/MotionRecognitionService;)[D

    move-result-object v12

    const/4 v13, 0x2

    aget-wide v12, v12, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostProxVal:S
    invoke-static {v14}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)S

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostLightVal:I
    invoke-static {v15}, Landroid/hardware/motion/MotionRecognitionService;->access$1200(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move-object/from16 v16, v0

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostTouch:Z
    invoke-static/range {v16 .. v16}, Landroid/hardware/motion/MotionRecognitionService;->access$1300(Landroid/hardware/motion/MotionRecognitionService;)Z

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mSensorDelayInMsec:I

    move/from16 v18, v0

    #calls: Landroid/hardware/motion/MotionRecognitionService;->native_getscenario_id(DDDDDDSIZII)I
    invoke-static/range {v1 .. v18}, Landroid/hardware/motion/MotionRecognitionService;->access$1400(Landroid/hardware/motion/MotionRecognitionService;DDDDDDSIZII)I

    move-result v19

    .line 1488
    :cond_0
    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1489
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/motion/MotionRecognitionService$7;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move/from16 v0, v19

    #calls: Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(I)V
    invoke-static {v1, v0}, Landroid/hardware/motion/MotionRecognitionService;->access$1500(Landroid/hardware/motion/MotionRecognitionService;I)V

    .line 1492
    .end local v19           #motion:I
    :cond_1
    return-void

    .line 1488
    .restart local v19       #motion:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
