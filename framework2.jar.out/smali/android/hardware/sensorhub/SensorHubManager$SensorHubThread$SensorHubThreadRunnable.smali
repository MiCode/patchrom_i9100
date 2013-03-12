.class Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread$SensorHubThreadRunnable;
.super Ljava/lang/Object;
.source "SensorHubManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorHubThreadRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;


# direct methods
.method constructor <init>(Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread$SensorHubThreadRunnable;->this$0:Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 143
    return-void
.end method

.method private open()Z
    .locals 1

    .prologue
    .line 146
    invoke-static {}, Landroid/hardware/sensorhub/SensorHubManager;->sensorhubs_create_queue()I

    move-result v0

    invoke-static {v0}, Landroid/hardware/sensorhub/SensorHubManager;->access$002(I)I

    .line 147
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 151
    const/16 v7, 0x800

    new-array v3, v7, [B

    .line 152
    .local v3, buffer:[B
    const/4 v7, 0x3

    new-array v5, v7, [F

    .line 153
    .local v5, values:[F
    const/4 v7, 0x1

    new-array v9, v7, [I

    .line 154
    .local v9, version:[I
    const/4 v7, 0x1

    new-array v10, v7, [I

    .line 155
    .local v10, type:[I
    const/4 v7, 0x1

    new-array v11, v7, [I

    .line 156
    .local v11, sizeofdata:[I
    const/4 v7, 0x1

    new-array v6, v7, [J

    .line 158
    .local v6, timestamp:[J
    const/4 v7, -0x8

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 159
    const-string v7, "SensorHubManager"

    const-string v8, "=======>>>Sensor Hub Thread RUNNING <<<========"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-direct/range {p0 .. p0}, Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread$SensorHubThreadRunnable;->open()Z

    move-result v7

    if-nez v7, :cond_0

    .line 197
    :goto_0
    return-void

    .line 165
    :cond_0
    monitor-enter p0

    .line 166
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread$SensorHubThreadRunnable;->this$0:Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;->mSensorHubsReady:Z

    .line 167
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 168
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 171
    :goto_1
    invoke-static {}, Landroid/hardware/sensorhub/SensorHubManager;->access$000()I

    move-result v7

    move-object v8, v3

    move-object v12, v5

    move-object v13, v6

    invoke-static/range {v7 .. v13}, Landroid/hardware/sensorhub/SensorHubManager;->sensorhubs_data_poll(I[B[I[I[I[F[J)I

    move-result v15

    .line 172
    .local v15, sensorhub:I
    const/4 v7, 0x0

    aget v4, v11, v7

    .line 174
    .local v4, length:I
    sget-object v8, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 175
    const/4 v7, -0x1

    if-eq v15, v7, :cond_1

    :try_start_1
    sget-object v7, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 176
    :cond_1
    const/4 v7, -0x1

    if-ne v15, v7, :cond_2

    sget-object v7, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 177
    const-string v7, "SensorHubManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sensorhubs_data_poll() failed, we bail out: sensorHub="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_2
    invoke-static {}, Landroid/hardware/sensorhub/SensorHubManager;->access$000()I

    move-result v7

    invoke-static {v7}, Landroid/hardware/sensorhub/SensorHubManager;->sensorhubs_destroy_queue(I)V

    .line 180
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/hardware/sensorhub/SensorHubManager;->access$002(I)I

    .line 181
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread$SensorHubThreadRunnable;->this$0:Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;

    const/4 v12, 0x0

    iput-object v12, v7, Landroid/hardware/sensorhub/SensorHubManager$SensorHubThread;->mThread:Ljava/lang/Thread;

    .line 182
    monitor-exit v8

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 168
    .end local v4           #length:I
    .end local v15           #sensorhub:I
    :catchall_1
    move-exception v7

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v7

    .line 184
    .restart local v4       #length:I
    .restart local v15       #sensorhub:I
    :cond_3
    :try_start_3
    sget-object v7, Landroid/hardware/sensorhub/SensorHubManager;->sHandleToSensorHub:Landroid/util/SparseArray;

    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/sensorhub/SensorHub;

    .line 185
    .local v2, sensorhubObject:Landroid/hardware/sensorhub/SensorHub;
    if-eqz v2, :cond_5

    .line 186
    sget-object v7, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 187
    .local v16, size:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_5

    .line 188
    sget-object v7, Landroid/hardware/sensorhub/SensorHubManager;->sListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;

    .line 189
    .local v1, listener:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    invoke-virtual {v1, v2}, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->hasSensorHub(Landroid/hardware/sensorhub/SensorHub;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 190
    invoke-virtual/range {v1 .. v6}, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->onGetSensorHubDataLocked(Landroid/hardware/sensorhub/SensorHub;[BI[F[J)V

    .line 187
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 195
    .end local v1           #listener:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;
    .end local v14           #i:I
    .end local v16           #size:I
    :cond_5
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method
