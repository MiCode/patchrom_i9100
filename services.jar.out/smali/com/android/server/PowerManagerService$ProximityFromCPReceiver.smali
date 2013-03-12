.class final Lcom/android/server/PowerManagerService$ProximityFromCPReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProximityFromCPReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/server/PowerManagerService$ProximityFromCPReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 602
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$ProximityFromCPReceiver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 605
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ProximityFromCPReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v1, "cmd"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    #setter for: Lcom/android/server/PowerManagerService;->mBoolProximityCP:Z
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$1702(Lcom/android/server/PowerManagerService;Z)Z

    .line 606
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ProximityFromCPReceiver : onReceive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PowerManagerService$ProximityFromCPReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBoolProximityCP:Z
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1700(Lcom/android/server/PowerManagerService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ProximityFromCPReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBoolProximityCP:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$1700(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ProximityFromCPReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$1900(Lcom/android/server/PowerManagerService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PowerManagerService$ProximityFromCPReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v1, v1, Lcom/android/server/PowerManagerService;->mProximityListenerForDataCall:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/PowerManagerService$ProximityFromCPReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximitySensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1800(Lcom/android/server/PowerManagerService;)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 615
    :goto_0
    return-void

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$ProximityFromCPReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$1900(Lcom/android/server/PowerManagerService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/PowerManagerService$ProximityFromCPReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v1, v1, Lcom/android/server/PowerManagerService;->mProximityListenerForDataCall:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method
