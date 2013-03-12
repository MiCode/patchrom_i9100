.class Lcom/android/internal/telephony/Am$InstrumentationWatcher;
.super Landroid/app/IInstrumentationWatcher$Stub;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Am;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstrumentationWatcher"
.end annotation


# instance fields
.field private mFinished:Z

.field private mRawMode:Z

.field final synthetic this$0:Lcom/android/internal/telephony/Am;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/Am;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 372
    iput-object p1, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->this$0:Lcom/android/internal/telephony/Am;

    invoke-direct {p0}, Landroid/app/IInstrumentationWatcher$Stub;-><init>()V

    .line 373
    iput-boolean v0, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->mFinished:Z

    .line 374
    iput-boolean v0, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->mRawMode:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/Am;Lcom/android/internal/telephony/Am$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/Am$InstrumentationWatcher;-><init>(Lcom/android/internal/telephony/Am;)V

    return-void
.end method


# virtual methods
.method public instrumentationFinished(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .locals 6
    .parameter "name"
    .parameter "resultCode"
    .parameter "results"

    .prologue
    .line 409
    monitor-enter p0

    .line 411
    const/4 v2, 0x0

    .line 412
    .local v2, pretty:Ljava/lang/String;
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->mRawMode:Z

    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    .line 413
    const-string v3, "stream"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 415
    :cond_0
    if-eqz v2, :cond_1

    .line 416
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 426
    :goto_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->mFinished:Z

    .line 427
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 428
    monitor-exit p0

    .line 429
    return-void

    .line 418
    :cond_1
    if-eqz p3, :cond_2

    .line 419
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 420
    .local v1, key:Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSTRUMENTATION_RESULT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 428
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 424
    :cond_2
    :try_start_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSTRUMENTATION_CODE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .locals 6
    .parameter "name"
    .parameter "resultCode"
    .parameter "results"

    .prologue
    .line 386
    monitor-enter p0

    .line 388
    const/4 v2, 0x0

    .line 389
    .local v2, pretty:Ljava/lang/String;
    :try_start_0
    iget-boolean v3, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->mRawMode:Z

    if-nez v3, :cond_0

    if-eqz p3, :cond_0

    .line 390
    const-string v3, "stream"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 392
    :cond_0
    if-eqz v2, :cond_1

    .line 393
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 403
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 404
    monitor-exit p0

    .line 405
    return-void

    .line 395
    :cond_1
    if-eqz p3, :cond_2

    .line 396
    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 397
    .local v1, key:Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSTRUMENTATION_STATUS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 404
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 401
    :cond_2
    :try_start_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "INSTRUMENTATION_STATUS_CODE: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setRawOutput(Z)V
    .locals 0
    .parameter "rawMode"

    .prologue
    .line 382
    iput-boolean p1, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->mRawMode:Z

    .line 383
    return-void
.end method

.method public waitForFinish()Z
    .locals 3

    .prologue
    .line 432
    monitor-enter p0

    .line 433
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 435
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/Am$InstrumentationWatcher;->this$0:Lcom/android/internal/telephony/Am;

    #getter for: Lcom/android/internal/telephony/Am;->mAm:Landroid/app/IActivityManager;
    invoke-static {v1}, Lcom/android/internal/telephony/Am;->access$200(Lcom/android/internal/telephony/Am;)Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->pingBinder()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 436
    const/4 v1, 0x0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 444
    :goto_1
    return v1

    .line 438
    :cond_0
    const-wide/16 v1, 0x3e8

    :try_start_3
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 443
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :cond_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 444
    const/4 v1, 0x1

    goto :goto_1
.end method
