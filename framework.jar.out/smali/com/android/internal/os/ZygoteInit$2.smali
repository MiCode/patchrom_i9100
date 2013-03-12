.class final Lcom/android/internal/os/ZygoteInit$2;
.super Ljava/lang/Object;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/ZygoteInit;->parallelpreloadClasses()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$classList:[Ljava/lang/String;

.field final synthetic val$runtime:Ldalvik/system/VMRuntime;


# direct methods
.method constructor <init>([Ljava/lang/String;Ldalvik/system/VMRuntime;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/internal/os/ZygoteInit$2;->val$classList:[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/os/ZygoteInit$2;->val$runtime:Ldalvik/system/VMRuntime;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1

    .line 450
    sget-wide v6, Lcom/android/internal/os/ZygoteInit;->parallelThread:J

    add-long/2addr v6, v10

    sput-wide v6, Lcom/android/internal/os/ZygoteInit;->parallelThread:J

    .line 451
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 452
    .local v3, startTime:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 453
    iget-object v6, p0, Lcom/android/internal/os/ZygoteInit$2;->val$classList:[Ljava/lang/String;

    aget-object v2, v6, v1

    .line 458
    .local v2, line:Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 459
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v6

    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$200()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 464
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 465
    iget-object v6, p0, Lcom/android/internal/os/ZygoteInit$2;->val$runtime:Ldalvik/system/VMRuntime;

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 466
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 452
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Class not found for preloading: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 470
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v5

    .line 471
    .local v5, t:Ljava/lang/Throwable;
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error preloading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 472
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/internal/os/ZygoteInit;->access$302(Z)Z

    .line 473
    instance-of v6, v5, Ljava/lang/Error;

    if-eqz v6, :cond_1

    .line 474
    check-cast v5, Ljava/lang/Error;

    .end local v5           #t:Ljava/lang/Throwable;
    throw v5

    .line 476
    .restart local v5       #t:Ljava/lang/Throwable;
    :cond_1
    instance-of v6, v5, Ljava/lang/RuntimeException;

    if-eqz v6, :cond_2

    .line 477
    check-cast v5, Ljava/lang/RuntimeException;

    .end local v5           #t:Ljava/lang/Throwable;
    throw v5

    .line 479
    .restart local v5       #t:Ljava/lang/Throwable;
    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 482
    .end local v2           #line:Ljava/lang/String;
    .end local v5           #t:Ljava/lang/Throwable;
    :cond_3
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " classes in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    sget-wide v6, Lcom/android/internal/os/ZygoteInit;->parallelThread:J

    sub-long/2addr v6, v10

    sput-wide v6, Lcom/android/internal/os/ZygoteInit;->parallelThread:J

    .line 485
    return-void
.end method
