.class Landroid/webkit/AccessibilityInjector$CallbackHandler;
.super Ljava/lang/Object;
.source "AccessibilityInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/AccessibilityInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackHandler"
.end annotation


# static fields
.field private static final JAVASCRIPT_ACTION_TEMPLATE:Ljava/lang/String; = "javascript:(function() { %s.onResult(%d, %s); })();"

.field private static final RESULT_TIMEOUT:J = 0x1388L


# instance fields
.field private final mInterfaceName:Ljava/lang/String;

.field private mResult:Z

.field private mResultId:J

.field private final mResultIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mResultLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "interfaceName"

    .prologue
    .line 567
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/webkit/AccessibilityInjector$CallbackHandler;->mResultIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 561
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/webkit/AccessibilityInjector$CallbackHandler;->mResultLock:Ljava/lang/Object;

    .line 564
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/AccessibilityInjector$CallbackHandler;->mResult:Z

    .line 565
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/webkit/AccessibilityInjector$CallbackHandler;->mResultId:J

    .line 568
    iput-object p1, p0, Landroid/webkit/AccessibilityInjector$CallbackHandler;->mInterfaceName:Ljava/lang/String;

    .line 569
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/webkit/AccessibilityInjector$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 553
    invoke-direct {p0, p1}, Landroid/webkit/AccessibilityInjector$CallbackHandler;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/webkit/AccessibilityInjector$CallbackHandler;Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 553
    invoke-direct {p0, p1, p2}, Landroid/webkit/AccessibilityInjector$CallbackHandler;->performAction(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private clearResultLocked()V
    .locals 2

    .prologue
    .line 606
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/webkit/AccessibilityInjector$CallbackHandler;->mResultId:J

    .line 607
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/AccessibilityInjector$CallbackHandler;->mResult:Z

    .line 608
    return-void
.end method

.method private getResultAndClear(I)Z
    .locals 4
    .parameter "resultId"

    .prologue
    .line 594
    iget-object v3, p0, Landroid/webkit/AccessibilityInjector$CallbackHandler;->mResultLock:Ljava/lang/Object;

    monitor-enter v3

    .line 595
    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/AccessibilityInjector$CallbackHandler;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 596
    .local v1, success:Z
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Landroid/webkit/AccessibilityInjector$CallbackHandler;->mResult:Z

    .line 597
    .local v0, result:Z
    :goto_0
    invoke-direct {p0}, Landroid/webkit/AccessibilityInjector$CallbackHandler;->clearResultLocked()V

    .line 598
    monitor-exit v3

    return v0

    .line 596
    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 599
    .end local v1           #success:Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private performAction(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .parameter "webView"
    .parameter "code"

    .prologue
    .line 579
    iget-object v2, p0, Landroid/webkit/AccessibilityInjector$CallbackHandler;->mResultIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 580
    .local v0, resultId:I
    const-string v2, "javascript:(function() { %s.onResult(%d, %s); })();"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/webkit/AccessibilityInjector$CallbackHandler;->mInterfaceName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, url:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 584
    invoke-direct {p0, v0}, Landroid/webkit/AccessibilityInjector$CallbackHandler;->getResultAndClear(I)Z

    move-result v2

    return v2
.end method

.method private waitForResultTimedLocked(I)Z
    .locals 11
    .parameter "resultId"

    .prologue
    const/4 v6, 0x0

    .line 617
    const-wide/16 v4, 0x1388

    .line 618
    .local v4, waitTimeMillis:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 621
    .local v2, startTimeMillis:J
    :goto_0
    :try_start_0
    iget-wide v7, p0, Landroid/webkit/AccessibilityInjector$CallbackHandler;->mResultId:J

    int-to-long v9, p1

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    .line 622
    const/4 v6, 0x1

    .line 630
    :cond_0
    return v6

    .line 624
    :cond_1
    iget-wide v7, p0, Landroid/webkit/AccessibilityInjector$CallbackHandler;->mResultId:J

    int-to-long v9, p1

    cmp-long v7, v7, v9

    if-gtz v7, :cond_0

    .line 627
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long v0, v7, v2

    .line 628
    .local v0, elapsedTimeMillis:J
    const-wide/16 v7, 0x1388

    sub-long v4, v7, v0

    .line 629
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-lez v7, :cond_0

    .line 632
    iget-object v7, p0, Landroid/webkit/AccessibilityInjector$CallbackHandler;->mResultLock:Ljava/lang/Object;

    invoke-virtual {v7, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 633
    .end local v0           #elapsedTimeMillis:J
    :catch_0
    move-exception v7

    goto :goto_0
.end method


# virtual methods
.method public onResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "id"
    .parameter "result"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 652
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 657
    .local v1, resultId:J
    iget-object v4, p0, Landroid/webkit/AccessibilityInjector$CallbackHandler;->mResultLock:Ljava/lang/Object;

    monitor-enter v4

    .line 658
    :try_start_1
    iget-wide v5, p0, Landroid/webkit/AccessibilityInjector$CallbackHandler;->mResultId:J

    cmp-long v3, v1, v5

    if-lez v3, :cond_0

    .line 659
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/webkit/AccessibilityInjector$CallbackHandler;->mResult:Z

    .line 660
    iput-wide v1, p0, Landroid/webkit/AccessibilityInjector$CallbackHandler;->mResultId:J

    .line 662
    :cond_0
    iget-object v3, p0, Landroid/webkit/AccessibilityInjector$CallbackHandler;->mResultLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 663
    monitor-exit v4

    .line 664
    .end local v1           #resultId:J
    :goto_0
    return-void

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, e:Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 663
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #resultId:J
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
