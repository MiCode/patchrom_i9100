.class public final Landroid/view/accessibility/AccessibilityInteractionClient;
.super Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;
.source "AccessibilityInteractionClient.java"


# static fields
.field private static final CHECK_INTEGRITY:Z = true

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityInteractionClient"

.field public static final NO_ID:I = -0x1

.field private static final TIMEOUT_INTERACTION_MILLIS:J = 0x1388L

.field private static final sAccessibilityNodeInfoCache:Landroid/view/accessibility/AccessibilityNodeInfoCache;

.field private static final sClients:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityInteractionClient;",
            ">;"
        }
    .end annotation
.end field

.field private static final sConnectionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/accessibilityservice/IAccessibilityServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStaticLock:Ljava/lang/Object;


# instance fields
.field private mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

.field private mFindAccessibilityNodeInfosResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstanceLock:Ljava/lang/Object;

.field private volatile mInteractionId:I

.field private final mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPerformAccessibilityActionResult:Z

.field private mSameThreadMessage:Landroid/os/Message;

.field private final mTempBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sStaticLock:Ljava/lang/Object;

    .line 88
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sClients:Landroid/util/LongSparseArray;

    .line 108
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    .line 113
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfoCache;

    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityNodeInfoCache;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityNodeInfoCache:Landroid/view/accessibility/AccessibilityNodeInfoCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/view/accessibility/IAccessibilityInteractionConnectionCallback$Stub;-><init>()V

    .line 91
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mTempBounds:Landroid/graphics/Rect;

    .line 145
    return-void
.end method

.method private applyCompatibilityScaleIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;F)V
    .locals 2
    .parameter "info"
    .parameter "scale"

    .prologue
    .line 613
    const/high16 v1, 0x3f80

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    .line 624
    :goto_0
    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mTempBounds:Landroid/graphics/Rect;

    .line 617
    .local v0, bounds:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 618
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->scale(F)V

    .line 619
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 621
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 622
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->scale(F)V

    .line 623
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private checkFindAccessibilityNodeInfoResultIntegrity(Ljava/util/List;)V
    .locals 19
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 716
    .local p1, infos:Ljava/util/List;,"Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_1

    .line 760
    :cond_0
    :goto_0
    return-void

    .line 720
    :cond_1
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 721
    .local v13, root:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    .line 722
    .local v11, infoCount:I
    const/4 v10, 0x1

    .local v10, i:I
    :goto_1
    if-ge v10, v11, :cond_4

    .line 723
    move v12, v10

    .local v12, j:I
    :goto_2
    if-ge v12, v11, :cond_2

    .line 724
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 725
    .local v1, candidate:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v15

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v17

    cmp-long v15, v15, v17

    if-nez v15, :cond_3

    .line 726
    move-object v13, v1

    .line 722
    .end local v1           #candidate:Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 723
    .restart local v1       #candidate:Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 731
    .end local v1           #candidate:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v12           #j:I
    :cond_4
    if-nez v13, :cond_5

    .line 732
    const-string v15, "AccessibilityInteractionClient"

    const-string v16, "No root."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_5
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 736
    .local v14, seen:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 737
    .local v9, fringe:Ljava/util/Queue;,"Ljava/util/Queue<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v9, v13}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 738
    :cond_6
    invoke-interface {v9}, Ljava/util/Queue;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_a

    .line 739
    invoke-interface {v9}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 740
    .local v7, current:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v14, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_7

    .line 741
    const-string v15, "AccessibilityInteractionClient"

    const-string v16, "Duplicate node."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 744
    :cond_7
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/SparseLongArray;

    move-result-object v6

    .line 745
    .local v6, childIds:Landroid/util/SparseLongArray;
    invoke-virtual {v6}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    .line 746
    .local v3, childCount:I
    const/4 v10, 0x0

    :goto_3
    if-ge v10, v3, :cond_6

    .line 747
    invoke-virtual {v6, v10}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    .line 748
    .local v4, childId:J
    const/4 v12, 0x0

    .restart local v12       #j:I
    :goto_4
    if-ge v12, v11, :cond_9

    .line 749
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 750
    .local v2, child:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v15

    cmp-long v15, v15, v4

    if-nez v15, :cond_8

    .line 751
    invoke-interface {v9, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 748
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 746
    .end local v2           #child:Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 756
    .end local v3           #childCount:I
    .end local v4           #childId:J
    .end local v6           #childIds:Landroid/util/SparseLongArray;
    .end local v7           #current:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v12           #j:I
    :cond_a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14}, Ljava/util/HashSet;->size()I

    move-result v16

    sub-int v8, v15, v16

    .line 757
    .local v8, disconnectedCount:I
    if-lez v8, :cond_0

    .line 758
    const-string v15, "AccessibilityInteractionClient"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Disconnected nodes."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private clearResultLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 566
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 567
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 568
    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 569
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPerformAccessibilityActionResult:Z

    .line 570
    return-void
.end method

.method private finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IF)V
    .locals 1
    .parameter "info"
    .parameter "connectionId"
    .parameter "windowScale"

    .prologue
    .line 635
    if-eqz p1, :cond_0

    .line 636
    invoke-direct {p0, p1, p3}, Landroid/view/accessibility/AccessibilityInteractionClient;->applyCompatibilityScaleIfNeeded(Landroid/view/accessibility/AccessibilityNodeInfo;F)V

    .line 637
    invoke-virtual {p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setConnectionId(I)V

    .line 638
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSealed(Z)V

    .line 639
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityNodeInfoCache:Landroid/view/accessibility/AccessibilityNodeInfoCache;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->add(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 641
    :cond_0
    return-void
.end method

.method private finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;IF)V
    .locals 3
    .parameter
    .parameter "connectionId"
    .parameter "windowScale"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;IF)V"
        }
    .end annotation

    .prologue
    .line 652
    .local p1, infos:Ljava/util/List;,"Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz p1, :cond_0

    .line 653
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 654
    .local v2, infosCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 655
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 656
    .local v1, info:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v1, p2, p3}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IF)V

    .line 654
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 659
    .end local v0           #i:I
    .end local v1           #info:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2           #infosCount:I
    :cond_0
    return-void
.end method

.method private getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4
    .parameter "interactionId"

    .prologue
    .line 462
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 463
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 464
    .local v1, success:Z
    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 465
    .local v0, result:Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearResultLocked()V

    .line 466
    monitor-exit v3

    return-object v0

    .line 464
    .end local v0           #result:Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 467
    .end local v1           #success:Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;
    .locals 4
    .parameter "interactionId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 493
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 494
    .local v1, success:Z
    const/4 v0, 0x0

    .line 495
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    if-eqz v1, :cond_1

    .line 496
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 500
    :goto_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearResultLocked()V

    .line 501
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_0

    .line 502
    invoke-direct {p0, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->checkFindAccessibilityNodeInfoResultIntegrity(Ljava/util/List;)V

    .line 504
    :cond_0
    monitor-exit v3

    return-object v0

    .line 498
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 505
    .end local v0           #result:Ljava/util/List;,"Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v1           #success:Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;
    .locals 3

    .prologue
    .line 120
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 121
    .local v0, threadId:J
    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    return-object v2
.end method

.method public static getInstanceForThread(J)Landroid/view/accessibility/AccessibilityInteractionClient;
    .locals 3
    .parameter "threadId"

    .prologue
    .line 133
    sget-object v2, Landroid/view/accessibility/AccessibilityInteractionClient;->sStaticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 134
    :try_start_0
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sClients:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p0, p1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityInteractionClient;

    .line 135
    .local v0, client:Landroid/view/accessibility/AccessibilityInteractionClient;
    if-nez v0, :cond_0

    .line 136
    new-instance v0, Landroid/view/accessibility/AccessibilityInteractionClient;

    .end local v0           #client:Landroid/view/accessibility/AccessibilityInteractionClient;
    invoke-direct {v0}, Landroid/view/accessibility/AccessibilityInteractionClient;-><init>()V

    .line 137
    .restart local v0       #client:Landroid/view/accessibility/AccessibilityInteractionClient;
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sClients:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p0, p1, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 139
    :cond_0
    monitor-exit v2

    return-object v0

    .line 140
    .end local v0           #client:Landroid/view/accessibility/AccessibilityInteractionClient;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPerformAccessibilityActionResultAndClear(I)Z
    .locals 4
    .parameter "interactionId"

    .prologue
    .line 541
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 542
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->waitForResultTimedLocked(I)Z

    move-result v1

    .line 543
    .local v1, success:Z
    if-eqz v1, :cond_0

    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPerformAccessibilityActionResult:Z

    .line 544
    .local v0, result:Z
    :goto_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearResultLocked()V

    .line 545
    monitor-exit v3

    return v0

    .line 543
    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 546
    .end local v1           #success:Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getSameProcessMessageAndClear()Landroid/os/Message;
    .locals 3

    .prologue
    .line 668
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 669
    :try_start_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mSameThreadMessage:Landroid/os/Message;

    .line 670
    .local v0, result:Landroid/os/Message;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mSameThreadMessage:Landroid/os/Message;

    .line 671
    monitor-exit v2

    return-object v0

    .line 672
    .end local v0           #result:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private waitForResultTimedLocked(I)Z
    .locals 10
    .parameter "interactionId"

    .prologue
    const/4 v7, 0x0

    .line 579
    const-wide/16 v5, 0x1388

    .line 580
    .local v5, waitTimeMillis:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 583
    .local v3, startTimeMillis:J
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getSameProcessMessageAndClear()Landroid/os/Message;

    move-result-object v2

    .line 584
    .local v2, sameProcessMessage:Landroid/os/Message;
    if-eqz v2, :cond_0

    .line 585
    invoke-virtual {v2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 588
    :cond_0
    iget v8, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-ne v8, p1, :cond_2

    .line 589
    const/4 v7, 0x1

    .line 597
    :cond_1
    return v7

    .line 591
    :cond_2
    iget v8, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-gt v8, p1, :cond_1

    .line 594
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v0, v8, v3

    .line 595
    .local v0, elapsedTimeMillis:J
    const-wide/16 v8, 0x1388

    sub-long v5, v8, v0

    .line 596
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-lez v8, :cond_1

    .line 599
    iget-object v8, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v8, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 600
    .end local v0           #elapsedTimeMillis:J
    .end local v2           #sameProcessMessage:Landroid/os/Message;
    :catch_0
    move-exception v8

    goto :goto_0
.end method


# virtual methods
.method public addConnection(ILandroid/accessibilityservice/IAccessibilityServiceConnection;)V
    .locals 2
    .parameter "connectionId"
    .parameter "connection"

    .prologue
    .line 694
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 695
    :try_start_0
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 696
    monitor-exit v1

    .line 697
    return-void

    .line 696
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 448
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityNodeInfoCache:Landroid/view/accessibility/AccessibilityNodeInfoCache;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->clear()V

    .line 449
    return-void
.end method

.method public findAccessibilityNodeInfoByAccessibilityId(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 14
    .parameter "connectionId"
    .parameter "accessibilityWindowId"
    .parameter "accessibilityNodeId"
    .parameter "prefetchFlags"

    .prologue
    .line 189
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v2

    .line 190
    .local v2, connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v2, :cond_1

    .line 191
    sget-object v3, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityNodeInfoCache:Landroid/view/accessibility/AccessibilityNodeInfoCache;

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->get(J)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v11

    .line 193
    .local v11, cachedInfo:Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v11, :cond_0

    .line 220
    .end local v2           #connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v11           #cachedInfo:Landroid/view/accessibility/AccessibilityNodeInfo;
    :goto_0
    return-object v11

    .line 196
    .restart local v2       #connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .restart local v11       #cachedInfo:Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_0
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v6

    .line 197
    .local v6, interactionId:I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v9

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-object v7, p0

    move/from16 v8, p5

    invoke-interface/range {v2 .. v10}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfoByAccessibilityId(IJILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;IJ)F

    move-result v13

    .line 201
    .local v13, windowScale:F
    const/4 v3, 0x0

    cmpl-float v3, v13, v3

    if-lez v3, :cond_1

    .line 202
    invoke-direct {p0, v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v12

    .line 204
    .local v12, infos:Ljava/util/List;,"Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct {p0, v12, p1, v13}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;IF)V

    .line 205
    if-eqz v12, :cond_1

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 206
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v11, v3

    goto :goto_0

    .line 214
    .end local v2           #connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v6           #interactionId:I
    .end local v11           #cachedInfo:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v12           #infos:Ljava/util/List;,"Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v13           #windowScale:F
    :catch_0
    move-exception v3

    .line 220
    :cond_1
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public findAccessibilityNodeInfoByViewId(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 11
    .parameter "connectionId"
    .parameter "accessibilityWindowId"
    .parameter "accessibilityNodeId"
    .parameter "viewId"

    .prologue
    .line 242
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 243
    .local v0, connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 244
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    .line 245
    .local v5, interactionId:I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    move v1, p2

    move-wide v2, p3

    move/from16 v4, p5

    move-object v6, p0

    invoke-interface/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfoByViewId(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)F

    move-result v10

    .line 250
    .local v10, windowScale:F
    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-lez v1, :cond_0

    .line 251
    invoke-direct {p0, v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v9

    .line 253
    .local v9, info:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v9, p1, v10}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v0           #connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v5           #interactionId:I
    .end local v9           #info:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v10           #windowScale:F
    :goto_0
    return-object v9

    .line 261
    :catch_0
    move-exception v1

    .line 267
    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public findAccessibilityNodeInfosByText(IIJLjava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter "connectionId"
    .parameter "accessibilityWindowId"
    .parameter "accessibilityNodeId"
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 291
    .local v0, connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 292
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    .line 293
    .local v5, interactionId:I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    move v1, p2

    move-wide v2, p3

    move-object/from16 v4, p5

    move-object v6, p0

    invoke-interface/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findAccessibilityNodeInfosByText(IJLjava/lang/String;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)F

    move-result v10

    .line 297
    .local v10, windowScale:F
    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-lez v1, :cond_0

    .line 298
    invoke-direct {p0, v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfosResultAndClear(I)Ljava/util/List;

    move-result-object v9

    .line 300
    .local v9, infos:Ljava/util/List;,"Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-direct {p0, v9, p1, v10}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfos(Ljava/util/List;IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .end local v0           #connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v5           #interactionId:I
    .end local v9           #infos:Ljava/util/List;,"Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    .end local v10           #windowScale:F
    :goto_0
    return-object v9

    .line 308
    :catch_0
    move-exception v1

    .line 314
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v9

    goto :goto_0
.end method

.method public findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 11
    .parameter "connectionId"
    .parameter "accessibilityWindowId"
    .parameter "accessibilityNodeId"
    .parameter "focusType"

    .prologue
    .line 336
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 337
    .local v0, connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 338
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    .line 339
    .local v5, interactionId:I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    move v1, p2

    move-wide v2, p3

    move/from16 v4, p5

    move-object v6, p0

    invoke-interface/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->findFocus(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)F

    move-result v10

    .line 343
    .local v10, windowScale:F
    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-lez v1, :cond_0

    .line 344
    invoke-direct {p0, v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v9

    .line 346
    .local v9, info:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v9, p1, v10}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .end local v0           #connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v5           #interactionId:I
    .end local v9           #info:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v10           #windowScale:F
    :goto_0
    return-object v9

    .line 354
    :catch_0
    move-exception v1

    .line 359
    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public focusSearch(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 11
    .parameter "connectionId"
    .parameter "accessibilityWindowId"
    .parameter "accessibilityNodeId"
    .parameter "direction"

    .prologue
    .line 381
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 382
    .local v0, connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 383
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v5

    .line 384
    .local v5, interactionId:I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    move v1, p2

    move-wide v2, p3

    move/from16 v4, p5

    move-object v6, p0

    invoke-interface/range {v0 .. v8}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->focusSearch(IJIILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)F

    move-result v10

    .line 388
    .local v10, windowScale:F
    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-lez v1, :cond_0

    .line 389
    invoke-direct {p0, v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->getFindAccessibilityNodeInfoResultAndClear(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v9

    .line 391
    .local v9, info:Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-direct {p0, v9, p1, v10}, Landroid/view/accessibility/AccessibilityInteractionClient;->finalizeAndCacheAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    .end local v0           #connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v5           #interactionId:I
    .end local v9           #info:Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v10           #windowScale:F
    :goto_0
    return-object v9

    .line 399
    :catch_0
    move-exception v1

    .line 404
    :cond_0
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .locals 2
    .parameter "connectionId"

    .prologue
    .line 682
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 683
    :try_start_0
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/IAccessibilityServiceConnection;

    monitor-exit v1

    return-object v0

    .line 684
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .parameter "connectionId"

    .prologue
    .line 167
    const/4 v2, -0x1

    sget-wide v3, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v5, 0x4

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityInteractionClient;->findAccessibilityNodeInfoByAccessibilityId(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 452
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sAccessibilityNodeInfoCache:Landroid/view/accessibility/AccessibilityNodeInfoCache;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfoCache;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 453
    return-void
.end method

.method public performAccessibilityAction(IIJILandroid/os/Bundle;)Z
    .locals 11
    .parameter "connectionId"
    .parameter "accessibilityWindowId"
    .parameter "accessibilityNodeId"
    .parameter "action"
    .parameter "arguments"

    .prologue
    .line 425
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;

    move-result-object v0

    .line 426
    .local v0, connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    if-eqz v0, :cond_0

    .line 427
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionIdCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v6

    .line 428
    .local v6, interactionId:I
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    move v1, p2

    move-wide v2, p3

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object v7, p0

    invoke-interface/range {v0 .. v9}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performAccessibilityAction(IJILandroid/os/Bundle;ILandroid/view/accessibility/IAccessibilityInteractionConnectionCallback;J)Z

    move-result v10

    .line 431
    .local v10, success:Z
    if-eqz v10, :cond_0

    .line 432
    invoke-direct {p0, v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->getPerformAccessibilityActionResultAndClear(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 444
    .end local v0           #connection:Landroid/accessibilityservice/IAccessibilityServiceConnection;
    .end local v6           #interactionId:I
    .end local v10           #success:Z
    :goto_0
    return v1

    .line 439
    :catch_0
    move-exception v1

    .line 444
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeConnection(I)V
    .locals 2
    .parameter "connectionId"

    .prologue
    .line 705
    sget-object v1, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    monitor-enter v1

    .line 706
    :try_start_0
    sget-object v0, Landroid/view/accessibility/AccessibilityInteractionClient;->sConnectionCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 707
    monitor-exit v1

    .line 708
    return-void

    .line 707
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFindAccessibilityNodeInfoResult(Landroid/view/accessibility/AccessibilityNodeInfo;I)V
    .locals 2
    .parameter "info"
    .parameter "interactionId"

    .prologue
    .line 475
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 476
    :try_start_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le p2, v0, :cond_0

    .line 477
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfoResult:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 478
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 480
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 481
    monitor-exit v1

    .line 482
    return-void

    .line 481
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFindAccessibilityNodeInfosResult(Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter "interactionId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 513
    .local p1, infos:Ljava/util/List;,"Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 514
    :try_start_0
    iget v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le p2, v1, :cond_0

    .line 515
    if-eqz p1, :cond_3

    .line 518
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-eq v1, v3, :cond_1

    const/4 v0, 0x1

    .line 519
    .local v0, isIpcCall:Z
    :goto_0
    if-nez v0, :cond_2

    .line 520
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    .line 528
    .end local v0           #isIpcCall:Z
    :goto_1
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 530
    :cond_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 531
    monitor-exit v2

    .line 532
    return-void

    .line 518
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 523
    .restart local v0       #isIpcCall:Z
    :cond_2
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;

    goto :goto_1

    .line 531
    .end local v0           #isIpcCall:Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 526
    :cond_3
    :try_start_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mFindAccessibilityNodeInfosResult:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setPerformAccessibilityActionResult(ZI)V
    .locals 2
    .parameter "succeeded"
    .parameter "interactionId"

    .prologue
    .line 553
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 554
    :try_start_0
    iget v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    if-le p2, v0, :cond_0

    .line 555
    iput-boolean p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mPerformAccessibilityActionResult:Z

    .line 556
    iput p2, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInteractionId:I

    .line 558
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 559
    monitor-exit v1

    .line 560
    return-void

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setSameThreadMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 154
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 155
    :try_start_0
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mSameThreadMessage:Landroid/os/Message;

    .line 156
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityInteractionClient;->mInstanceLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 157
    monitor-exit v1

    .line 158
    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
