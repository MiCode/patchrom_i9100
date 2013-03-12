.class Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;
.super Ljava/lang/Object;
.source "TouchExplorer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceivedPointerTracker"
.end annotation


# static fields
.field private static final COEFFICIENT_ACTIVE_POINTER:I = 0x2

.field private static final LOG_TAG_RECEIVED_POINTER_TRACKER:Ljava/lang/String; = "ReceivedPointerTracker"


# instance fields
.field private mActivePointers:I

.field private mHasMovingActivePointer:Z

.field private mLastReceivedEvent:Landroid/view/MotionEvent;

.field private mLastReceivedUpPointerActive:Z

.field private mLastReceivedUpPointerDownTime:J

.field private mLastReceivedUpPointerDownX:F

.field private mLastReceivedUpPointerDownY:F

.field private mLastReceivedUpPointerId:I

.field private mPrimaryActivePointerId:I

.field private final mReceivedPointerDownTime:[J

.field private final mReceivedPointerDownX:[F

.field private final mReceivedPointerDownY:[F

.field private mReceivedPointersDown:I

.field private final mThresholdActivePointer:D

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/TouchExplorer;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    const/16 v1, 0x20

    .line 1650
    iput-object p1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1619
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    .line 1620
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    .line 1621
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    .line 1651
    invoke-static {p2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mThresholdActivePointer:D

    .line 1653
    return-void
.end method

.method private computePointerDeltaMove(ILandroid/view/MotionEvent;)F
    .locals 7
    .parameter "pointerIndex"
    .parameter "event"

    .prologue
    .line 1977
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 1978
    .local v2, pointerId:I
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    aget v4, v4, v2

    sub-float v0, v3, v4

    .line 1979
    .local v0, deltaX:F
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget-object v4, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    aget v4, v4, v2

    sub-float v1, v3, v4

    .line 1980
    .local v1, deltaY:F
    float-to-double v3, v0

    float-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method private detectActivePointers(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    .line 1931
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1932
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 1933
    .local v4, pointerId:I
    iget-boolean v5, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mHasMovingActivePointer:Z

    if-eqz v5, :cond_1

    .line 1935
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->isActivePointer(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1931
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1940
    :cond_1
    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->computePointerDeltaMove(ILandroid/view/MotionEvent;)F

    move-result v2

    .line 1941
    .local v2, pointerDeltaMove:F
    float-to-double v5, v2

    iget-wide v7, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mThresholdActivePointer:D

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    .line 1942
    shl-int v3, v9, v4

    .line 1943
    .local v3, pointerFlag:I
    iget v5, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    or-int/2addr v5, v3

    iput v5, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    .line 1944
    iput-boolean v9, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mHasMovingActivePointer:Z

    goto :goto_1

    .line 1947
    .end local v2           #pointerDeltaMove:F
    .end local v3           #pointerFlag:I
    .end local v4           #pointerId:I
    :cond_2
    return-void
.end method

.method private findPrimaryActivePointer()I
    .locals 8

    .prologue
    .line 1953
    const/4 v6, -0x1

    .line 1954
    .local v6, primaryActivePointerId:I
    const-wide v4, 0x7fffffffffffffffL

    .line 1956
    .local v4, minDownTime:J
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v7, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    array-length v0, v7

    .local v0, count:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 1957
    invoke-virtual {p0, v3}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->isActivePointer(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1958
    iget-object v7, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    aget-wide v1, v7, v3

    .line 1959
    .local v1, downPointerTime:J
    cmp-long v7, v1, v4

    if-gez v7, :cond_0

    .line 1960
    move-wide v4, v1

    .line 1961
    move v6, v3

    .line 1956
    .end local v1           #downPointerTime:J
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1965
    :cond_1
    return v6
.end method

.method private handleReceivedPointerDown(ILandroid/view/MotionEvent;)V
    .locals 6
    .parameter "pointerIndex"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1860
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1861
    .local v1, pointerId:I
    const/4 v2, 0x1

    shl-int v0, v2, v1

    .line 1863
    .local v0, pointerFlag:I
    iput v5, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerId:I

    .line 1864
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    .line 1865
    iput-boolean v5, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerActive:Z

    .line 1866
    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    .line 1867
    iput v4, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    .line 1869
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    or-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 1870
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    aput v3, v2, v1

    .line 1871
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    aput v3, v2, v1

    .line 1872
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 1874
    iget-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mHasMovingActivePointer:Z

    if-nez v2, :cond_0

    .line 1877
    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    .line 1878
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryActivePointerId:I

    .line 1884
    :goto_0
    return-void

    .line 1882
    :cond_0
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    or-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    goto :goto_0
.end method

.method private handleReceivedPointerMove(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 1892
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->detectActivePointers(Landroid/view/MotionEvent;)V

    .line 1893
    return-void
.end method

.method private handleReceivedPointerUp(ILandroid/view/MotionEvent;)V
    .locals 5
    .parameter "pointerIndex"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 1902
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1903
    .local v1, pointerId:I
    const/4 v2, 0x1

    shl-int v0, v2, v1

    .line 1905
    .local v0, pointerFlag:I
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerId:I

    .line 1906
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownTime(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    .line 1907
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->isActivePointer(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerActive:Z

    .line 1908
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    aget v2, v2, v1

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    .line 1909
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    aget v2, v2, v1

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownY:F

    .line 1911
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 1912
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    .line 1913
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    aput v4, v2, v1

    .line 1914
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    aput v4, v2, v1

    .line 1915
    iget-object v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    .line 1917
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    if-nez v2, :cond_0

    .line 1918
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mHasMovingActivePointer:Z

    .line 1920
    :cond_0
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryActivePointerId:I

    if-ne v2, v1, :cond_1

    .line 1921
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryActivePointerId:I

    .line 1923
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1659
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1660
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    .line 1661
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->fill([JJ)V

    .line 1662
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    .line 1663
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    .line 1664
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryActivePointerId:I

    .line 1665
    iput-boolean v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mHasMovingActivePointer:Z

    .line 1666
    iput-wide v3, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    .line 1667
    iput v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerId:I

    .line 1668
    iput-boolean v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerActive:Z

    .line 1669
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    .line 1670
    iput v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownY:F

    .line 1671
    return-void
.end method

.method public getActivePointerCount()I
    .locals 1

    .prologue
    .line 1732
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getActivePointers()I
    .locals 1

    .prologue
    .line 1725
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    return v0
.end method

.method public getLastReceivedEvent()Landroid/view/MotionEvent;
    .locals 1

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public getLastReceivedUpPointerDownTime()J
    .locals 2

    .prologue
    .line 1795
    iget-wide v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownTime:J

    return-wide v0
.end method

.method public getLastReceivedUpPointerDownX()F
    .locals 1

    .prologue
    .line 1810
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownX:F

    return v0
.end method

.method public getLastReceivedUpPointerDownY()F
    .locals 1

    .prologue
    .line 1817
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerDownY:F

    return v0
.end method

.method public getLastReceivedUpPointerId()I
    .locals 1

    .prologue
    .line 1802
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerId:I

    return v0
.end method

.method public getPrimaryActivePointerId()I
    .locals 2

    .prologue
    .line 1785
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryActivePointerId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1786
    invoke-direct {p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->findPrimaryActivePointer()I

    move-result v0

    iput v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryActivePointerId:I

    .line 1788
    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mPrimaryActivePointerId:I

    return v0
.end method

.method public getReceivedPointerDownCount()I
    .locals 1

    .prologue
    .line 1718
    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public getReceivedPointerDownTime(I)J
    .locals 2
    .parameter "pointerId"

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownTime:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getReceivedPointerDownX(I)F
    .locals 1
    .parameter "pointerId"

    .prologue
    .line 1762
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownX:[F

    aget v0, v0, p1

    return v0
.end method

.method public getReceivedPointerDownY(I)F
    .locals 1
    .parameter "pointerId"

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointerDownY:[F

    aget v0, v0, p1

    return v0
.end method

.method public isActiveOrWasLastActiveUpPointer(I)Z
    .locals 1
    .parameter "pointerId"

    .prologue
    .line 1848
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->isActivePointer(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerId:I

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerActive:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActivePointer(I)Z
    .locals 3
    .parameter "pointerId"

    .prologue
    const/4 v1, 0x1

    .line 1753
    shl-int v0, v1, p1

    .line 1754
    .local v0, pointerFlag:I
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isReceivedPointerDown(I)Z
    .locals 3
    .parameter "pointerId"

    .prologue
    const/4 v1, 0x1

    .line 1742
    shl-int v0, v1, p1

    .line 1743
    .local v0, pointerFlag:I
    iget v2, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mReceivedPointersDown:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1679
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 1680
    iget-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 1682
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedEvent:Landroid/view/MotionEvent;

    .line 1684
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1685
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 1705
    :goto_0
    :pswitch_0
    return-void

    .line 1687
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 1690
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->handleReceivedPointerDown(ILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 1693
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->handleReceivedPointerMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1696
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 1699
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->handleReceivedPointerUp(ILandroid/view/MotionEvent;)V

    goto :goto_0

    .line 1685
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public populateActivePointerIds([I)V
    .locals 4
    .parameter "outPointerIds"

    .prologue
    .line 1834
    const/4 v2, 0x0

    .line 1835
    .local v2, index:I
    iget v1, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mActivePointers:I

    .local v1, idBits:I
    :goto_0
    if-eqz v1, :cond_0

    .line 1836
    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    .line 1837
    .local v0, id:I
    const/4 v3, 0x1

    shl-int/2addr v3, v0

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    .line 1838
    aput v0, p1, v2

    .line 1839
    add-int/lit8 v2, v2, 0x1

    .line 1840
    goto :goto_0

    .line 1841
    .end local v0           #id:I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x20

    .line 1985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1986
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v2, "========================="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1987
    const-string v2, "\nDown pointers #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1988
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getReceivedPointerDownCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1989
    const-string v2, " [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1990
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 1991
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->isReceivedPointerDown(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1992
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1993
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1990
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1996
    :cond_1
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1997
    const-string v2, "\nActive pointers #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1998
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getActivePointerCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1999
    const-string v2, " [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    .line 2001
    invoke-virtual {p0, v1}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->isActivePointer(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2002
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2003
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2000
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2006
    :cond_3
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2007
    const-string v2, "\nPrimary active pointer id [ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2008
    invoke-virtual {p0}, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->getPrimaryActivePointerId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2009
    const-string v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2010
    const-string v2, "\n========================="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2011
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public wasLastReceivedUpPointerActive()Z
    .locals 1

    .prologue
    .line 1824
    iget-boolean v0, p0, Lcom/android/server/accessibility/TouchExplorer$ReceivedPointerTracker;->mLastReceivedUpPointerActive:Z

    return v0
.end method
