.class final Lcom/android/server/Watchdog$HeartbeatHandler;
.super Landroid/os/Handler;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HeartbeatHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/Watchdog;


# direct methods
.method constructor <init>(Lcom/android/server/Watchdog;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 116
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 142
    :goto_0
    return-void

    .line 119
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iget v3, v3, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iget v1, v3, Lcom/android/server/Watchdog;->mReqRebootInterval:I

    .line 123
    .local v1, rebootInterval:I
    :goto_1
    iget-object v3, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iget v3, v3, Lcom/android/server/Watchdog;->mRebootInterval:I

    if-eq v3, v1, :cond_0

    .line 124
    iget-object v3, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iput v1, v3, Lcom/android/server/Watchdog;->mRebootInterval:I

    .line 127
    iget-object v3, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    invoke-virtual {v3, v5}, Lcom/android/server/Watchdog;->checkReboot(Z)V

    .line 130
    :cond_0
    iget-object v3, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iget-object v3, v3, Lcom/android/server/Watchdog;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 131
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v2, :cond_2

    .line 132
    iget-object v4, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iget-object v3, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iget-object v3, v3, Lcom/android/server/Watchdog;->mMonitors:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/Watchdog$Monitor;

    iput-object v3, v4, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    .line 133
    iget-object v3, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iget-object v3, v3, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    invoke-interface {v3}, Lcom/android/server/Watchdog$Monitor;->monitor()V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 119
    .end local v0           #i:I
    .end local v1           #rebootInterval:I
    .end local v2           #size:I
    :cond_1
    iget-object v3, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    iget-object v3, v3, Lcom/android/server/Watchdog;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "reboot_interval"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    .line 136
    .restart local v0       #i:I
    .restart local v1       #rebootInterval:I
    .restart local v2       #size:I
    :cond_2
    iget-object v4, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    monitor-enter v4

    .line 137
    :try_start_0
    iget-object v3, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/Watchdog;->mCompleted:Z

    .line 138
    iget-object v3, p0, Lcom/android/server/Watchdog$HeartbeatHandler;->this$0:Lcom/android/server/Watchdog;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/android/server/Watchdog;->mCurrentMonitor:Lcom/android/server/Watchdog$Monitor;

    .line 139
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 116
    :pswitch_data_0
    .packed-switch 0xa9e
        :pswitch_0
    .end packed-switch
.end method
