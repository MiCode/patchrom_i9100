.class Lcom/android/OriginalSettings/applications/RunningState$1;
.super Landroid/os/Handler;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mNextUpdate:I

.field final synthetic this$0:Lcom/android/OriginalSettings/applications/RunningState;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/applications/RunningState;)V
    .locals 1
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/OriginalSettings/applications/RunningState$1;->this$0:Lcom/android/OriginalSettings/applications/RunningState;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/OriginalSettings/applications/RunningState$1;->mNextUpdate:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x4

    .line 177
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 179
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    :goto_1
    iput v1, p0, Lcom/android/OriginalSettings/applications/RunningState$1;->mNextUpdate:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 184
    :pswitch_1
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningState$1;->this$0:Lcom/android/OriginalSettings/applications/RunningState;

    iget-object v2, v1, Lcom/android/OriginalSettings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningState$1;->this$0:Lcom/android/OriginalSettings/applications/RunningState;

    iget-boolean v1, v1, Lcom/android/OriginalSettings/applications/RunningState;->mResumed:Z

    if-nez v1, :cond_2

    .line 186
    monitor-exit v2

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/applications/RunningState$1;->removeMessages(I)V

    .line 190
    invoke-virtual {p0, v3}, Lcom/android/OriginalSettings/applications/RunningState$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 191
    .local v0, m:Landroid/os/Message;
    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/OriginalSettings/applications/RunningState$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 193
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningState$1;->this$0:Lcom/android/OriginalSettings/applications/RunningState;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/RunningState;->mRefreshUiListener:Lcom/android/OriginalSettings/applications/RunningState$OnRefreshUiListener;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/android/OriginalSettings/applications/RunningState$1;->this$0:Lcom/android/OriginalSettings/applications/RunningState;

    iget-object v1, v1, Lcom/android/OriginalSettings/applications/RunningState;->mRefreshUiListener:Lcom/android/OriginalSettings/applications/RunningState$OnRefreshUiListener;

    iget v2, p0, Lcom/android/OriginalSettings/applications/RunningState$1;->mNextUpdate:I

    invoke-interface {v1, v2}, Lcom/android/OriginalSettings/applications/RunningState$OnRefreshUiListener;->onRefreshUi(I)V

    .line 197
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/OriginalSettings/applications/RunningState$1;->mNextUpdate:I

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
