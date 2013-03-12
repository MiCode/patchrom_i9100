.class Landroid/hardware/SystemSensorManager$ListenerDelegate$1;
.super Landroid/os/Handler;
.source "SystemSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SystemSensorManager$ListenerDelegate;-><init>(Landroid/hardware/SystemSensorManager;Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

.field final synthetic val$this$0:Landroid/hardware/SystemSensorManager;


# direct methods
.method constructor <init>(Landroid/hardware/SystemSensorManager$ListenerDelegate;Landroid/os/Looper;Landroid/hardware/SystemSensorManager;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    iput-object p3, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->val$this$0:Landroid/hardware/SystemSensorManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 223
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x26

    if-ne v3, v4, :cond_1

    .line 225
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/SensorEvent;

    .line 226
    .local v2, t:Landroid/hardware/SensorEvent;
    iget-object v3, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    .line 228
    .local v1, handle:I
    iget-object v3, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 242
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mFirstEvent:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 243
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mFirstEvent:Landroid/util/SparseBooleanArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 244
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    #getter for: Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v3}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->access$100(Landroid/hardware/SystemSensorManager$ListenerDelegate;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    iget-object v4, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    invoke-interface {v3, v4, v5}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 250
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    #getter for: Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v3}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->access$100(Landroid/hardware/SystemSensorManager$ListenerDelegate;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 251
    sget-object v3, Landroid/hardware/SystemSensorManager;->sPool:Landroid/hardware/SensorManager$SensorEventPool;

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager$SensorEventPool;->returnToPool(Landroid/hardware/SensorEvent;)V

    .line 253
    .end local v1           #handle:I
    .end local v2           #t:Landroid/hardware/SensorEvent;
    :cond_1
    return-void

    .line 233
    .restart local v1       #handle:I
    .restart local v2       #t:Landroid/hardware/SensorEvent;
    :pswitch_0
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensorAccuracies:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 234
    .local v0, accuracy:I
    iget v3, v2, Landroid/hardware/SensorEvent;->accuracy:I

    if-ltz v3, :cond_0

    iget v3, v2, Landroid/hardware/SensorEvent;->accuracy:I

    if-eq v0, v3, :cond_0

    .line 235
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    iget-object v3, v3, Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensorAccuracies:Landroid/util/SparseIntArray;

    iget v4, v2, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 236
    iget-object v3, p0, Landroid/hardware/SystemSensorManager$ListenerDelegate$1;->this$1:Landroid/hardware/SystemSensorManager$ListenerDelegate;

    #getter for: Landroid/hardware/SystemSensorManager$ListenerDelegate;->mSensorEventListener:Landroid/hardware/SensorEventListener;
    invoke-static {v3}, Landroid/hardware/SystemSensorManager$ListenerDelegate;->access$100(Landroid/hardware/SystemSensorManager$ListenerDelegate;)Landroid/hardware/SensorEventListener;

    move-result-object v3

    iget-object v4, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget v5, v2, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-interface {v3, v4, v5}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 237
    const-string v3, "SensorManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onAccuracyChanged :: accuracy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/hardware/SensorEvent;->accuracy:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
