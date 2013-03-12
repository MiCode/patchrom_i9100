.class public Landroid/view/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GestureDetector$TwistRecognizer;,
        Landroid/view/GestureDetector$PalmSweepRecognizer;,
        Landroid/view/GestureDetector$PalmTouchRecognizer;,
        Landroid/view/GestureDetector$SurfaceTouchSharingData;,
        Landroid/view/GestureDetector$GestureHandler;,
        Landroid/view/GestureDetector$SimpleOnGestureListener;,
        Landroid/view/GestureDetector$OnShapeGestureListener;,
        Landroid/view/GestureDetector$OnDoubleTapListener;,
        Landroid/view/GestureDetector$OnGestureListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_TAP_TIMEOUT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LONGPRESS_TIMEOUT:I = 0x0

.field private static final LONG_PRESS:I = 0x2

.field private static final SHOW_PRESS:I = 0x1

.field static final TAG:Ljava/lang/String; = "GestureDetector"

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I


# instance fields
.field context1:Landroid/content/Context;

.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDoubleTapTouchSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private final mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field mPalmSweepRecognizer:Landroid/view/GestureDetector$PalmSweepRecognizer;

.field mPalmTouchRecognizer:Landroid/view/GestureDetector$PalmTouchRecognizer;

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

.field private mStillDown:Z

.field mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

.field private mTouchSlopSquare:I

.field mTwistRecognizer:Landroid/view/GestureDetector$TwistRecognizer;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/view/GestureDetector;->DEBUG:Z

    .line 251
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    .line 252
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    .line 253
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 1092
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 1093
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 2
    .parameter "context"
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 1107
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 293
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 1108
    if-eqz p3, :cond_2

    .line 1109
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 1113
    :goto_1
    iput-object p2, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 1130
    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_0

    .line 1131
    check-cast p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    .end local p2
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 1133
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/GestureDetector;->init(Landroid/content/Context;)V

    .line 1134
    return-void

    .line 293
    .restart local p2
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1111
    :cond_2
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .locals 0
    .parameter "context"
    .parameter "listener"
    .parameter "handler"
    .parameter "unused"

    .prologue
    .line 1150
    invoke-direct {p0, p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 1151
    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1077
    invoke-direct {p0, v0, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 1078
    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .parameter "listener"
    .parameter "handler"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1059
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 1060
    return-void
.end method

.method static synthetic access$000(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$002(Landroid/view/GestureDetector;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$100(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/GestureDetector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/view/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$300(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/GestureDetector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    return v0
.end method

.method private cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1430
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1431
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1432
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1433
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1434
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1435
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 1436
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 1437
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 1438
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 1439
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_0

    .line 1440
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 1442
    :cond_0
    return-void
.end method

.method private cancelTaps()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1445
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1446
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1447
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1448
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 1449
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 1450
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 1451
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_0

    .line 1452
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 1454
    :cond_0
    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    .prologue
    .line 1472
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1473
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 1474
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 1475
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 1154
    iget-object v4, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    if-nez v4, :cond_0

    .line 1155
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "OnGestureListener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1157
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 1161
    if-nez p1, :cond_1

    .line 1163
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    .line 1164
    .local v3, touchSlop:I
    move v2, v3

    .line 1165
    .local v2, doubleTapTouchSlop:I
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v1

    .line 1167
    .local v1, doubleTapSlop:I
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 1168
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 1177
    :goto_0
    mul-int v4, v3, v3

    iput v4, p0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    .line 1178
    mul-int v4, v2, v2

    iput v4, p0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    .line 1179
    mul-int v4, v1, v1

    iput v4, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 1180
    return-void

    .line 1170
    .end local v1           #doubleTapSlop:I
    .end local v2           #doubleTapTouchSlop:I
    .end local v3           #touchSlop:I
    :cond_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1171
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    .line 1172
    .restart local v3       #touchSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v2

    .line 1173
    .restart local v2       #doubleTapTouchSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    .line 1174
    .restart local v1       #doubleTapSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 1175
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    goto :goto_0
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "firstDown"
    .parameter "firstUp"
    .parameter "secondDown"

    .prologue
    const/4 v2, 0x0

    .line 1458
    iget-boolean v3, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    if-nez v3, :cond_1

    .line 1468
    :cond_0
    :goto_0
    return v2

    .line 1462
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget v5, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 1466
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int v0, v3, v4

    .line 1467
    .local v0, deltaX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int v1, v3, v4

    .line 1468
    .local v1, deltaY:I
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    iget v4, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .locals 1

    .prologue
    .line 1210
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 33
    .parameter "ev"

    .prologue
    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 1265
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 1267
    .local v5, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v27, v0

    if-nez v27, :cond_1

    .line 1268
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1270
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1272
    and-int/lit16 v0, v5, 0xff

    move/from16 v27, v0

    const/16 v28, 0x6

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    const/16 v18, 0x1

    .line 1274
    .local v18, pointerUp:Z
    :goto_0
    if-eqz v18, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v21

    .line 1277
    .local v21, skipIndex:I
    :goto_1
    const/16 v22, 0x0

    .local v22, sumX:F
    const/16 v23, 0x0

    .line 1278
    .local v23, sumY:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 1279
    .local v6, count:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v6, :cond_5

    .line 1280
    move/from16 v0, v21

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 1279
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1272
    .end local v6           #count:I
    .end local v16           #i:I
    .end local v18           #pointerUp:Z
    .end local v21           #skipIndex:I
    .end local v22           #sumX:F
    .end local v23           #sumY:F
    :cond_2
    const/16 v18, 0x0

    goto :goto_0

    .line 1274
    .restart local v18       #pointerUp:Z
    :cond_3
    const/16 v21, -0x1

    goto :goto_1

    .line 1281
    .restart local v6       #count:I
    .restart local v16       #i:I
    .restart local v21       #skipIndex:I
    .restart local v22       #sumX:F
    .restart local v23       #sumY:F
    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v27

    add-float v22, v22, v27

    .line 1282
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v27

    add-float v23, v23, v27

    goto :goto_3

    .line 1284
    :cond_5
    if-eqz v18, :cond_8

    add-int/lit8 v11, v6, -0x1

    .line 1285
    .local v11, div:I
    :goto_4
    int-to-float v0, v11

    move/from16 v27, v0

    div-float v12, v22, v27

    .line 1286
    .local v12, focusX:F
    int-to-float v0, v11

    move/from16 v27, v0

    div-float v13, v23, v27

    .line 1288
    .local v13, focusY:F
    const/4 v15, 0x0

    .line 1290
    .local v15, handled:Z
    and-int/lit16 v0, v5, 0xff

    move/from16 v27, v0

    packed-switch v27, :pswitch_data_0

    .line 1423
    :cond_6
    :goto_5
    :pswitch_0
    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v27, v0

    if-eqz v27, :cond_7

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1426
    :cond_7
    return v15

    .end local v11           #div:I
    .end local v12           #focusX:F
    .end local v13           #focusY:F
    .end local v15           #handled:Z
    :cond_8
    move v11, v6

    .line 1284
    goto :goto_4

    .line 1292
    .restart local v11       #div:I
    .restart local v12       #focusX:F
    .restart local v13       #focusY:F
    .restart local v15       #handled:Z
    :pswitch_1
    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 1293
    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 1295
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancelTaps()V

    goto :goto_5

    .line 1299
    :pswitch_2
    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 1300
    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    goto :goto_5

    .line 1304
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v27, v0

    if-eqz v27, :cond_a

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v14

    .line 1306
    .local v14, hadTapMessage:Z
    if-eqz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 1307
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    if-eqz v27, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    if-eqz v27, :cond_d

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 1310
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v28, v0

    invoke-interface/range {v27 .. v28}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v27

    or-int v15, v15, v27

    .line 1316
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v27

    or-int v15, v15, v27

    .line 1323
    .end local v14           #hadTapMessage:Z
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 1324
    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    if-eqz v27, :cond_b

    .line 1326
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->recycle()V

    .line 1328
    :cond_b
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 1329
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 1330
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 1331
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mStillDown:Z

    .line 1332
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 1334
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    move/from16 v27, v0

    if-eqz v27, :cond_c

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 1336
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v29

    sget v31, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v31, v0

    add-long v29, v29, v31

    sget v31, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v31, v0

    add-long v29, v29, v31

    invoke-virtual/range {v27 .. v30}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 1339
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v29

    sget v31, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v31, v0

    add-long v29, v29, v31

    invoke-virtual/range {v27 .. v30}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 1340
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v27

    or-int v15, v15, v27

    .line 1341
    goto/16 :goto_5

    .line 1319
    .restart local v14       #hadTapMessage:Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    sget v29, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    invoke-virtual/range {v27 .. v30}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_6

    .line 1344
    .end local v14           #hadTapMessage:Z
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    move/from16 v27, v0

    if-nez v27, :cond_6

    .line 1347
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move/from16 v27, v0

    sub-float v19, v27, v12

    .line 1348
    .local v19, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    move/from16 v27, v0

    sub-float v20, v27, v13

    .line 1349
    .local v20, scrollY:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v27, v0

    if-eqz v27, :cond_e

    .line 1351
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v27

    or-int v15, v15, v27

    goto/16 :goto_5

    .line 1353
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v27, v0

    if-eqz v27, :cond_10

    .line 1354
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    move/from16 v27, v0

    sub-float v27, v12, v27

    move/from16 v0, v27

    float-to-int v8, v0

    .line 1355
    .local v8, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    move/from16 v27, v0

    sub-float v27, v13, v27

    move/from16 v0, v27

    float-to-int v9, v0

    .line 1356
    .local v9, deltaY:I
    mul-int v27, v8, v8

    mul-int v28, v9, v9

    add-int v10, v27, v28

    .line 1357
    .local v10, distance:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v10, v0, :cond_f

    .line 1358
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v15

    .line 1359
    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 1360
    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    .line 1361
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 1364
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 1366
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v10, v0, :cond_6

    .line 1367
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_5

    .line 1369
    .end local v8           #deltaX:I
    .end local v9           #deltaY:I
    .end local v10           #distance:I
    :cond_10
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v27

    const/high16 v28, 0x3f80

    cmpl-float v27, v27, v28

    if-gez v27, :cond_11

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v27

    const/high16 v28, 0x3f80

    cmpl-float v27, v27, v28

    if-ltz v27, :cond_6

    .line 1370
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v15

    .line 1371
    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 1372
    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    goto/16 :goto_5

    .line 1377
    .end local v19           #scrollX:F
    .end local v20           #scrollY:F
    :pswitch_5
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mStillDown:Z

    .line 1378
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 1379
    .local v7, currentUpEvent:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v27, v0

    if-eqz v27, :cond_15

    .line 1381
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v27

    or-int v15, v15, v27

    .line 1402
    :cond_12
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    if-eqz v27, :cond_13

    .line 1403
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/MotionEvent;->recycle()V

    .line 1406
    :cond_13
    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v27, v0

    if-eqz v27, :cond_14

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/VelocityTracker;->recycle()V

    .line 1411
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1413
    :cond_14
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x2

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_5

    .line 1383
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    move/from16 v27, v0

    if-eqz v27, :cond_16

    .line 1384
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v27, v0

    const/16 v28, 0x3

    invoke-virtual/range {v27 .. v28}, Landroid/os/Handler;->removeMessages(I)V

    .line 1385
    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mInLongPress:Z

    goto :goto_7

    .line 1386
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v27, v0

    if-eqz v27, :cond_17

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v15

    goto :goto_7

    .line 1391
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v24, v0

    .line 1392
    .local v24, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v27, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 1393
    .local v17, pointerId:I
    const/16 v27, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v24

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1394
    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v26

    .line 1395
    .local v26, velocityY:F
    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v25

    .line 1397
    .local v25, velocityX:F
    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v27, v27, v28

    if-gtz v27, :cond_18

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_12

    .line 1399
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, p1

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v15

    goto/16 :goto_7

    .line 1419
    .end local v7           #currentUpEvent:Landroid/view/MotionEvent;
    .end local v17           #pointerId:I
    .end local v24           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v25           #velocityX:F
    .end local v26           #velocityY:F
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancel()V

    goto/16 :goto_5

    .line 1290
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent_ex(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 1225
    iget-object v3, p0, Landroid/view/GestureDetector;->context1:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1226
    .local v0, mResolver:Landroid/content/ContentResolver;
    iget-object v3, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    const-string/jumbo v4, "surface_palm_swipe"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingPalmSweep:I

    .line 1227
    iget-object v3, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    const-string/jumbo v4, "surface_palm_touch"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingPalmTouch:I

    .line 1228
    iget-object v3, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    const-string/jumbo v4, "surface_tap_and_twist"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingTapAndTwist:I

    .line 1230
    const/4 v1, 0x0

    .line 1235
    .local v1, result:I
    const-string/jumbo v3, "motion_engine"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1239
    iget-object v3, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector$SurfaceTouchSharingData;->PreUpdate(Landroid/view/MotionEvent;)V

    .line 1240
    iget-object v3, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget v3, v3, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    if-nez v3, :cond_2

    .line 1241
    iget-object v3, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    invoke-virtual {v3}, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Initialize()V

    .line 1242
    iget-object v3, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget v3, v3, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingPalmTouch:I

    if-ne v3, v5, :cond_0

    if-ne v1, v5, :cond_0

    iget-object v3, p0, Landroid/view/GestureDetector;->mPalmTouchRecognizer:Landroid/view/GestureDetector$PalmTouchRecognizer;

    invoke-virtual {v3}, Landroid/view/GestureDetector$PalmTouchRecognizer;->Initialize()V

    .line 1243
    :cond_0
    iget-object v3, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget v3, v3, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingPalmSweep:I

    if-ne v3, v5, :cond_1

    if-ne v1, v5, :cond_1

    iget-object v3, p0, Landroid/view/GestureDetector;->mPalmSweepRecognizer:Landroid/view/GestureDetector$PalmSweepRecognizer;

    invoke-virtual {v3}, Landroid/view/GestureDetector$PalmSweepRecognizer;->Initialize()V

    .line 1244
    :cond_1
    iget-object v3, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget v3, v3, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingTapAndTwist:I

    if-ne v3, v5, :cond_2

    if-ne v1, v5, :cond_2

    iget-object v3, p0, Landroid/view/GestureDetector;->mTwistRecognizer:Landroid/view/GestureDetector$TwistRecognizer;

    invoke-virtual {v3}, Landroid/view/GestureDetector$TwistRecognizer;->Initialize()V

    .line 1246
    :cond_2
    iget-object v3, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Update(Landroid/view/MotionEvent;)V

    .line 1248
    iget-object v3, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget v3, v3, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingPalmTouch:I

    if-ne v3, v5, :cond_3

    if-ne v1, v5, :cond_3

    iget-object v3, p0, Landroid/view/GestureDetector;->mPalmTouchRecognizer:Landroid/view/GestureDetector$PalmTouchRecognizer;

    iget-object v4, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    invoke-virtual {v3, v4}, Landroid/view/GestureDetector$PalmTouchRecognizer;->Process(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    .line 1249
    :cond_3
    iget-object v3, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget v3, v3, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingPalmSweep:I

    if-ne v3, v5, :cond_4

    if-ne v1, v5, :cond_4

    iget-object v3, p0, Landroid/view/GestureDetector;->mPalmSweepRecognizer:Landroid/view/GestureDetector$PalmSweepRecognizer;

    iget-object v4, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    invoke-virtual {v3, v4}, Landroid/view/GestureDetector$PalmSweepRecognizer;->Process(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    .line 1250
    :cond_4
    iget-object v3, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget v3, v3, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingTapAndTwist:I

    if-ne v3, v5, :cond_5

    if-ne v1, v5, :cond_5

    iget-object v3, p0, Landroid/view/GestureDetector;->mTwistRecognizer:Landroid/view/GestureDetector$TwistRecognizer;

    iget-object v4, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    invoke-virtual {v3, p1, v4}, Landroid/view/GestureDetector$TwistRecognizer;->Process(Landroid/view/MotionEvent;Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    .line 1252
    :cond_5
    iget-object v3, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget v3, v3, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingPalmSweep:I

    if-ne v3, v5, :cond_6

    if-eq v1, v5, :cond_7

    .line 1257
    :cond_6
    :goto_0
    return v2

    :cond_7
    iget-object v2, p0, Landroid/view/GestureDetector;->mPalmSweepRecognizer:Landroid/view/GestureDetector$PalmSweepRecognizer;

    invoke-virtual {v2}, Landroid/view/GestureDetector$PalmSweepRecognizer;->getSweepDown()Z

    move-result v2

    goto :goto_0
.end method

.method public setDoubleTapSlop(I)V
    .locals 1
    .parameter "touchSlop"

    .prologue
    .line 1486
    mul-int v0, p1, p1

    iput v0, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 1487
    return-void
.end method

.method public setDoubleTapTouchSlop(I)V
    .locals 1
    .parameter "touchSlop"

    .prologue
    .line 1482
    mul-int v0, p1, p1

    iput v0, p0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    .line 1483
    return-void
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0
    .parameter "isLongpressEnabled"

    .prologue
    .line 1203
    iput-boolean p1, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 1204
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0
    .parameter "onDoubleTapListener"

    .prologue
    .line 1190
    iput-object p1, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 1191
    return-void
.end method

.method public setTouchSlop(I)V
    .locals 1
    .parameter "touchSlop"

    .prologue
    .line 1478
    mul-int v0, p1, p1

    iput v0, p0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    .line 1479
    return-void
.end method
