.class Lcom/android/server/PowerManagerService$17;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 4877
    iput-object p1, p0, Lcom/android/server/PowerManagerService$17;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 4918
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 14
    .parameter "event"

    .prologue
    .line 4879
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 4880
    .local v3, milliseconds:J
    iget-object v8, p0, Lcom/android/server/PowerManagerService$17;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v9

    monitor-enter v9

    .line 4881
    :try_start_0
    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x0

    aget v1, v8, v10

    .line 4882
    .local v1, distance:F
    iget-object v8, p0, Lcom/android/server/PowerManagerService$17;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$10100(Lcom/android/server/PowerManagerService;)J

    move-result-wide v10

    sub-long v6, v3, v10

    .line 4883
    .local v6, timeSinceLastEvent:J
    iget-object v8, p0, Lcom/android/server/PowerManagerService$17;->this$0:Lcom/android/server/PowerManagerService;

    #setter for: Lcom/android/server/PowerManagerService;->mLastProximityEventTime:J
    invoke-static {v8, v3, v4}, Lcom/android/server/PowerManagerService;->access$10102(Lcom/android/server/PowerManagerService;J)J

    .line 4884
    iget-object v8, p0, Lcom/android/server/PowerManagerService$17;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$3600(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/PowerManagerService$17;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$10200(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4885
    const/4 v5, 0x0

    .line 4888
    .local v5, proximityTaskQueued:Z
    float-to-double v10, v1

    const-wide/16 v12, 0x0

    cmpl-double v8, v10, v12

    if-ltz v8, :cond_1

    const/high16 v8, 0x40a0

    cmpg-float v8, v1, v8

    if-gez v8, :cond_1

    iget-object v8, p0, Lcom/android/server/PowerManagerService$17;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$1800(Lcom/android/server/PowerManagerService;)Landroid/hardware/Sensor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v8

    cmpg-float v8, v1, v8

    if-gez v8, :cond_1

    const/4 v0, 0x1

    .line 4892
    .local v0, active:Z
    :goto_0
    const-string v8, "PowerManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mProximityListener.onSensorChanged active: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4894
    const-wide/16 v10, 0x3e8

    cmp-long v8, v6, v10

    if-gez v8, :cond_3

    .line 4896
    iget-object v10, p0, Lcom/android/server/PowerManagerService$17;->this$0:Lcom/android/server/PowerManagerService;

    if-eqz v0, :cond_2

    const/4 v8, 0x1

    :goto_1
    #setter for: Lcom/android/server/PowerManagerService;->mProximityPendingValue:I
    invoke-static {v10, v8}, Lcom/android/server/PowerManagerService;->access$9102(Lcom/android/server/PowerManagerService;I)I

    .line 4897
    iget-object v8, p0, Lcom/android/server/PowerManagerService$17;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$3600(Lcom/android/server/PowerManagerService;)Landroid/os/Handler;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/PowerManagerService$17;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityTask:Ljava/lang/Runnable;
    invoke-static {v10}, Lcom/android/server/PowerManagerService;->access$10200(Lcom/android/server/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v10

    const-wide/16 v11, 0x3e8

    sub-long/2addr v11, v6

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4898
    const/4 v5, 0x1

    .line 4906
    :goto_2
    iget-object v8, p0, Lcom/android/server/PowerManagerService$17;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$9300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->isHeld()Z

    move-result v2

    .line 4907
    .local v2, held:Z
    if-nez v2, :cond_4

    if-eqz v5, :cond_4

    .line 4909
    iget-object v8, p0, Lcom/android/server/PowerManagerService$17;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$9300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->acquire()V

    .line 4913
    :cond_0
    :goto_3
    monitor-exit v9

    .line 4914
    return-void

    .line 4888
    .end local v0           #active:Z
    .end local v2           #held:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 4896
    .restart local v0       #active:Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 4901
    :cond_3
    iget-object v8, p0, Lcom/android/server/PowerManagerService$17;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v10, -0x1

    #setter for: Lcom/android/server/PowerManagerService;->mProximityPendingValue:I
    invoke-static {v8, v10}, Lcom/android/server/PowerManagerService;->access$9102(Lcom/android/server/PowerManagerService;I)I

    .line 4902
    iget-object v8, p0, Lcom/android/server/PowerManagerService$17;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->proximityChangedLocked(Z)V
    invoke-static {v8, v0}, Lcom/android/server/PowerManagerService;->access$9200(Lcom/android/server/PowerManagerService;Z)V

    goto :goto_2

    .line 4913
    .end local v0           #active:Z
    .end local v1           #distance:F
    .end local v5           #proximityTaskQueued:Z
    .end local v6           #timeSinceLastEvent:J
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 4910
    .restart local v0       #active:Z
    .restart local v1       #distance:F
    .restart local v2       #held:Z
    .restart local v5       #proximityTaskQueued:Z
    .restart local v6       #timeSinceLastEvent:J
    :cond_4
    if-eqz v2, :cond_0

    if-nez v5, :cond_0

    .line 4911
    :try_start_1
    iget-object v8, p0, Lcom/android/server/PowerManagerService$17;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v8}, Lcom/android/server/PowerManagerService;->access$9300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method
