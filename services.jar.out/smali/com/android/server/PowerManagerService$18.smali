.class Lcom/android/server/PowerManagerService$18;
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
    .line 4973
    iput-object p1, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 4998
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 4979
    iget-object v0, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 4981
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$10300(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4982
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Light onSensorChanged : return, isScreenTurningOffLocked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->isScreenTurningOffLocked()Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$10300(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4983
    monitor-exit v1

    .line 4993
    :goto_0
    return-void

    .line 4985
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$10400(Lcom/android/server/PowerManagerService;)Z

    move-result v3

    #calls: Lcom/android/server/PowerManagerService;->handleLightSensorValue(IZ)V
    invoke-static {v0, v2, v3}, Lcom/android/server/PowerManagerService;->access$10500(Lcom/android/server/PowerManagerService;IZ)V

    .line 4986
    iget-object v0, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$10400(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4990
    iget-object v0, p0, Lcom/android/server/PowerManagerService$18;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mWaitingForFirstLightSensor:Z
    invoke-static {v0, v2}, Lcom/android/server/PowerManagerService;->access$10402(Lcom/android/server/PowerManagerService;Z)Z

    .line 4992
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
