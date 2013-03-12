.class Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate$1;
.super Landroid/os/Handler;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;-><init>(Landroid/hardware/sensorhub/SensorHubManager;Landroid/hardware/sensorhub/SensorHubEventListener;Landroid/hardware/sensorhub/SensorHub;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;

.field final synthetic val$this$0:Landroid/hardware/sensorhub/SensorHubManager;


# direct methods
.method constructor <init>(Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;Landroid/os/Looper;Landroid/hardware/sensorhub/SensorHubManager;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate$1;->this$1:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;

    iput-object p3, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate$1;->val$this$0:Landroid/hardware/sensorhub/SensorHubManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 215
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/sensorhub/SensorHubEvent;

    .line 216
    .local v1, t:Landroid/hardware/sensorhub/SensorHubEvent;
    iget-object v2, v1, Landroid/hardware/sensorhub/SensorHubEvent;->sensorhub:Landroid/hardware/sensorhub/SensorHub;

    invoke-virtual {v2}, Landroid/hardware/sensorhub/SensorHub;->getHandle()I

    move-result v0

    .line 217
    .local v0, handle:I
    iget-object v2, p0, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate$1;->this$1:Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;

    #getter for: Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->mSensorHubEventListener:Landroid/hardware/sensorhub/SensorHubEventListener;
    invoke-static {v2}, Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;->access$100(Landroid/hardware/sensorhub/SensorHubManager$ListenerDelegate;)Landroid/hardware/sensorhub/SensorHubEventListener;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/hardware/sensorhub/SensorHubEventListener;->onGetSensorHubData(Landroid/hardware/sensorhub/SensorHubEvent;)V

    .line 218
    invoke-static {}, Landroid/hardware/sensorhub/SensorHubManager;->access$200()Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/sensorhub/SensorHubManager$SensorHubEventPool;->returnToPool(Landroid/hardware/sensorhub/SensorHubEvent;)V

    .line 219
    return-void
.end method
