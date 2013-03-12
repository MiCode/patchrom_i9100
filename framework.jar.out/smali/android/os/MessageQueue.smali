.class public Landroid/os/MessageQueue;
.super Ljava/lang/Object;
.source "MessageQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/MessageQueue$IdleHandler;
    }
.end annotation


# instance fields
.field private mBlocked:Z

.field private final mIdleHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/MessageQueue$IdleHandler;",
            ">;"
        }
    .end annotation
.end field

.field mMessages:Landroid/os/Message;

.field private mNextBarrierToken:I

.field private mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

.field private mPtr:I

.field private final mQuitAllowed:Z

.field private mQuiting:Z


# direct methods
.method constructor <init>(Z)V
    .locals 1
    .parameter "quitAllowed"

    .prologue
    .line 103
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    .line 104
    iput-boolean p1, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    .line 105
    invoke-direct {p0}, Landroid/os/MessageQueue;->nativeInit()V

    .line 106
    return-void
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeInit()V
.end method

.method private native nativePollOnce(II)V
.end method

.method private native nativeWake(I)V
.end method


# virtual methods
.method public final addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 2
    .parameter "handler"

    .prologue
    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Can\'t add a null IdleHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    monitor-exit p0

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final enqueueMessage(Landroid/os/Message;J)Z
    .locals 7
    .parameter "msg"
    .parameter "when"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 284
    invoke-virtual {p1}, Landroid/os/Message;->isInUse()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 285
    new-instance v4, Landroid/util/AndroidRuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " This message is already in use."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 287
    :cond_0
    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v5, :cond_1

    .line 288
    new-instance v4, Landroid/util/AndroidRuntimeException;

    const-string v5, "Message must have a target."

    invoke-direct {v4, v5}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 292
    :cond_1
    monitor-enter p0

    .line 293
    :try_start_0
    iget-boolean v5, p0, Landroid/os/MessageQueue;->mQuiting:Z

    if-eqz v5, :cond_2

    .line 294
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Landroid/os/Message;->target:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sending message to a Handler on a dead thread"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v4, "MessageQueue"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    monitor-exit p0

    .line 330
    .end local v0           #e:Ljava/lang/RuntimeException;
    :goto_0
    return v1

    .line 300
    :cond_2
    iput-wide p2, p1, Landroid/os/Message;->when:J

    .line 301
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 302
    .local v2, p:Landroid/os/Message;
    if-eqz v2, :cond_3

    const-wide/16 v5, 0x0

    cmp-long v5, p2, v5

    if-eqz v5, :cond_3

    iget-wide v5, v2, Landroid/os/Message;->when:J

    cmp-long v5, p2, v5

    if-gez v5, :cond_5

    .line 304
    :cond_3
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 305
    iput-object p1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 306
    iget-boolean v1, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 326
    .local v1, needWake:Z
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    if-eqz v1, :cond_4

    .line 328
    iget v5, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v5}, Landroid/os/MessageQueue;->nativeWake(I)V

    :cond_4
    move v1, v4

    .line 330
    goto :goto_0

    .line 311
    .end local v1           #needWake:Z
    :cond_5
    :try_start_1
    iget-boolean v5, p0, Landroid/os/MessageQueue;->mBlocked:Z

    if-eqz v5, :cond_6

    iget-object v5, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v5, :cond_6

    invoke-virtual {p1}, Landroid/os/Message;->isAsynchronous()Z

    move-result v5

    if-eqz v5, :cond_6

    move v1, v4

    .line 314
    .restart local v1       #needWake:Z
    :cond_6
    :goto_2
    move-object v3, v2

    .line 315
    .local v3, prev:Landroid/os/Message;
    iget-object v2, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 316
    if-eqz v2, :cond_7

    iget-wide v5, v2, Landroid/os/Message;->when:J

    cmp-long v5, p2, v5

    if-gez v5, :cond_8

    .line 323
    :cond_7
    iput-object v2, p1, Landroid/os/Message;->next:Landroid/os/Message;

    .line 324
    iput-object p1, v3, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 326
    .end local v1           #needWake:Z
    .end local v2           #p:Landroid/os/Message;
    .end local v3           #prev:Landroid/os/Message;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 319
    .restart local v1       #needWake:Z
    .restart local v2       #p:Landroid/os/Message;
    .restart local v3       #prev:Landroid/os/Message;
    :cond_8
    if-eqz v1, :cond_6

    :try_start_2
    invoke-virtual {v2}, Landroid/os/Message;->isAsynchronous()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-eqz v5, :cond_6

    .line 320
    const/4 v1, 0x0

    goto :goto_2
.end method

.method final enqueueSyncBarrier(J)I
    .locals 6
    .parameter "when"

    .prologue
    .line 230
    monitor-enter p0

    .line 231
    :try_start_0
    iget v3, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/os/MessageQueue;->mNextBarrierToken:I

    .line 232
    .local v3, token:I
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 233
    .local v0, msg:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 235
    const/4 v2, 0x0

    .line 236
    .local v2, prev:Landroid/os/Message;
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 237
    .local v1, p:Landroid/os/Message;
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_0

    .line 238
    :goto_0
    if-eqz v1, :cond_0

    iget-wide v4, v1, Landroid/os/Message;->when:J

    cmp-long v4, v4, p1

    if-gtz v4, :cond_0

    .line 239
    move-object v2, v1

    .line 240
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 243
    :cond_0
    if-eqz v2, :cond_1

    .line 244
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 245
    iput-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 250
    :goto_1
    monitor-exit p0

    return v3

    .line 247
    :cond_1
    iput-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 248
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    goto :goto_1

    .line 251
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #p:Landroid/os/Message;
    .end local v2           #prev:Landroid/os/Message;
    .end local v3           #token:I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 111
    :try_start_0
    invoke-direct {p0}, Landroid/os/MessageQueue;->nativeDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 115
    return-void

    .line 113
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method final hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 334
    if-nez p1, :cond_0

    .line 346
    :goto_0
    return v1

    .line 338
    :cond_0
    monitor-enter p0

    .line 339
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 340
    .local v0, p:Landroid/os/Message;
    :goto_1
    if-eqz v0, :cond_3

    .line 341
    iget-object v2, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget v2, v0, Landroid/os/Message;->what:I

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    .line 342
    :cond_1
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_0

    .line 347
    .end local v0           #p:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 344
    .restart local v0       #p:Landroid/os/Message;
    :cond_2
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 346
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final hasMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)Z
    .locals 3
    .parameter "h"
    .parameter "r"
    .parameter "object"

    .prologue
    const/4 v1, 0x0

    .line 351
    if-nez p1, :cond_0

    .line 363
    :goto_0
    return v1

    .line 355
    :cond_0
    monitor-enter p0

    .line 356
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 357
    .local v0, p:Landroid/os/Message;
    :goto_1
    if-eqz v0, :cond_3

    .line 358
    iget-object v2, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v2, p1, :cond_2

    iget-object v2, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v2, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v2, p3, :cond_2

    .line 359
    :cond_1
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_0

    .line 364
    .end local v0           #p:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 361
    .restart local v0       #p:Landroid/os/Message;
    :cond_2
    :try_start_1
    iget-object v0, v0, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_1

    .line 363
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final next()Landroid/os/Message;
    .locals 14

    .prologue
    .line 118
    const/4 v7, -0x1

    .line 119
    .local v7, pendingIdleHandlerCount:I
    const/4 v4, 0x0

    .line 122
    .local v4, nextPollTimeoutMillis:I
    :goto_0
    if-eqz v4, :cond_0

    .line 123
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    .line 125
    :cond_0
    iget v10, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v10, v4}, Landroid/os/MessageQueue;->nativePollOnce(II)V

    .line 127
    monitor-enter p0

    .line 128
    :try_start_0
    iget-boolean v10, p0, Landroid/os/MessageQueue;->mQuiting:Z

    if-eqz v10, :cond_1

    .line 129
    const/4 v3, 0x0

    monitor-exit p0

    .line 158
    :goto_1
    return-object v3

    .line 133
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 134
    .local v5, now:J
    const/4 v8, 0x0

    .line 135
    .local v8, prevMsg:Landroid/os/Message;
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 136
    .local v3, msg:Landroid/os/Message;
    if-eqz v3, :cond_3

    iget-object v10, v3, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v10, :cond_3

    .line 139
    :cond_2
    move-object v8, v3

    .line 140
    iget-object v3, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 141
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/os/Message;->isAsynchronous()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 143
    :cond_3
    if-eqz v3, :cond_8

    .line 144
    iget-wide v10, v3, Landroid/os/Message;->when:J

    cmp-long v10, v5, v10

    if-gez v10, :cond_6

    .line 146
    iget-wide v10, v3, Landroid/os/Message;->when:J

    sub-long/2addr v10, v5

    const-wide/32 v12, 0x7fffffff

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    long-to-int v4, v10

    .line 168
    :goto_2
    if-gez v7, :cond_5

    iget-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v10, :cond_4

    iget-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-wide v10, v10, Landroid/os/Message;->when:J

    cmp-long v10, v5, v10

    if-gez v10, :cond_5

    .line 170
    :cond_4
    iget-object v10, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 172
    :cond_5
    if-gtz v7, :cond_9

    .line 174
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 175
    monitor-exit p0

    goto :goto_0

    .line 182
    .end local v3           #msg:Landroid/os/Message;
    .end local v5           #now:J
    .end local v8           #prevMsg:Landroid/os/Message;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 149
    .restart local v3       #msg:Landroid/os/Message;
    .restart local v5       #now:J
    .restart local v8       #prevMsg:Landroid/os/Message;
    :cond_6
    const/4 v10, 0x0

    :try_start_1
    iput-boolean v10, p0, Landroid/os/MessageQueue;->mBlocked:Z

    .line 150
    if-eqz v8, :cond_7

    .line 151
    iget-object v10, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v10, v8, Landroid/os/Message;->next:Landroid/os/Message;

    .line 155
    :goto_3
    const/4 v10, 0x0

    iput-object v10, v3, Landroid/os/Message;->next:Landroid/os/Message;

    .line 157
    invoke-virtual {v3}, Landroid/os/Message;->markInUse()V

    .line 158
    monitor-exit p0

    goto :goto_1

    .line 153
    :cond_7
    iget-object v10, v3, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v10, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    goto :goto_3

    .line 162
    :cond_8
    const/4 v4, -0x1

    goto :goto_2

    .line 178
    :cond_9
    iget-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    if-nez v10, :cond_a

    .line 179
    const/4 v10, 0x4

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    new-array v10, v10, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 181
    :cond_a
    iget-object v10, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    iget-object v11, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/os/MessageQueue$IdleHandler;

    iput-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    .line 182
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    if-ge v0, v7, :cond_c

    .line 187
    iget-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    aget-object v1, v10, v0

    .line 188
    .local v1, idler:Landroid/os/MessageQueue$IdleHandler;
    iget-object v10, p0, Landroid/os/MessageQueue;->mPendingIdleHandlers:[Landroid/os/MessageQueue$IdleHandler;

    const/4 v11, 0x0

    aput-object v11, v10, v0

    .line 190
    const/4 v2, 0x0

    .line 192
    .local v2, keep:Z
    :try_start_2
    invoke-interface {v1}, Landroid/os/MessageQueue$IdleHandler;->queueIdle()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    .line 197
    :goto_5
    if-nez v2, :cond_b

    .line 198
    monitor-enter p0

    .line 199
    :try_start_3
    iget-object v10, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 200
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 193
    :catch_0
    move-exception v9

    .line 194
    .local v9, t:Ljava/lang/Throwable;
    const-string v10, "MessageQueue"

    const-string v11, "IdleHandler threw exception"

    invoke-static {v10, v11, v9}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 200
    .end local v9           #t:Ljava/lang/Throwable;
    :catchall_1
    move-exception v10

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v10

    .line 205
    .end local v1           #idler:Landroid/os/MessageQueue$IdleHandler;
    .end local v2           #keep:Z
    :cond_c
    const/4 v7, 0x0

    .line 209
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method final quit()V
    .locals 2

    .prologue
    .line 214
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuitAllowed:Z

    if-nez v0, :cond_0

    .line 215
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread not allowed to quit."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_0
    monitor-enter p0

    .line 219
    :try_start_0
    iget-boolean v0, p0, Landroid/os/MessageQueue;->mQuiting:Z

    if-eqz v0, :cond_1

    .line 220
    monitor-exit p0

    .line 225
    :goto_0
    return-void

    .line 222
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/MessageQueue;->mQuiting:Z

    .line 223
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    iget v0, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v0}, Landroid/os/MessageQueue;->nativeWake(I)V

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final removeCallbacksAndMessages(Landroid/os/Handler;Ljava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "object"

    .prologue
    .line 436
    if-nez p1, :cond_0

    .line 466
    :goto_0
    return-void

    .line 440
    :cond_0
    monitor-enter p0

    .line 441
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 445
    .local v2, p:Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_2

    .line 446
    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 447
    .local v0, n:Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 448
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 449
    move-object v2, v0

    .line 450
    goto :goto_1

    .line 453
    .end local v0           #n:Landroid/os/Message;
    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    .line 454
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 455
    .restart local v0       #n:Landroid/os/Message;
    if-eqz v0, :cond_4

    .line 456
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_4

    if-eqz p2, :cond_3

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p2, :cond_4

    .line 457
    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 458
    .local v1, nn:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 459
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 465
    .end local v0           #n:Landroid/os/Message;
    .end local v1           #nn:Landroid/os/Message;
    .end local v2           #p:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 463
    .restart local v0       #n:Landroid/os/Message;
    .restart local v2       #p:Landroid/os/Message;
    :cond_4
    move-object v2, v0

    .line 464
    goto :goto_2

    .line 465
    .end local v0           #n:Landroid/os/Message;
    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v0, p0, Landroid/os/MessageQueue;->mIdleHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 100
    monitor-exit p0

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "what"
    .parameter "object"

    .prologue
    .line 368
    if-nez p1, :cond_0

    .line 399
    :goto_0
    return-void

    .line 372
    :cond_0
    monitor-enter p0

    .line 373
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 377
    .local v2, p:Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_2

    iget v3, v2, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_2

    if-eqz p3, :cond_1

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_2

    .line 378
    :cond_1
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 379
    .local v0, n:Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 380
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 381
    move-object v2, v0

    .line 382
    goto :goto_1

    .line 385
    .end local v0           #n:Landroid/os/Message;
    :cond_2
    :goto_2
    if-eqz v2, :cond_5

    .line 386
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 387
    .restart local v0       #n:Landroid/os/Message;
    if-eqz v0, :cond_4

    .line 388
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_4

    iget v3, v0, Landroid/os/Message;->what:I

    if-ne v3, p2, :cond_4

    if-eqz p3, :cond_3

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_4

    .line 390
    :cond_3
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 391
    .local v1, nn:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 392
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 398
    .end local v0           #n:Landroid/os/Message;
    .end local v1           #nn:Landroid/os/Message;
    .end local v2           #p:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 396
    .restart local v0       #n:Landroid/os/Message;
    .restart local v2       #p:Landroid/os/Message;
    :cond_4
    move-object v2, v0

    .line 397
    goto :goto_2

    .line 398
    .end local v0           #n:Landroid/os/Message;
    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final removeMessages(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 4
    .parameter "h"
    .parameter "r"
    .parameter "object"

    .prologue
    .line 402
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    monitor-enter p0

    .line 407
    :try_start_0
    iget-object v2, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 411
    .local v2, p:Landroid/os/Message;
    :goto_1
    if-eqz v2, :cond_3

    iget-object v3, v2, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_3

    iget-object v3, v2, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_3

    if-eqz p3, :cond_2

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_3

    .line 412
    :cond_2
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 413
    .local v0, n:Landroid/os/Message;
    iput-object v0, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 414
    invoke-virtual {v2}, Landroid/os/Message;->recycle()V

    .line 415
    move-object v2, v0

    .line 416
    goto :goto_1

    .line 419
    .end local v0           #n:Landroid/os/Message;
    :cond_3
    :goto_2
    if-eqz v2, :cond_6

    .line 420
    iget-object v0, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 421
    .restart local v0       #n:Landroid/os/Message;
    if-eqz v0, :cond_5

    .line 422
    iget-object v3, v0, Landroid/os/Message;->target:Landroid/os/Handler;

    if-ne v3, p1, :cond_5

    iget-object v3, v0, Landroid/os/Message;->callback:Ljava/lang/Runnable;

    if-ne v3, p2, :cond_5

    if-eqz p3, :cond_4

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v3, p3, :cond_5

    .line 424
    :cond_4
    iget-object v1, v0, Landroid/os/Message;->next:Landroid/os/Message;

    .line 425
    .local v1, nn:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 426
    iput-object v1, v2, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_2

    .line 432
    .end local v0           #n:Landroid/os/Message;
    .end local v1           #nn:Landroid/os/Message;
    .end local v2           #p:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 430
    .restart local v0       #n:Landroid/os/Message;
    .restart local v2       #p:Landroid/os/Message;
    :cond_5
    move-object v2, v0

    .line 431
    goto :goto_2

    .line 432
    .end local v0           #n:Landroid/os/Message;
    :cond_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method final removeSyncBarrier(I)V
    .locals 5
    .parameter "token"

    .prologue
    .line 258
    monitor-enter p0

    .line 259
    const/4 v2, 0x0

    .line 260
    .local v2, prev:Landroid/os/Message;
    :try_start_0
    iget-object v1, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 261
    .local v1, p:Landroid/os/Message;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, v1, Landroid/os/Message;->target:Landroid/os/Handler;

    if-nez v3, :cond_0

    iget v3, v1, Landroid/os/Message;->arg1:I

    if-eq v3, p1, :cond_1

    .line 262
    :cond_0
    move-object v2, v1

    .line 263
    iget-object v1, v1, Landroid/os/Message;->next:Landroid/os/Message;

    goto :goto_0

    .line 265
    :cond_1
    if-nez v1, :cond_2

    .line 266
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "The specified message queue synchronization  barrier token has not been posted or has already been removed."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 277
    .end local v1           #p:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 269
    .restart local v1       #p:Landroid/os/Message;
    :cond_2
    if-eqz v2, :cond_4

    .line 270
    :try_start_1
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, v2, Landroid/os/Message;->next:Landroid/os/Message;

    .line 271
    const/4 v0, 0x0

    .line 276
    .local v0, needWake:Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 277
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    if-eqz v0, :cond_3

    .line 279
    iget v3, p0, Landroid/os/MessageQueue;->mPtr:I

    invoke-direct {p0, v3}, Landroid/os/MessageQueue;->nativeWake(I)V

    .line 281
    :cond_3
    return-void

    .line 273
    .end local v0           #needWake:Z
    :cond_4
    :try_start_2
    iget-object v3, v1, Landroid/os/Message;->next:Landroid/os/Message;

    iput-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    .line 274
    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/os/MessageQueue;->mMessages:Landroid/os/Message;

    iget-object v3, v3, Landroid/os/Message;->target:Landroid/os/Handler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_6

    :cond_5
    const/4 v0, 0x1

    .restart local v0       #needWake:Z
    :goto_2
    goto :goto_1

    .end local v0           #needWake:Z
    :cond_6
    const/4 v0, 0x0

    goto :goto_2
.end method
