.class public Landroid/app/Instrumentation$ActivityMonitor;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityMonitor"
.end annotation


# instance fields
.field private final mBlock:Z

.field private final mClass:Ljava/lang/String;

.field mHits:I

.field mLastActivity:Landroid/app/Activity;

.field private final mResult:Landroid/app/Instrumentation$ActivityResult;

.field private final mWhich:Landroid/content/IntentFilter;


# direct methods
.method public constructor <init>(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)V
    .locals 2
    .parameter "which"
    .parameter "result"
    .parameter "block"

    .prologue
    const/4 v1, 0x0

    .line 447
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 428
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 431
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 448
    iput-object p1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    .line 449
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    .line 450
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    .line 451
    iput-boolean p3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    .line 452
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)V
    .locals 2
    .parameter "cls"
    .parameter "result"
    .parameter "block"

    .prologue
    const/4 v1, 0x0

    .line 468
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 428
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 431
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 469
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    .line 470
    iput-object p1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    .line 471
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    .line 472
    iput-boolean p3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    .line 473
    return-void
.end method


# virtual methods
.method public final getFilter()Landroid/content/IntentFilter;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public final getHits()I
    .locals 1

    .prologue
    .line 502
    iget v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    return v0
.end method

.method public final getLastActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getResult()Landroid/app/Instrumentation$ActivityResult;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    return-object v0
.end method

.method public final isBlocking()Z
    .locals 1

    .prologue
    .line 495
    iget-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    return v0
.end method

.method final match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z
    .locals 7
    .parameter "who"
    .parameter "activity"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 563
    monitor-enter p0

    .line 564
    :try_start_0
    iget-object v3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "Instrumentation"

    invoke-virtual {v3, v4, p3, v5, v6}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    .line 567
    monitor-exit p0

    .line 584
    :goto_0
    return v1

    .line 569
    :cond_0
    iget-object v3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 570
    const/4 v0, 0x0

    .line 571
    .local v0, cls:Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 572
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 576
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 577
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 585
    .end local v0           #cls:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 573
    .restart local v0       #cls:Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 574
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 580
    .end local v0           #cls:Ljava/lang/String;
    :cond_4
    if-eqz p2, :cond_5

    .line 581
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 582
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 584
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    goto :goto_0
.end method

.method public final waitForActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 520
    monitor-enter p0

    .line 521
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 523
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 524
    :catch_0
    move-exception v1

    goto :goto_0

    .line 527
    :cond_0
    :try_start_2
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 528
    .local v0, res:Landroid/app/Activity;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 529
    monitor-exit p0

    return-object v0

    .line 530
    .end local v0           #res:Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final waitForActivityWithTimeout(J)Landroid/app/Activity;
    .locals 2
    .parameter "timeOut"

    .prologue
    const/4 v0, 0x0

    .line 543
    monitor-enter p0

    .line 544
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 546
    :try_start_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 550
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 551
    monitor-exit p0

    .line 555
    :goto_1
    return-object v0

    .line 553
    :cond_1
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 554
    .local v0, res:Landroid/app/Activity;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 555
    monitor-exit p0

    goto :goto_1

    .line 557
    .end local v0           #res:Landroid/app/Activity;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 547
    :catch_0
    move-exception v1

    goto :goto_0
.end method
