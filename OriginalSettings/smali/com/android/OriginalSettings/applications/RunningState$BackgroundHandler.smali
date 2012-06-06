.class final Lcom/android/OriginalSettings/applications/RunningState$BackgroundHandler;
.super Landroid/os/Handler;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "BackgroundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/applications/RunningState;


# direct methods
.method public constructor <init>(Lcom/android/OriginalSettings/applications/RunningState;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/OriginalSettings/applications/RunningState;

    .line 144
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 145
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    .line 149
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 167
    :goto_0
    return-void

    .line 151
    :pswitch_0
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/OriginalSettings/applications/RunningState;

    #calls: Lcom/android/OriginalSettings/applications/RunningState;->reset()V
    invoke-static {v1}, Lcom/android/OriginalSettings/applications/RunningState;->access$000(Lcom/android/OriginalSettings/applications/RunningState;)V

    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/OriginalSettings/applications/RunningState;

    iget-object v2, v1, Lcom/android/OriginalSettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/OriginalSettings/applications/RunningState;

    iget-boolean v1, v1, Lcom/android/OriginalSettings/applications/RunningState;->mResumed:Z

    if-nez v1, :cond_0

    .line 156
    monitor-exit v2

    goto :goto_0

    .line 158
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/OriginalSettings/applications/RunningState;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 160
    .local v0, cmd:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/OriginalSettings/applications/RunningState;

    iget-object v2, p0, Lcom/android/OriginalSettings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/OriginalSettings/applications/RunningState;

    iget-object v2, v2, Lcom/android/OriginalSettings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/OriginalSettings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/OriginalSettings/applications/RunningState;

    iget-object v3, v3, Lcom/android/OriginalSettings/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    #calls: Lcom/android/OriginalSettings/applications/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    invoke-static {v1, v2, v3}, Lcom/android/OriginalSettings/applications/RunningState;->access$100(Lcom/android/OriginalSettings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 161
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningState$BackgroundHandler;->this$0:Lcom/android/OriginalSettings/applications/RunningState;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/RunningState;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 162
    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 163
    invoke-virtual {p0, v4}, Lcom/android/OriginalSettings/applications/RunningState$BackgroundHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 164
    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/OriginalSettings/applications/RunningState$BackgroundHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 160
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
