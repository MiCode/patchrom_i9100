.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrSpan:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mEdgeBaseY:F

.field private mEdgeCurX:F

.field private mEdgeCurY:F

.field private mEdgeCurrEvent:Landroid/view/MotionEvent;

.field private mEdgeCurrFingerDiffX:F

.field private mEdgeCurrFingerDiffY:F

.field private mEdgeCurrLen:F

.field private mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEdgePixels:F

.field private mEdgePrevEvent:Landroid/view/MotionEvent;

.field private mEdgePrevFingerDiffX:F

.field private mEdgePrevFingerDiffY:F

.field private mEdgePrevLen:F

.field private mEdgePrevX:F

.field private mEdgePrevY:F

.field private mEdgeTimeDelta:J

.field private final mEdgeWM:Landroid/view/WindowManager;

.field private mFocusX:F

.field private mFocusY:F

.field private mInProgress:Z

.field private mInitialSpan:F

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mIsEdgeDelay:Z

.field private mIsEdgeZoom:Z

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mPrevSpan:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mScaleFactor:F

.field private mSpanSlop:I

.field private mValidPackage:Z

.field private mValidPackgeList:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 4
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 181
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mValidPackage:Z

    .line 147
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.browser"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/view/ScaleGestureDetector;->mValidPackgeList:[Ljava/lang/String;

    .line 177
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v3}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v0, p0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 182
    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 183
    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 184
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    .line 187
    iput-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mValidPackage:Z

    .line 188
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeWM:Landroid/view/WindowManager;

    .line 189
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 192
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidPackage()Z
    .locals 5

    .prologue
    .line 483
    :try_start_0
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mValidPackgeList:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 484
    .local v3, pkg:Ljava/lang/String;
    iget-object v4, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 485
    const/4 v4, 0x1

    .line 492
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #pkg:Ljava/lang/String;
    :goto_1
    return v4

    .line 483
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #pkg:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 488
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #pkg:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 492
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private onEdgeTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const v12, 0x3f333333

    const/4 v11, 0x0

    const v10, 0x40228f5c

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 316
    iget-boolean v8, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    if-nez v8, :cond_1

    .line 412
    :cond_0
    :goto_0
    return v6

    .line 319
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 321
    .local v0, action:I
    iget-boolean v8, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-nez v8, :cond_8

    .line 322
    if-nez v0, :cond_3

    .line 324
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mEdgeWM:Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v8, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 326
    iget-boolean v8, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeDelay:Z

    if-nez v8, :cond_0

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 330
    .local v2, locX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 333
    .local v3, locY:F
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v8, v10

    mul-float v1, v8, v12

    .line 334
    .local v1, frontX:F
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    sub-float v4, v8, v1

    .line 336
    .local v4, tailX:F
    cmpg-float v8, v2, v1

    if-ltz v8, :cond_2

    cmpl-float v8, v2, v4

    if-lez v8, :cond_0

    .line 338
    :cond_2
    iput-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeDelay:Z

    .line 339
    iput v3, p0, Landroid/view/ScaleGestureDetector;->mEdgeBaseY:F

    goto :goto_0

    .line 343
    .end local v1           #frontX:F
    .end local v2           #locX:F
    .end local v3           #locY:F
    .end local v4           #tailX:F
    :cond_3
    if-ne v0, v7, :cond_4

    .line 345
    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    iput v7, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 346
    iput v11, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 347
    iput-boolean v6, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeDelay:Z

    goto :goto_0

    .line 349
    :cond_4
    const/4 v8, 0x2

    if-ne v0, v8, :cond_0

    iget-boolean v8, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeDelay:Z

    if-ne v8, v7, :cond_0

    .line 352
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 353
    .restart local v2       #locX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 356
    .restart local v3       #locY:F
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v8, v10

    mul-float v1, v8, v12

    .line 357
    .restart local v1       #frontX:F
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    sub-float v4, v8, v1

    .line 359
    .restart local v4       #tailX:F
    cmpg-float v8, v1, v2

    if-gez v8, :cond_5

    cmpg-float v8, v2, v4

    if-gez v8, :cond_5

    .line 361
    iput-boolean v6, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeDelay:Z

    goto :goto_0

    .line 363
    :cond_5
    iget v8, p0, Landroid/view/ScaleGestureDetector;->mEdgeBaseY:F

    sub-float/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget-object v9, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v9, v10

    const/high16 v10, 0x4120

    div-float/2addr v9, v10

    const/high16 v10, 0x4040

    mul-float/2addr v9, v10

    cmpl-float v8, v8, v9

    if-lez v8, :cond_0

    .line 365
    iput-boolean v6, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeDelay:Z

    .line 366
    iput-boolean v7, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    .line 367
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v8, v8

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    iput v8, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 368
    iput v11, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 369
    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v8, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v8

    iput-boolean v8, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 370
    const-string v8, "ScaleGestureDetector"

    const-string v9, "EZ"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-boolean v8, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v8, :cond_7

    .line 373
    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 374
    :cond_6
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    iput-object v6, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    .line 375
    invoke-direct {p0, p1, v7}, Landroid/view/ScaleGestureDetector;->processEdgeTouchEvent(Landroid/view/MotionEvent;Z)Z

    move v6, v7

    .line 376
    goto/16 :goto_0

    .line 380
    :cond_7
    iput-boolean v6, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    goto/16 :goto_0

    .line 387
    .end local v1           #frontX:F
    .end local v2           #locX:F
    .end local v3           #locY:F
    .end local v4           #tailX:F
    :cond_8
    packed-switch v0, :pswitch_data_0

    :cond_9
    :goto_1
    move v6, v7

    .line 412
    goto/16 :goto_0

    .line 390
    :pswitch_0
    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v6, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 391
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto :goto_1

    .line 395
    :pswitch_1
    invoke-direct {p0, p1, v6}, Landroid/view/ScaleGestureDetector;->processEdgeTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 397
    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v6, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v5

    .line 398
    .local v5, updatePrevious:Z
    if-eqz v5, :cond_9

    .line 399
    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    .line 400
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    iput-object v6, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    goto :goto_1

    .line 405
    .end local v5           #updatePrevious:Z
    :cond_a
    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v6, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 406
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto :goto_1

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processEdgeTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 9
    .parameter "event"
    .parameter "isBegin"

    .prologue
    const v8, 0x40228f5c

    const v7, 0x3f333333

    const/high16 v6, 0x4000

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 417
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 420
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    .line 422
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevX:F

    .line 423
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevY:F

    .line 424
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurX:F

    .line 425
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurY:F

    .line 426
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeTimeDelta:J

    .line 428
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurX:F

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v8

    mul-float/2addr v1, v7

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurX:F

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v2, v8

    mul-float/2addr v2, v7

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 431
    const/4 v0, 0x0

    .line 462
    :goto_0
    return v0

    .line 434
    :cond_1
    iput v5, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    .line 435
    if-eqz p2, :cond_3

    .line 437
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    div-float/2addr v0, v6

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 438
    iput v4, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 439
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurY:F

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeBaseY:F

    .line 440
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePixels:F

    .line 441
    iput v4, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrLen:F

    iput v4, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevLen:F

    .line 442
    iput v4, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrFingerDiffX:F

    .line 443
    iput v4, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrFingerDiffY:F

    .line 444
    iput v4, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevFingerDiffX:F

    .line 445
    iput v4, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevFingerDiffY:F

    .line 462
    :cond_2
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 449
    :cond_3
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeBaseY:F

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevLen:F

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevFingerDiffX:F

    .line 450
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeBaseY:F

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrLen:F

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrFingerDiffX:F

    .line 452
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurY:F

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 454
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevY:F

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurY:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mEdgePixels:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    goto :goto_1

    .line 456
    :cond_4
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurY:F

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 458
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurY:F

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevY:F

    sub-float/2addr v0, v1

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mEdgePixels:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    div-float v0, v5, v0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    goto :goto_1
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 467
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 469
    iput-object v2, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevEvent:Landroid/view/MotionEvent;

    .line 471
    :cond_0
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 473
    iput-object v2, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    .line 475
    :cond_1
    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    .line 477
    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 478
    return-void
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v0, :cond_0

    .line 545
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrLen:F

    .line 547
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    goto :goto_0
.end method

.method public getCurrentSpanX()F
    .locals 1

    .prologue
    .line 557
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v0, :cond_0

    .line 558
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrFingerDiffX:F

    .line 560
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    goto :goto_0
.end method

.method public getCurrentSpanY()F
    .locals 1

    .prologue
    .line 570
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v0, :cond_0

    .line 571
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrFingerDiffY:F

    .line 573
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    goto :goto_0
.end method

.method public getEnableEdgeZoom()Z
    .locals 1

    .prologue
    .line 655
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mValidPackage:Z

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 648
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeCurrEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 651
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    goto :goto_0
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v0, :cond_0

    .line 584
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevLen:F

    .line 586
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    goto :goto_0
.end method

.method public getPreviousSpanX()F
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v0, :cond_0

    .line 597
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevFingerDiffX:F

    .line 599
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    goto :goto_0
.end method

.method public getPreviousSpanY()F
    .locals 1

    .prologue
    .line 609
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v0, :cond_0

    .line 610
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mEdgePrevFingerDiffY:F

    .line 612
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    goto :goto_0
.end method

.method public getScaleFactor()F
    .locals 2

    .prologue
    .line 623
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v0, :cond_0

    .line 624
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mScaleFactor:F

    .line 626
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public getTimeDelta()J
    .locals 4

    .prologue
    .line 636
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    if-eqz v0, :cond_0

    .line 637
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mEdgeTimeDelta:J

    .line 639
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method public isEdgeZoomInProgress()Z
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mIsEdgeZoom:Z

    return v0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .parameter "event"

    .prologue
    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 213
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 215
    .local v3, action:I
    const/16 v24, 0x1

    move/from16 v0, v24

    if-eq v3, v0, :cond_1

    const/16 v24, 0x3

    move/from16 v0, v24

    if-ne v3, v0, :cond_4

    :cond_1
    const/16 v19, 0x1

    .line 217
    .local v19, streamComplete:Z
    :goto_0
    if-eqz v3, :cond_2

    if-eqz v19, :cond_5

    .line 221
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 223
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 224
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 227
    :cond_3
    if-eqz v19, :cond_5

    .line 228
    const/16 v24, 0x1

    .line 310
    :goto_1
    return v24

    .line 215
    .end local v19           #streamComplete:Z
    :cond_4
    const/16 v19, 0x0

    goto :goto_0

    .line 232
    .restart local v19       #streamComplete:Z
    :cond_5
    const/16 v24, 0x6

    move/from16 v0, v24

    if-eq v3, v0, :cond_6

    const/16 v24, 0x5

    move/from16 v0, v24

    if-ne v3, v0, :cond_7

    :cond_6
    const/4 v4, 0x1

    .line 235
    .local v4, configChanged:Z
    :goto_2
    const/16 v24, 0x6

    move/from16 v0, v24

    if-ne v3, v0, :cond_8

    const/4 v14, 0x1

    .line 236
    .local v14, pointerUp:Z
    :goto_3
    if-eqz v14, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v15

    .line 239
    .local v15, skipIndex:I
    :goto_4
    const/16 v20, 0x0

    .local v20, sumX:F
    const/16 v21, 0x0

    .line 240
    .local v21, sumY:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    .line 241
    .local v5, count:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_5
    if-ge v13, v5, :cond_b

    .line 242
    if-ne v15, v13, :cond_a

    .line 241
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 232
    .end local v4           #configChanged:Z
    .end local v5           #count:I
    .end local v13           #i:I
    .end local v14           #pointerUp:Z
    .end local v15           #skipIndex:I
    .end local v20           #sumX:F
    .end local v21           #sumY:F
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 235
    .restart local v4       #configChanged:Z
    :cond_8
    const/4 v14, 0x0

    goto :goto_3

    .line 236
    .restart local v14       #pointerUp:Z
    :cond_9
    const/4 v15, -0x1

    goto :goto_4

    .line 243
    .restart local v5       #count:I
    .restart local v13       #i:I
    .restart local v15       #skipIndex:I
    .restart local v20       #sumX:F
    .restart local v21       #sumY:F
    :cond_a
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    add-float v20, v20, v24

    .line 244
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v24

    add-float v21, v21, v24

    goto :goto_6

    .line 246
    :cond_b
    if-eqz v14, :cond_c

    add-int/lit8 v10, v5, -0x1

    .line 247
    .local v10, div:I
    :goto_7
    int-to-float v0, v10

    move/from16 v24, v0

    div-float v11, v20, v24

    .line 248
    .local v11, focusX:F
    int-to-float v0, v10

    move/from16 v24, v0

    div-float v12, v21, v24

    .line 251
    .local v12, focusY:F
    const/4 v6, 0x0

    .local v6, devSumX:F
    const/4 v7, 0x0

    .line 252
    .local v7, devSumY:F
    const/4 v13, 0x0

    :goto_8
    if-ge v13, v5, :cond_e

    .line 253
    if-ne v15, v13, :cond_d

    .line 252
    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .end local v6           #devSumX:F
    .end local v7           #devSumY:F
    .end local v10           #div:I
    .end local v11           #focusX:F
    .end local v12           #focusY:F
    :cond_c
    move v10, v5

    .line 246
    goto :goto_7

    .line 254
    .restart local v6       #devSumX:F
    .restart local v7       #devSumY:F
    .restart local v10       #div:I
    .restart local v11       #focusX:F
    .restart local v12       #focusY:F
    :cond_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    sub-float v24, v24, v11

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    add-float v6, v6, v24

    .line 255
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v24

    sub-float v24, v24, v12

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    add-float v7, v7, v24

    goto :goto_9

    .line 257
    :cond_e
    int-to-float v0, v10

    move/from16 v24, v0

    div-float v8, v6, v24

    .line 258
    .local v8, devX:F
    int-to-float v0, v10

    move/from16 v24, v0

    div-float v9, v7, v24

    .line 263
    .local v9, devY:F
    const/high16 v24, 0x4000

    mul-float v17, v8, v24

    .line 264
    .local v17, spanX:F
    const/high16 v24, 0x4000

    mul-float v18, v9, v24

    .line 265
    .local v18, spanY:F
    mul-float v24, v17, v17

    mul-float v25, v18, v18

    add-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v16

    .line 270
    .local v16, span:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v23, v0

    .line 271
    .local v23, wasInProgress:Z
    move-object/from16 v0, p0

    iput v11, v0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 272
    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 273
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v24, v0

    if-eqz v24, :cond_10

    const/16 v24, 0x0

    cmpl-float v24, v16, v24

    if-eqz v24, :cond_f

    if-eqz v4, :cond_10

    .line 274
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 275
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 276
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 278
    :cond_10
    if-eqz v4, :cond_11

    .line 279
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 280
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 281
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 283
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v24, v0

    if-nez v24, :cond_13

    const/16 v24, 0x0

    cmpl-float v24, v16, v24

    if-eqz v24, :cond_13

    if-nez v23, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    move/from16 v24, v0

    sub-float v24, v16, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_13

    .line 285
    :cond_12
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 286
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 287
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 289
    const-string v24, "ScaleGestureDetector"

    const-string v25, "SGD"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_13
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v3, v0, :cond_15

    .line 294
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    .line 295
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    .line 296
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    .line 298
    const/16 v22, 0x1

    .line 299
    .local v22, updatePrev:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v22

    .line 303
    :cond_14
    if-eqz v22, :cond_15

    .line 304
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 305
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 306
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    .line 310
    .end local v22           #updatePrev:Z
    :cond_15
    const/16 v24, 0x1

    goto/16 :goto_1
.end method

.method public setEnableEdgeZoom(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 659
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mValidPackage:Z

    .line 660
    return-void
.end method
