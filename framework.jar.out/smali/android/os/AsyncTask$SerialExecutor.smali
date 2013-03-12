.class Landroid/os/AsyncTask$SerialExecutor;
.super Ljava/lang/Object;
.source "AsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerialExecutor"
.end annotation


# instance fields
.field mActive:Ljava/lang/Runnable;

.field final mTasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 222
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 223
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/os/AsyncTask$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/AsyncTask$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 222
    invoke-direct {p0}, Landroid/os/AsyncTask$SerialExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/AsyncTask$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    new-instance v1, Landroid/os/AsyncTask$SerialExecutor$1;

    invoke-direct {v1, p0, p1}, Landroid/os/AsyncTask$SerialExecutor$1;-><init>(Landroid/os/AsyncTask$SerialExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Landroid/os/AsyncTask$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0}, Landroid/os/AsyncTask$SerialExecutor;->scheduleNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_0
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized scheduleNext()V
    .locals 2

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/AsyncTask$SerialExecutor;->mTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Landroid/os/AsyncTask$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 243
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/os/AsyncTask$SerialExecutor;->mActive:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :cond_0
    monitor-exit p0

    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
