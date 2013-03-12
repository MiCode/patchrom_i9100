.class final Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;
.super Ljava/lang/Object;
.source "WebViewInputDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewInputDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DispatchEventQueue"
.end annotation


# instance fields
.field public mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

.field public mTail:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1453
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebViewInputDispatcher$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1453
    invoke-direct {p0}, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public dequeue()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1472
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1473
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-eqz v0, :cond_0

    .line 1474
    iget-object v1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1475
    .local v1, next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-nez v1, :cond_1

    .line 1476
    iput-object v2, p0, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1477
    iput-object v2, p0, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mTail:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1483
    .end local v1           #next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_0
    :goto_0
    return-object v0

    .line 1479
    .restart local v1       #next:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    :cond_1
    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1480
    iput-object v2, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    goto :goto_0
.end method

.method public dequeueList()Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1487
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1488
    .local v0, d:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;
    if-eqz v0, :cond_0

    .line 1489
    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1490
    iput-object v1, p0, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mTail:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1492
    :cond_0
    return-object v0
.end method

.method public enqueue(Landroid/webkit/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 1462
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    if-nez v0, :cond_0

    .line 1463
    iput-object p1, p0, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1464
    iput-object p1, p0, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mTail:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1469
    :goto_0
    return-void

    .line 1466
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mTail:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    iput-object p1, v0, Landroid/webkit/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    .line 1467
    iput-object p1, p0, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mTail:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1458
    iget-object v0, p0, Landroid/webkit/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkit/WebViewInputDispatcher$DispatchEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
