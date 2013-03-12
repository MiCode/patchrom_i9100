.class Lcom/android/server/PowerManagerService$13;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 4046
    iput-object p1, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4048
    iget-object v1, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v2

    monitor-enter v2

    .line 4049
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$9400(Lcom/android/server/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$9500(Lcom/android/server/PowerManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4050
    :cond_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$9600(Lcom/android/server/PowerManagerService;)F

    move-result v1

    float-to-int v0, v1

    .line 4051
    .local v0, value:I
    iget-object v1, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingDecrease:Z
    invoke-static {v1, v3}, Lcom/android/server/PowerManagerService;->access$9402(Lcom/android/server/PowerManagerService;Z)Z

    .line 4052
    iget-object v1, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingIncrease:Z
    invoke-static {v1, v3}, Lcom/android/server/PowerManagerService;->access$9502(Lcom/android/server/PowerManagerService;Z)Z

    .line 4053
    iget-object v1, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v3, 0x0

    #calls: Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V
    invoke-static {v1, v0, v3}, Lcom/android/server/PowerManagerService;->access$9700(Lcom/android/server/PowerManagerService;IZ)V

    .line 4055
    .end local v0           #value:I
    :cond_1
    monitor-exit v2

    .line 4056
    return-void

    .line 4055
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
