.class public Landroid/webkit/WebviewScaleGestureDetector;
.super Ljava/lang/Object;
.source "WebviewScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebviewScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final PRESSURE_THRESHOLD:F = 0.67f

.field private static final TAG:Ljava/lang/String; = "WebviewScaleGestureDetector"


# instance fields
.field private detectTiltUse_spanChange:I

.field private detectTiltUse_sumTiltVaue:I

.field private mActive0MostRecent:Z

.field private mActiveId0:I

.field private mActiveId1:I

.field private mBottomSlopEdge:F

.field private mCalledInBrowserTab:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrEvent:Landroid/view/MotionEvent;

.field private mCurrFingerDiffX:F

.field private mCurrFingerDiffY:F

.field private mCurrLen:F

.field private mCurrPressure:F

.field mCurrTilt:I

.field private final mEdgeSlop:F

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mInvalidGesture:Z

.field private final mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

.field private mMotionUse:Z

.field mOnScaleBeginStart:J

.field private mPrevEvent:Landroid/view/MotionEvent;

.field private mPrevFingerDiffX:F

.field private mPrevFingerDiffY:F

.field private mPrevLen:F

.field private mPrevPressure:F

.field private mRightSlopEdge:F

.field private mScaleFactor:F

.field private mSloppyGesture:Z

.field private mTiltUse:Z

.field private mTimeDelta:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 184
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    .line 94
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mOnScaleBeginStart:J

    .line 96
    iput-boolean v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltUse:Z

    .line 97
    iput-boolean v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCalledInBrowserTab:Z

    .line 98
    iput v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->detectTiltUse_spanChange:I

    .line 99
    iput v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->detectTiltUse_sumTiltVaue:I

    .line 180
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v1, p0, v3}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 185
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 186
    .local v0, config:Landroid/view/ViewConfiguration;
    iput-object p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 187
    iput-object p2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    .line 188
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mEdgeSlop:F

    .line 189
    return-void

    .line 180
    .end local v0           #config:Landroid/view/ViewConfiguration;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findNewActiveIndex(Landroid/view/MotionEvent;II)I
    .locals 10
    .parameter "ev"
    .parameter "otherActiveId"
    .parameter "oldIndex"

    .prologue
    .line 507
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 510
    .local v5, pointerCount:I
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 511
    .local v4, otherActiveIndex:I
    const/4 v3, -0x1

    .line 514
    .local v3, newActiveIndex:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 515
    if-eq v2, p3, :cond_1

    if-eq v2, v4, :cond_1

    .line 516
    iget v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mEdgeSlop:F

    .line 517
    .local v1, edgeSlop:F
    iget v6, p0, Landroid/webkit/WebviewScaleGestureDetector;->mRightSlopEdge:F

    .line 518
    .local v6, rightSlop:F
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mBottomSlopEdge:F

    .line 519
    .local v0, bottomSlop:F
    invoke-static {p1, v2}, Landroid/webkit/WebviewScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v7

    .line 520
    .local v7, x:F
    invoke-static {p1, v2}, Landroid/webkit/WebviewScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 521
    .local v8, y:F
    cmpl-float v9, v7, v1

    if-ltz v9, :cond_1

    cmpl-float v9, v8, v1

    if-ltz v9, :cond_1

    cmpg-float v9, v7, v6

    if-gtz v9, :cond_1

    cmpg-float v9, v8, v0

    if-gtz v9, :cond_1

    .line 522
    move v3, v2

    .line 528
    .end local v0           #bottomSlop:F
    .end local v1           #edgeSlop:F
    .end local v6           #rightSlop:F
    .end local v7           #x:F
    .end local v8           #y:F
    :cond_0
    return v3

    .line 514
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static getRawX(Landroid/view/MotionEvent;I)F
    .locals 3
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 535
    if-gez p1, :cond_0

    const/4 v1, 0x1

    .line 538
    :goto_0
    return v1

    .line 536
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    goto :goto_0

    .line 537
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float v0, v1, v2

    .line 538
    .local v0, offset:F
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v0

    goto :goto_0
.end method

.method private static getRawY(Landroid/view/MotionEvent;I)F
    .locals 3
    .parameter "event"
    .parameter "pointerIndex"

    .prologue
    .line 545
    if-gez p1, :cond_0

    const/4 v1, 0x1

    .line 548
    :goto_0
    return v1

    .line 546
    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    goto :goto_0

    .line 547
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float v0, v1, v2

    .line 548
    .local v0, offset:F
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v0

    goto :goto_0
.end method

.method private initTiltDecisionValue()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 138
    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->detectTiltUse_spanChange:I

    .line 139
    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->detectTiltUse_sumTiltVaue:I

    .line 140
    return-void
.end method

.method private reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 603
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 605
    iput-object v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 607
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 609
    iput-object v3, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 611
    :cond_1
    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    .line 612
    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    .line 613
    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    .line 614
    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    .line 615
    iput-boolean v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mInvalidGesture:Z

    .line 616
    return-void
.end method

.method private setContext(Landroid/view/MotionEvent;)V
    .locals 24
    .parameter "curr"

    .prologue
    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/MotionEvent;->recycle()V

    .line 555
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    .line 557
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mCurrLen:F

    .line 558
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevLen:F

    .line 559
    const/high16 v20, -0x4080

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mScaleFactor:F

    .line 561
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 563
    .local v11, prev:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 564
    .local v12, prevIndex0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 565
    .local v13, prevIndex1:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 566
    .local v3, currIndex0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 568
    .local v4, currIndex1:I
    if-ltz v12, :cond_1

    if-ltz v13, :cond_1

    if-ltz v3, :cond_1

    if-gez v4, :cond_3

    .line 569
    :cond_1
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mInvalidGesture:Z

    .line 570
    const-string v20, "WebviewScaleGestureDetector"

    const-string v21, "Invalid MotionEvent stream detected."

    new-instance v22, Ljava/lang/Throwable;

    invoke-direct/range {v22 .. v22}, Ljava/lang/Throwable;-><init>()V

    invoke-static/range {v20 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 571
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 600
    :cond_2
    :goto_0
    return-void

    .line 577
    :cond_3
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    .line 578
    .local v16, px0:F
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v18

    .line 579
    .local v18, py0:F
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 580
    .local v17, px1:F
    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v19

    .line 581
    .local v19, py1:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 582
    .local v7, cx0:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    .line 583
    .local v9, cy0:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    .line 584
    .local v8, cx1:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 586
    .local v10, cy1:F
    sub-float v14, v17, v16

    .line 587
    .local v14, pvx:F
    sub-float v15, v19, v18

    .line 588
    .local v15, pvy:F
    sub-float v5, v8, v7

    .line 589
    .local v5, cvx:F
    sub-float v6, v10, v9

    .line 590
    .local v6, cvy:F
    move-object/from16 v0, p0

    iput v14, v0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevFingerDiffX:F

    .line 591
    move-object/from16 v0, p0

    iput v15, v0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevFingerDiffY:F

    .line 592
    move-object/from16 v0, p0

    iput v5, v0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrFingerDiffX:F

    .line 593
    move-object/from16 v0, p0

    iput v6, v0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrFingerDiffY:F

    .line 595
    const/high16 v20, 0x3f00

    mul-float v20, v20, v5

    add-float v20, v20, v7

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 596
    const/high16 v20, 0x3f00

    mul-float v20, v20, v6

    add-float v20, v20, v9

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    .line 597
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    invoke-virtual {v11}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v22

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebviewScaleGestureDetector;->mTimeDelta:J

    .line 598
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v20

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mCurrPressure:F

    .line 599
    invoke-virtual {v11, v12}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v20

    invoke-virtual {v11, v13}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v21

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevPressure:F

    goto/16 :goto_0
.end method


# virtual methods
.method public getCurrTilt()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    return v0
.end method

.method public getCurrentSpan()F
    .locals 4

    .prologue
    .line 663
    iget v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 664
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrFingerDiffX:F

    .line 665
    .local v0, cvx:F
    iget v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrFingerDiffY:F

    .line 666
    .local v1, cvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrLen:F

    .line 668
    .end local v0           #cvx:F
    .end local v1           #cvy:F
    :cond_0
    iget v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrLen:F

    return v2
.end method

.method public getCurrentSpanX()F
    .locals 1

    .prologue
    .line 678
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrFingerDiffX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    .prologue
    .line 688
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrFingerDiffY:F

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    .line 638
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 653
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getMotionUse()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 132
    iget-object v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "motion_zooming"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mMotionUse:Z

    .line 134
    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mMotionUse:Z

    return v0

    :cond_0
    move v0, v1

    .line 132
    goto :goto_0
.end method

.method public getPreviousSpan()F
    .locals 4

    .prologue
    .line 698
    iget v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevLen:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 699
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevFingerDiffX:F

    .line 700
    .local v0, pvx:F
    iget v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevFingerDiffY:F

    .line 701
    .local v1, pvy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    iput v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevLen:F

    .line 703
    .end local v0           #pvx:F
    .end local v1           #pvy:F
    :cond_0
    iget v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevLen:F

    return v2
.end method

.method public getPreviousSpanX()F
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevFingerDiffX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    .prologue
    .line 723
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevFingerDiffY:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 2

    .prologue
    .line 734
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mScaleFactor:F

    const/high16 v1, -0x4080

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 735
    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mScaleFactor:F

    .line 737
    :cond_0
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mScaleFactor:F

    return v0
.end method

.method public getTiltUse()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltUse:Z

    return v0
.end method

.method public getTimeDelta()J
    .locals 2

    .prologue
    .line 747
    iget-wide v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTimeDelta:J

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 623
    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public onMREvent(Landroid/hardware/motion/MREvent;)V
    .locals 6
    .parameter "motionEvent"

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getMotionUse()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCalledInBrowserTab:Z

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    const/16 v1, 0x43

    if-ne v0, v1, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getTilt()I

    move-result v0

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    .line 121
    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->tiltUseDecision()V

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/webkit/WebviewScaleGestureDetector;->mOnScaleBeginStart:J

    const-wide/16 v4, 0x12c

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 123
    iget-object v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v0, p0}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 30
    .parameter "event"

    .prologue
    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 196
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 198
    .local v3, action:I
    if-nez v3, :cond_1

    .line 199
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebviewScaleGestureDetector;->reset()V

    .line 202
    :cond_1
    const/4 v10, 0x1

    .line 203
    .local v10, handled:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mInvalidGesture:Z

    move/from16 v27, v0

    if-eqz v27, :cond_4

    .line 204
    const/4 v10, 0x0

    .line 500
    :cond_2
    :goto_0
    if-nez v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    :cond_3
    move/from16 v27, v10

    .line 503
    :goto_1
    return v27

    .line 205
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v27, v0

    if-nez v27, :cond_1e

    .line 206
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 208
    :pswitch_1
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    .line 209
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActive0MostRecent:Z

    goto :goto_0

    .line 214
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebviewScaleGestureDetector;->reset()V

    goto :goto_0

    .line 221
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    .line 222
    .local v14, metrics:Landroid/util/DisplayMetrics;
    iget v0, v14, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mEdgeSlop:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mRightSlopEdge:F

    .line 223
    iget v0, v14, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mEdgeSlop:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mBottomSlopEdge:F

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->recycle()V

    .line 226
    :cond_5
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 227
    const-wide/16 v27, 0x0

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebviewScaleGestureDetector;->mTimeDelta:J

    .line 229
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v13

    .line 230
    .local v13, index1:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 231
    .local v12, index0:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    .line 232
    if-ltz v12, :cond_6

    if-ne v12, v13, :cond_7

    .line 234
    :cond_6
    if-ne v12, v13, :cond_a

    const/16 v27, -0x1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v12}, Landroid/webkit/WebviewScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v12

    .line 235
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    .line 237
    :cond_7
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActive0MostRecent:Z

    .line 239
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebviewScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 245
    move-object/from16 v0, p0

    iget v8, v0, Landroid/webkit/WebviewScaleGestureDetector;->mEdgeSlop:F

    .line 246
    .local v8, edgeSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mRightSlopEdge:F

    move/from16 v21, v0

    .line 247
    .local v21, rightSlop:F
    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebviewScaleGestureDetector;->mBottomSlopEdge:F

    .line 248
    .local v7, bottomSlop:F
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/webkit/WebviewScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v23

    .line 249
    .local v23, x0:F
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/webkit/WebviewScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 250
    .local v25, y0:F
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/webkit/WebviewScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v24

    .line 251
    .local v24, x1:F
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/webkit/WebviewScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v26

    .line 253
    .local v26, y1:F
    cmpg-float v27, v23, v8

    if-ltz v27, :cond_8

    cmpg-float v27, v25, v8

    if-ltz v27, :cond_8

    cmpl-float v27, v23, v21

    if-gtz v27, :cond_8

    cmpl-float v27, v25, v7

    if-lez v27, :cond_b

    :cond_8
    const/16 v18, 0x1

    .line 255
    .local v18, p0sloppy:Z
    :goto_3
    cmpg-float v27, v24, v8

    if-ltz v27, :cond_9

    cmpg-float v27, v26, v8

    if-ltz v27, :cond_9

    cmpl-float v27, v24, v21

    if-gtz v27, :cond_9

    cmpl-float v27, v26, v7

    if-lez v27, :cond_c

    :cond_9
    const/16 v19, 0x1

    .line 258
    .local v19, p1sloppy:Z
    :goto_4
    if-eqz v18, :cond_d

    if-eqz v19, :cond_d

    .line 259
    const/high16 v27, -0x4080

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 260
    const/high16 v27, -0x4080

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    .line 261
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_0

    .line 234
    .end local v7           #bottomSlop:F
    .end local v8           #edgeSlop:F
    .end local v18           #p0sloppy:Z
    .end local v19           #p1sloppy:Z
    .end local v21           #rightSlop:F
    .end local v23           #x0:F
    .end local v24           #x1:F
    .end local v25           #y0:F
    .end local v26           #y1:F
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    goto/16 :goto_2

    .line 253
    .restart local v7       #bottomSlop:F
    .restart local v8       #edgeSlop:F
    .restart local v21       #rightSlop:F
    .restart local v23       #x0:F
    .restart local v24       #x1:F
    .restart local v25       #y0:F
    .restart local v26       #y1:F
    :cond_b
    const/16 v18, 0x0

    goto :goto_3

    .line 255
    .restart local v18       #p0sloppy:Z
    :cond_c
    const/16 v19, 0x0

    goto :goto_4

    .line 262
    .restart local v19       #p1sloppy:Z
    :cond_d
    if-eqz v18, :cond_e

    .line 263
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 264
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    .line 265
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_0

    .line 266
    :cond_e
    if-eqz v19, :cond_f

    .line 267
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 268
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    .line 269
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    goto/16 :goto_0

    .line 271
    :cond_f
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_0

    .line 278
    .end local v7           #bottomSlop:F
    .end local v8           #edgeSlop:F
    .end local v12           #index0:I
    .end local v13           #index1:I
    .end local v14           #metrics:Landroid/util/DisplayMetrics;
    .end local v18           #p0sloppy:Z
    .end local v19           #p1sloppy:Z
    .end local v21           #rightSlop:F
    .end local v23           #x0:F
    .end local v24           #x1:F
    .end local v25           #y0:F
    .end local v26           #y1:F
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    .line 280
    move-object/from16 v0, p0

    iget v8, v0, Landroid/webkit/WebviewScaleGestureDetector;->mEdgeSlop:F

    .line 281
    .restart local v8       #edgeSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mRightSlopEdge:F

    move/from16 v21, v0

    .line 282
    .restart local v21       #rightSlop:F
    move-object/from16 v0, p0

    iget v7, v0, Landroid/webkit/WebviewScaleGestureDetector;->mBottomSlopEdge:F

    .line 283
    .restart local v7       #bottomSlop:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 284
    .restart local v12       #index0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 286
    .restart local v13       #index1:I
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/webkit/WebviewScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v23

    .line 287
    .restart local v23       #x0:F
    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/webkit/WebviewScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 288
    .restart local v25       #y0:F
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/webkit/WebviewScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v24

    .line 289
    .restart local v24       #x1:F
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/webkit/WebviewScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v26

    .line 291
    .restart local v26       #y1:F
    cmpg-float v27, v23, v8

    if-ltz v27, :cond_10

    cmpg-float v27, v25, v8

    if-ltz v27, :cond_10

    cmpl-float v27, v23, v21

    if-gtz v27, :cond_10

    cmpl-float v27, v25, v7

    if-lez v27, :cond_14

    :cond_10
    const/16 v18, 0x1

    .line 293
    .restart local v18       #p0sloppy:Z
    :goto_5
    cmpg-float v27, v24, v8

    if-ltz v27, :cond_11

    cmpg-float v27, v26, v8

    if-ltz v27, :cond_11

    cmpl-float v27, v24, v21

    if-gtz v27, :cond_11

    cmpl-float v27, v26, v7

    if-lez v27, :cond_15

    :cond_11
    const/16 v19, 0x1

    .line 296
    .restart local v19       #p1sloppy:Z
    :goto_6
    if-eqz v18, :cond_12

    .line 298
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v12}, Landroid/webkit/WebviewScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v11

    .line 299
    .local v11, index:I
    if-ltz v11, :cond_12

    .line 300
    move v12, v11

    .line 301
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    .line 302
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/webkit/WebviewScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v23

    .line 303
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/webkit/WebviewScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v25

    .line 304
    const/16 v18, 0x0

    .line 308
    .end local v11           #index:I
    :cond_12
    if-eqz v19, :cond_13

    .line 310
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v13}, Landroid/webkit/WebviewScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v11

    .line 311
    .restart local v11       #index:I
    if-ltz v11, :cond_13

    .line 312
    move v13, v11

    .line 313
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    .line 314
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/webkit/WebviewScaleGestureDetector;->getRawX(Landroid/view/MotionEvent;I)F

    move-result v24

    .line 315
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/webkit/WebviewScaleGestureDetector;->getRawY(Landroid/view/MotionEvent;I)F

    move-result v26

    .line 316
    const/16 v19, 0x0

    .line 320
    .end local v11           #index:I
    :cond_13
    if-eqz v18, :cond_16

    if-eqz v19, :cond_16

    .line 321
    const/high16 v27, -0x4080

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 322
    const/high16 v27, -0x4080

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 291
    .end local v18           #p0sloppy:Z
    .end local v19           #p1sloppy:Z
    :cond_14
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 293
    .restart local v18       #p0sloppy:Z
    :cond_15
    const/16 v19, 0x0

    goto :goto_6

    .line 323
    .restart local v19       #p1sloppy:Z
    :cond_16
    if-eqz v18, :cond_17

    .line 324
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 325
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 326
    :cond_17
    if-eqz v19, :cond_18

    .line 327
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 328
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 330
    :cond_18
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_0

    .line 337
    .end local v7           #bottomSlop:F
    .end local v8           #edgeSlop:F
    .end local v12           #index0:I
    .end local v13           #index1:I
    .end local v18           #p0sloppy:Z
    .end local v19           #p1sloppy:Z
    .end local v21           #rightSlop:F
    .end local v23           #x0:F
    .end local v24           #x1:F
    .end local v25           #y0:F
    .end local v26           #y1:F
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mSloppyGesture:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2

    .line 338
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    .line 339
    .local v20, pointerCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 340
    .local v5, actionIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 342
    .local v4, actionId:I
    const/16 v27, 0x2

    move/from16 v0, v20

    move/from16 v1, v27

    if-le v0, v1, :cond_1a

    .line 343
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_19

    .line 344
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v5}, Landroid/webkit/WebviewScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v15

    .line 345
    .local v15, newIndex:I
    if-ltz v15, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    goto/16 :goto_0

    .line 346
    .end local v15           #newIndex:I
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_2

    .line 347
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v5}, Landroid/webkit/WebviewScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v15

    .line 348
    .restart local v15       #newIndex:I
    if-ltz v15, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    goto/16 :goto_0

    .line 352
    .end local v15           #newIndex:I
    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    :goto_7
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 354
    .restart local v11       #index:I
    if-gez v11, :cond_1d

    .line 355
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mInvalidGesture:Z

    .line 356
    const-string v27, "WebviewScaleGestureDetector"

    const-string v28, "Invalid MotionEvent stream detected."

    new-instance v29, Ljava/lang/Throwable;

    invoke-direct/range {v29 .. v29}, Ljava/lang/Throwable;-><init>()V

    invoke-static/range {v27 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    move/from16 v27, v0

    if-eqz v27, :cond_1b

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 360
    :cond_1b
    const/16 v27, 0x0

    goto/16 :goto_1

    .line 352
    .end local v11           #index:I
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    goto :goto_7

    .line 363
    .restart local v11       #index:I
    :cond_1d
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    .line 365
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActive0MostRecent:Z

    .line 366
    const/16 v27, -0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    .line 367
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 368
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    goto/16 :goto_0

    .line 375
    .end local v4           #actionId:I
    .end local v5           #actionIndex:I
    .end local v11           #index:I
    .end local v20           #pointerCount:I
    :cond_1e
    packed-switch v3, :pswitch_data_1

    :pswitch_6
    goto/16 :goto_0

    .line 478
    :pswitch_7
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebviewScaleGestureDetector;->reset()V

    goto/16 :goto_0

    .line 378
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 379
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v16, v0

    .line 380
    .local v16, oldActive0:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v17, v0

    .line 381
    .local v17, oldActive1:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebviewScaleGestureDetector;->reset()V

    .line 383
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 384
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActive0MostRecent:Z

    move/from16 v27, v0

    if-eqz v27, :cond_21

    .end local v16           #oldActive0:I
    :goto_8
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    .line 385
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v27

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    .line 386
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActive0MostRecent:Z

    .line 388
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 389
    .restart local v12       #index0:I
    if-ltz v12, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_20

    .line 391
    :cond_1f
    const-string v27, "WebviewScaleGestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Got "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-static {v3}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " with bad state while a gesture was in progress. "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "Did you forget to pass an event to "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "ScaleGestureDetector#onTouchEvent?"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_22

    const/16 v27, -0x1

    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v12}, Landroid/webkit/WebviewScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v12

    .line 397
    const/16 v27, -0x1

    move/from16 v0, v27

    if-le v12, v0, :cond_23

    .line 398
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    .line 409
    :cond_20
    :goto_a
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebviewScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_0

    .end local v12           #index0:I
    .restart local v16       #oldActive0:I
    :cond_21
    move/from16 v16, v17

    .line 384
    goto/16 :goto_8

    .line 395
    .end local v16           #oldActive0:I
    .restart local v12       #index0:I
    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    goto :goto_9

    .line 400
    :cond_23
    const-string v27, "WebviewScaleGestureDetector"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "(mActiveId0="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", mActiveId1="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", event.getPointerId(event.getActionIndex())="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v29

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", event.getPointerCount()="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ") Got "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " with bad state. "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "Did you forget to pass an event to "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "ScaleGestureDetector#onTouchEvent?"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 416
    .end local v12           #index0:I
    .end local v17           #oldActive1:I
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    .line 417
    .restart local v20       #pointerCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 418
    .restart local v5       #actionIndex:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 420
    .restart local v4       #actionId:I
    const/4 v9, 0x0

    .line 421
    .local v9, gestureEnded:Z
    const/16 v27, 0x2

    move/from16 v0, v20

    move/from16 v1, v27

    if-le v0, v1, :cond_28

    .line 422
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_26

    .line 423
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v5}, Landroid/webkit/WebviewScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v15

    .line 424
    .restart local v15       #newIndex:I
    if-ltz v15, :cond_25

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 426
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    .line 427
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActive0MostRecent:Z

    .line 428
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 429
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebviewScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    .line 447
    .end local v15           #newIndex:I
    :cond_24
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->recycle()V

    .line 448
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 449
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebviewScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 454
    :goto_c
    if-eqz v9, :cond_2

    .line 456
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebviewScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 459
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_29

    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    .line 460
    .local v6, activeId:I
    :goto_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    .line 461
    .restart local v11       #index:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusX:F

    .line 462
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mFocusY:F

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 465
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebviewScaleGestureDetector;->reset()V

    .line 466
    move-object/from16 v0, p0

    iput v6, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    .line 467
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActive0MostRecent:Z

    goto/16 :goto_0

    .line 432
    .end local v6           #activeId:I
    .end local v11           #index:I
    .restart local v15       #newIndex:I
    :cond_25
    const/4 v9, 0x1

    goto :goto_b

    .line 434
    .end local v15           #newIndex:I
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_24

    .line 435
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-direct {v0, v1, v2, v5}, Landroid/webkit/WebviewScaleGestureDetector;->findNewActiveIndex(Landroid/view/MotionEvent;II)I

    move-result v15

    .line 436
    .restart local v15       #newIndex:I
    if-ltz v15, :cond_27

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 438
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId1:I

    .line 439
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mActive0MostRecent:Z

    .line 440
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    .line 441
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebviewScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mGestureInProgress:Z

    goto/16 :goto_b

    .line 444
    :cond_27
    const/4 v9, 0x1

    goto/16 :goto_b

    .line 451
    .end local v15           #newIndex:I
    :cond_28
    const/4 v9, 0x1

    goto/16 :goto_c

    .line 459
    :cond_29
    move-object/from16 v0, p0

    iget v6, v0, Landroid/webkit/WebviewScaleGestureDetector;->mActiveId0:I

    goto/16 :goto_d

    .line 473
    .end local v4           #actionId:I
    .end local v5           #actionIndex:I
    .end local v9           #gestureEnded:Z
    .end local v20           #pointerCount:I
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 474
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebviewScaleGestureDetector;->reset()V

    goto/16 :goto_0

    .line 482
    :pswitch_b
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebviewScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V

    .line 487
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrPressure:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevPressure:F

    move/from16 v28, v0

    div-float v27, v27, v28

    const v28, 0x3f2b851f

    cmpl-float v27, v27, v28

    if-lez v27, :cond_2

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mListener:Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v22

    .line 490
    .local v22, updatePrevious:Z
    if-eqz v22, :cond_2

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->recycle()V

    .line 492
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebviewScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;

    goto/16 :goto_0

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 375
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_a
        :pswitch_6
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public setCurrTilt(I)V
    .locals 0
    .parameter "newTilt"

    .prologue
    .line 106
    iput p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCurrTilt:I

    .line 107
    return-void
.end method

.method public setNativeBrowser(Z)V
    .locals 0
    .parameter "mCalledInBrowserTab"

    .prologue
    .line 128
    iput-boolean p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mCalledInBrowserTab:Z

    .line 129
    return-void
.end method

.method public setTiltStartTime(J)J
    .locals 2
    .parameter "start"

    .prologue
    .line 110
    iput-wide p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mOnScaleBeginStart:J

    .line 111
    iget-wide v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mOnScaleBeginStart:J

    return-wide v0
.end method

.method public setTiltUse(Z)V
    .locals 1
    .parameter "TiltUse"

    .prologue
    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebviewScaleGestureDetector;->setCurrTilt(I)V

    .line 164
    iput-boolean p1, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltUse:Z

    .line 165
    return-void
.end method

.method public tiltUseDecision()V
    .locals 5

    .prologue
    const/16 v4, 0x14

    const/high16 v1, 0x3f80

    const-wide v2, 0x3f7cac083126e979L

    .line 144
    iget-boolean v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->mTiltUse:Z

    if-nez v0, :cond_3

    .line 145
    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getScaleFactor()F

    move-result v0

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 146
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->detectTiltUse_spanChange:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->detectTiltUse_spanChange:I

    .line 149
    :goto_0
    iget v1, p0, Landroid/webkit/WebviewScaleGestureDetector;->detectTiltUse_sumTiltVaue:I

    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrTilt()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrTilt()I

    move-result v0

    :goto_1
    add-int/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->detectTiltUse_sumTiltVaue:I

    .line 150
    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->detectTiltUse_spanChange:I

    if-le v0, v4, :cond_0

    iget v0, p0, Landroid/webkit/WebviewScaleGestureDetector;->detectTiltUse_sumTiltVaue:I

    if-le v0, v4, :cond_0

    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebviewScaleGestureDetector;->setTiltUse(Z)V

    .line 152
    invoke-direct {p0}, Landroid/webkit/WebviewScaleGestureDetector;->initTiltDecisionValue()V

    .line 160
    :cond_0
    :goto_2
    return-void

    .line 148
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebviewScaleGestureDetector;->initTiltDecisionValue()V

    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getCurrTilt()I

    move-result v0

    neg-int v0, v0

    goto :goto_1

    .line 156
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/WebviewScaleGestureDetector;->getScaleFactor()F

    move-result v0

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebviewScaleGestureDetector;->setTiltUse(Z)V

    goto :goto_2
.end method
