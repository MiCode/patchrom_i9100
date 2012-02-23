.class Landroid/hardware/motion/MotionRecognitionService$3;
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
    .line 857
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$3;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 859
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 861
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 19
    .parameter "event"

    .prologue
    .line 864
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v17, v0

    .line 866
    .local v17, sensor:Landroid/hardware/Sensor;
    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 867
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/motion/MotionRecognitionService$3;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$400(Landroid/hardware/motion/MotionRecognitionService;)[D

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-double v3, v3

    aput-wide v3, v1, v2

    .line 868
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/motion/MotionRecognitionService$3;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$400(Landroid/hardware/motion/MotionRecognitionService;)[D

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    float-to-double v3, v3

    aput-wide v3, v1, v2

    .line 869
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/motion/MotionRecognitionService$3;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionService;->access$400(Landroid/hardware/motion/MotionRecognitionService;)[D

    move-result-object v1

    const/4 v2, 0x2

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    float-to-double v3, v3

    aput-wide v3, v1, v2

    .line 874
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/motion/MotionRecognitionService$3;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget v1, v1, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 876
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/motion/MotionRecognitionService$3;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-virtual {v1}, Landroid/hardware/motion/MotionRecognitionService;->sensorLogWrite()V

    .line 877
    const/16 v16, 0x0

    .line 878
    .local v16, motion:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/motion/MotionRecognitionService$3;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v0, v1, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 879
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/motion/MotionRecognitionService$3;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-boolean v1, v1, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-eqz v1, :cond_0

    .line 880
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/motion/MotionRecognitionService$3;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/motion/MotionRecognitionService$3;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$400(Landroid/hardware/motion/MotionRecognitionService;)[D

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/motion/MotionRecognitionService$3;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D
    invoke-static {v4}, Landroid/hardware/motion/MotionRecognitionService;->access$400(Landroid/hardware/motion/MotionRecognitionService;)[D

    move-result-object v4

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/hardware/motion/MotionRecognitionService$3;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D
    invoke-static {v6}, Landroid/hardware/motion/MotionRecognitionService;->access$400(Landroid/hardware/motion/MotionRecognitionService;)[D

    move-result-object v6

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/hardware/motion/MotionRecognitionService$3;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D
    invoke-static {v8}, Landroid/hardware/motion/MotionRecognitionService;->access$500(Landroid/hardware/motion/MotionRecognitionService;)[D

    move-result-object v8

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/hardware/motion/MotionRecognitionService$3;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D
    invoke-static {v10}, Landroid/hardware/motion/MotionRecognitionService;->access$500(Landroid/hardware/motion/MotionRecognitionService;)[D

    move-result-object v10

    const/4 v11, 0x1

    aget-wide v10, v10, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/motion/MotionRecognitionService$3;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    #getter for: Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D
    invoke-static {v12}, Landroid/hardware/motion/MotionRecognitionService;->access$500(Landroid/hardware/motion/MotionRecognitionService;)[D

    move-result-object v12

    const/4 v13, 0x2

    aget-wide v12, v12, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/motion/MotionRecognitionService$3;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget v14, v14, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService$3;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget v15, v15, Landroid/hardware/motion/MotionRecognitionService;->mSensorDelayInMsec:I

    #calls: Landroid/hardware/motion/MotionRecognitionService;->native_getscenario_id(DDDDDDII)I
    invoke-static/range {v1 .. v15}, Landroid/hardware/motion/MotionRecognitionService;->access$600(Landroid/hardware/motion/MotionRecognitionService;DDDDDDII)I

    move-result v16

    .line 884
    :cond_0
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/hardware/motion/MotionRecognitionService$3;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    move/from16 v0, v16

    #calls: Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(I)V
    invoke-static {v1, v0}, Landroid/hardware/motion/MotionRecognitionService;->access$700(Landroid/hardware/motion/MotionRecognitionService;I)V

    .line 889
    .end local v16           #motion:I
    :cond_1
    return-void

    .line 884
    .restart local v16       #motion:I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
