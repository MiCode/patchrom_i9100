.class Lcom/android/server/PowerManagerService$5;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$ScreenOnListener;


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
    .line 2097
    iput-object p1, p0, Lcom/android/server/PowerManagerService$5;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenOn()V
    .locals 5

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/android/server/PowerManagerService$5;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 2100
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$5;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6100(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2101
    iget-object v0, p0, Lcom/android/server/PowerManagerService$5;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/PowerManagerService;->mPreparingForScreenOn:Z
    invoke-static {v0, v2}, Lcom/android/server/PowerManagerService;->access$6102(Lcom/android/server/PowerManagerService;Z)Z

    .line 2102
    iget-object v0, p0, Lcom/android/server/PowerManagerService$5;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v2, p0, Lcom/android/server/PowerManagerService$5;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mPowerState:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$1300(Lcom/android/server/PowerManagerService;)I

    move-result v2

    const/4 v3, 0x1

    #calls: Lcom/android/server/PowerManagerService;->updateLightsLocked(II)V
    invoke-static {v0, v2, v3}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;II)V

    .line 2103
    const/16 v0, 0xaa7

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/PowerManagerService$5;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v4

    iget v4, v4, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2105
    iget-object v0, p0, Lcom/android/server/PowerManagerService$5;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mBroadcastWakeLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6300(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 2107
    :cond_0
    monitor-exit v1

    .line 2108
    return-void

    .line 2107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
