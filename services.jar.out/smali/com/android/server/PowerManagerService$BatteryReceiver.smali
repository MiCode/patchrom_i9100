.class final Lcom/android/server/PowerManagerService$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BatteryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 538
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$BatteryReceiver;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 541
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v2

    monitor-enter v2

    .line 542
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsPowered:Z
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$900(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    .line 543
    .local v0, wasPowered:Z
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v3, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBatteryService:Lcom/android/server/BatteryService;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$1000(Lcom/android/server/PowerManagerService;)Lcom/android/server/BatteryService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/BatteryService;->isPowered()Z

    move-result v3

    #setter for: Lcom/android/server/PowerManagerService;->mIsPowered:Z
    invoke-static {v1, v3}, Lcom/android/server/PowerManagerService;->access$902(Lcom/android/server/PowerManagerService;Z)Z

    .line 545
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mIsPowered:Z
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$900(Lcom/android/server/PowerManagerService;)Z

    move-result v1

    if-eq v1, v0, :cond_2

    .line 547
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mPowerIsChanged:Z
    invoke-static {v1, v3}, Lcom/android/server/PowerManagerService;->access$1102(Lcom/android/server/PowerManagerService;Z)Z

    .line 550
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->updateWakeLockLocked()V
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$1200(Lcom/android/server/PowerManagerService;)V

    .line 562
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 563
    if-eqz v0, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPowerState:I
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$1300(Lcom/android/server/PowerManagerService;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    iget-boolean v1, v1, Lcom/android/server/PowerManagerService;->mUnplugTurnsOnScreen:Z

    if-eqz v1, :cond_1

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    const-string v4, "battery plug"

    #setter for: Lcom/android/server/PowerManagerService;->mUserActivityReason:Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/android/server/PowerManagerService;->access$1402(Lcom/android/server/PowerManagerService;Ljava/lang/String;)Ljava/lang/String;

    .line 566
    iget-object v1, p0, Lcom/android/server/PowerManagerService$BatteryReceiver;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->forceUserActivityLocked()V
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$1500(Lcom/android/server/PowerManagerService;)V

    .line 568
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 570
    :cond_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 571
    return-void

    .line 568
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 570
    .end local v0           #wasPowered:Z
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
